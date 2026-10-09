/*
 * functions.c - Tetris game logic for the LandTiger (LPC1768) board.
 *
 * The game logic runs only in the main loop: interrupt handlers just raise
 * request flags (see IRQ_RIT.c, IRQ_button.c, IRQ_timer.c).
 */
#include "functions.h"
#include "GLCD.h"
#include "blocks.h"
#include "adc.h"
#include "sound.h"
#include <stdlib.h>
#include <stdio.h>

/* ---- Falling speed: potentiometer sets 1..5 squares/s ---- */
#define TICKS_PER_SEC       (1000 / TICK_MS)        /* 20 */
#define ADC_MAX             4095
#define SLOWDOWN_TICKS      (15 * TICKS_PER_SEC)    /* power-up lasts 15 s */

/* ---- Power-ups and malus ---- */
#define POWERUP_EVERY       5       /* lines */
#define MALUS_EVERY         10      /* lines */
#define MALUS_BLOCKS        7

/* Field cells hold a 16-bit colour; this value is outside that range,
 * so a power-up can never be confused with a normal (or malus) block. */
#define CELL_EMPTY          0
#define CELL_POWERUP        0x10000
#define POWERUP_COLOR       Grey
#define MALUS_COLOR         0x7BEF  /* dark grey */
#define SCREEN_INVALID      0xFFFFFFFFu

/* ---- Game state ---- */
static uint32_t field[PLAYFIELD_ROW][PLAYFIELD_COL];
static uint32_t shown[PLAYFIELD_ROW][PLAYFIELD_COL];   /* what is on the LCD */
static uint32_t frame[PLAYFIELD_ROW][PLAYFIELD_COL];   /* static: small stack */

static const int (*current_block)[4];
static int curr_row, curr_col, rotation;
static uint16_t current_color;

static int fall_acc = 0;
static int slowdown_ticks = 0;

volatile game_state_t game_state = GAME_PAUSED;
volatile int tick = 0;
volatile int joy_left_req = 0;
volatile int joy_right_req = 0;
volatile int joy_up_req = 0;
volatile int joy_down_req = 0;
volatile int hard_drop_request = 0;
volatile int toggle_request = 0;

int score = 0;
int high_score = 0;
int lines_cleared_counter = 0;

static const int (*const blocks[7])[4] = {
    BLOCK_I, BLOCK_O, BLOCK_T, BLOCK_S, BLOCK_Z, BLOCK_J, BLOCK_L
};

static const uint16_t colors[7] = {
    Red, Green, Blue, Cyan, Magenta, Yellow, Blue2
};

static void spawn_piece(void);
static void update_score_value(void);
static void update_lines_value(void);
static void draw_top_score(void);

/* ======================================================================
 *  Piece geometry and collision
 * ====================================================================== */

/* Cell (r,c) of the current piece rotated by rot*90 degrees clockwise. */
static int piece_cell(int rot, int r, int c)
{
    int rr, cc;

    switch (rot & 3) {
        case 1:  rr = 3 - c; cc = r;     break;
        case 2:  rr = 3 - r; cc = 3 - c; break;
        case 3:  rr = c;     cc = 3 - r; break;
        default: rr = r;     cc = c;     break;
    }
    return current_block[rr][cc];
}

/* 1 if the current piece, with rotation rot, fits at (row, col):
 * every occupied cell must be inside the field and on an empty cell. */
static int piece_fits(int row, int col, int rot)
{
    int r, c;

    for (r = 0; r < 4; r++) {
        for (c = 0; c < 4; c++) {
            int fr = row + r;
            int fc = col + c;

            if (!piece_cell(rot, r, c))
                continue;
            if (fr < 0 || fr >= PLAYFIELD_ROW || fc < 0 || fc >= PLAYFIELD_COL)
                return 0;
            if (field[fr][fc] != CELL_EMPTY)
                return 0;
        }
    }
    return 1;
}

/* Top-left corner of the bounding box of the rotated shape. */
static void piece_origin(int rot, int *min_r, int *min_c)
{
    int r, c;

    *min_r = 4;
    *min_c = 4;
    for (r = 0; r < 4; r++)
        for (c = 0; c < 4; c++)
            if (piece_cell(rot, r, c)) {
                if (r < *min_r) *min_r = r;
                if (c < *min_c) *min_c = c;
            }
}

/* ======================================================================
 *  Field operations
 * ====================================================================== */

static int is_line_full(int row)
{
    int c;

    for (c = 0; c < PLAYFIELD_COL; c++)
        if (field[row][c] == CELL_EMPTY)
            return 0;
    return 1;
}

static int is_line_empty(int row)
{
    int c;

    for (c = 0; c < PLAYFIELD_COL; c++)
        if (field[row][c] != CELL_EMPTY)
            return 0;
    return 1;
}

static int line_has_powerup(int row)
{
    int c;

    for (c = 0; c < PLAYFIELD_COL; c++)
        if (field[row][c] == CELL_POWERUP)
            return 1;
    return 0;
}

/* Remove a row and shift everything above it down by one. */
static void remove_line(int row)
{
    int r, c;

    for (r = row; r > 0; r--)
        for (c = 0; c < PLAYFIELD_COL; c++)
            field[r][c] = field[r - 1][c];
    for (c = 0; c < PLAYFIELD_COL; c++)
        field[0][c] = CELL_EMPTY;
}

/* 600 points for every group of 4 lines, 100 for each remaining line. */
static int line_points(int lines)
{
    return (lines / 4) * 600 + (lines % 4) * 100;
}

static void add_score(int points)
{
    score += points;
    update_score_value();
    if (score > high_score) {
        high_score = score;
        draw_top_score();
    }
}

/* Turn a random occupied block into a power-up. Safe on an empty field. */
static void place_powerup(void)
{
    int r, c, candidates = 0, pick;

    for (r = 0; r < PLAYFIELD_ROW; r++)
        for (c = 0; c < PLAYFIELD_COL; c++)
            if (field[r][c] != CELL_EMPTY && field[r][c] != CELL_POWERUP)
                candidates++;

    if (candidates == 0)
        return;

    pick = rand() % candidates;
    for (r = 0; r < PLAYFIELD_ROW; r++)
        for (c = 0; c < PLAYFIELD_COL; c++)
            if (field[r][c] != CELL_EMPTY && field[r][c] != CELL_POWERUP) {
                if (pick-- == 0) {
                    field[r][c] = CELL_POWERUP;
                    return;
                }
            }
}

/* Push the field up and add a bottom row with MALUS_BLOCKS random blocks.
 * Returns 0 (game over) if the top row is already occupied. */
static int add_malus_line(void)
{
    int r, c, placed = 0;

    if (!is_line_empty(0))
        return 0;

    for (r = 0; r < PLAYFIELD_ROW - 1; r++)
        for (c = 0; c < PLAYFIELD_COL; c++)
            field[r][c] = field[r + 1][c];

    for (c = 0; c < PLAYFIELD_COL; c++)
        field[PLAYFIELD_ROW - 1][c] = CELL_EMPTY;

    while (placed < MALUS_BLOCKS) {
        c = rand() % PLAYFIELD_COL;
        if (field[PLAYFIELD_ROW - 1][c] == CELL_EMPTY) {
            field[PLAYFIELD_ROW - 1][c] = MALUS_COLOR;
            placed++;
        }
    }
    return 1;
}

/* Power-up "clear half": removes the lower half of the occupied lines
 * (rows above fall down) and scores them as if cleared in groups of 4. */
static void powerup_clear_half(void)
{
    int r, occupied = 0, to_remove, removed = 0;

    for (r = 0; r < PLAYFIELD_ROW; r++)
        if (!is_line_empty(r))
            occupied++;

    to_remove = occupied / 2;
    while (removed < to_remove) {
        for (r = PLAYFIELD_ROW - 1; r >= 0; r--)
            if (!is_line_empty(r))
                break;
        remove_line(r);
        removed++;
    }

    if (removed > 0) {
        lines_cleared_counter += removed;
        update_lines_value();
        add_score(line_points(removed));
    }
}

/* Power-up "slow down": 1 square/s for 15 s. */
static void powerup_slow_down(void)
{
    slowdown_ticks = SLOWDOWN_TICKS;
}

/* Clears full lines and applies power-ups/malus. Returns the number of
 * lines cleared by the player (power-up lines are scored separately). */
static int clear_full_lines(void)
{
    int r = PLAYFIELD_ROW - 1;
    int cleared = 0, powerup = 0, before;

    while (r >= 0) {
        if (is_line_full(r)) {
            if (line_has_powerup(r))
                powerup = 1;
            remove_line(r);
            cleared++;          /* same r: the row above has moved down */
        } else {
            r--;
        }
    }

    if (cleared == 0)
        return 0;

    before = lines_cleared_counter;
    lines_cleared_counter += cleared;
    update_lines_value();
    sound_request = SOUND_LINE_CLEAR;

    if (powerup) {
        if (rand() % 2)
            powerup_clear_half();
        else
            powerup_slow_down();
    }

    if (lines_cleared_counter / POWERUP_EVERY > before / POWERUP_EVERY)
        place_powerup();

    if (lines_cleared_counter / MALUS_EVERY > before / MALUS_EVERY)
        if (!add_malus_line())
            game_state = GAME_OVER;

    return cleared;
}

/* Fix the falling piece into the field, score it and spawn the next one. */
static void lock_piece(void)
{
    int r, c, lines;

    for (r = 0; r < 4; r++)
        for (c = 0; c < 4; c++)
            if (piece_cell(rotation, r, c))
                field[curr_row + r][curr_col + c] = current_color;

    current_block = 0;
    lines = clear_full_lines();
    add_score(10 + line_points(lines));

    if (game_state != GAME_OVER)
        spawn_piece();
}

static void spawn_piece(void)
{
    curr_row = 0;
    curr_col = PLAYFIELD_COL / 2 - 2;
    rotation = 0;
    current_block = blocks[rand() % 7];
    current_color = colors[rand() % 7];

    if (!piece_fits(curr_row, curr_col, rotation)) {
        current_block = 0;
        game_state = GAME_OVER;
    }
}

/* ======================================================================
 *  Player actions
 * ====================================================================== */

int move_horizontal(int dx)
{
    if (!current_block || !piece_fits(curr_row, curr_col + dx, rotation))
        return 0;
    curr_col += dx;
    return 1;
}

/* Rotates clockwise keeping the top-left corner of the shape in place.
 * If blocked, tries horizontal "wall kicks" (up to 3 columns, enough for
 * the I piece against a wall) before giving up. */
int rotate_piece(void)
{
    static const int kicks[7] = { 0, -1, 1, -2, 2, -3, 3 };
    int new_rot, old_r, old_c, new_r, new_c, row, col, k;

    if (!current_block)
        return 0;

    new_rot = (rotation + 1) & 3;
    piece_origin(rotation, &old_r, &old_c);
    piece_origin(new_rot, &new_r, &new_c);
    row = curr_row + old_r - new_r;
    col = curr_col + old_c - new_c;

    for (k = 0; k < 7; k++) {
        if (piece_fits(row, col + kicks[k], new_rot)) {
            curr_row = row;
            curr_col = col + kicks[k];
            rotation = new_rot;
            sound_request = SOUND_ROTATE;
            return 1;
        }
    }
    return 0;
}

void hard_drop(void)
{
    if (!current_block)
        return;
    while (piece_fits(curr_row + 1, curr_col, rotation))
        curr_row++;
    sound_request = SOUND_HARD_DROP;
    lock_piece();
}

/* Ticks between two steps: 20 (1 square/s) .. 4 (5 squares/s),
 * linear in squares/s with respect to the potentiometer. */
static int fall_period_ticks(void)
{
    uint32_t v;

    if (slowdown_ticks > 0)
        return TICKS_PER_SEC;

    v = ADC_get_value();
    return (int)((TICKS_PER_SEC * ADC_MAX) / (ADC_MAX + 4 * v));
}

int handle_fall(void)
{
    int period;

    if (!tick)
        return 0;
    tick = 0;

    if (slowdown_ticks > 0)
        slowdown_ticks--;

    period = fall_period_ticks();
    if (joy_down_req)                   /* soft drop: double speed */
        period /= 2;
    if (period < 1)
        period = 1;

    if (++fall_acc < period)
        return 0;
    fall_acc = 0;

    if (piece_fits(curr_row + 1, curr_col, rotation))
        curr_row++;
    else
        lock_piece();
    return 1;
}

/* ======================================================================
 *  Rendering (only cells that changed are redrawn)
 * ====================================================================== */

static void draw_cell(int row, int col, uint32_t value)
{
    int x, y;
    int x0 = FIELD_X_OFFSET + col * BLOCK_SIZE;
    int y0 = FIELD_Y_OFFSET + row * BLOCK_SIZE;
    uint16_t color = (value == CELL_POWERUP) ? POWERUP_COLOR : (uint16_t)value;

    for (y = 0; y < BLOCK_SIZE; y++) {
        for (x = 0; x < BLOCK_SIZE; x++) {
            int border = (x == 0 || y == 0 || x == BLOCK_SIZE - 1 || y == BLOCK_SIZE - 1);
            int marker = (value == CELL_POWERUP && x >= 5 && x < 10 && y >= 5 && y < 10);
            uint16_t px = (value != CELL_EMPTY && (border || marker)) ? Black : color;
            LCD_SetPoint(x0 + x, y0 + y, px);
        }
    }
}

static void invalidate_screen(void)
{
    int r, c;

    for (r = 0; r < PLAYFIELD_ROW; r++)
        for (c = 0; c < PLAYFIELD_COL; c++)
            shown[r][c] = SCREEN_INVALID;
}

void render_field(void)
{
    int r, c;

    for (r = 0; r < PLAYFIELD_ROW; r++)
        for (c = 0; c < PLAYFIELD_COL; c++)
            frame[r][c] = field[r][c];

    if (current_block)
        for (r = 0; r < 4; r++)
            for (c = 0; c < 4; c++)
                if (piece_cell(rotation, r, c))
                    frame[curr_row + r][curr_col + c] = current_color;

    for (r = 0; r < PLAYFIELD_ROW; r++)
        for (c = 0; c < PLAYFIELD_COL; c++)
            if (frame[r][c] != shown[r][c]) {
                draw_cell(r, c, frame[r][c]);
                shown[r][c] = frame[r][c];
            }
}

void draw_playfield(void)
{
    int w = PLAYFIELD_COL * BLOCK_SIZE;
    int h = PLAYFIELD_ROW * BLOCK_SIZE;

    LCD_DrawLine(0, 0, w + 2, 0, White);
    LCD_DrawLine(w + 2, 0, w + 2, h + 2, White);
    LCD_DrawLine(w + 2, h + 2, 0, h + 2, White);
    LCD_DrawLine(0, h + 2, 0, 0, White);
}

static void draw_number(uint16_t y, int value)
{
    char buf[12];

    GUI_Text(170, y, (uint8_t *)"       ", White, Black);
    sprintf(buf, "%d", value);
    GUI_Text(170, y, (uint8_t *)buf, White, Black);
}

static void update_score_value(void) { draw_number(40,  score); }
static void draw_top_score(void)     { draw_number(80,  high_score); }
static void update_lines_value(void) { draw_number(120, lines_cleared_counter); }

void draw_ui_static(void)
{
    GUI_Text(170, 20,  (uint8_t *)"SCORE", White, Black);
    GUI_Text(170, 60,  (uint8_t *)"TOP",   White, Black);
    GUI_Text(170, 100, (uint8_t *)"LINES", White, Black);
    update_score_value();
    draw_top_score();
    update_lines_value();
}

/* ======================================================================
 *  Game flow
 * ====================================================================== */

static void reset_game(void)
{
    int r, c;

    for (r = 0; r < PLAYFIELD_ROW; r++)
        for (c = 0; c < PLAYFIELD_COL; c++)
            field[r][c] = CELL_EMPTY;

    score = 0;
    lines_cleared_counter = 0;
    fall_acc = 0;
    slowdown_ticks = 0;
    tick = 0;
    joy_left_req = joy_right_req = joy_up_req = 0;
    hard_drop_request = 0;

    LCD_Clear(Black);
    draw_playfield();
    draw_ui_static();
    invalidate_screen();
    spawn_piece();
    render_field();
}

/* Shows the empty field; the game starts with KEY1. */
void game_init(void)
{
    reset_game();
    GUI_Text(170, 160, (uint8_t *)"KEY1:", White, Black);
    GUI_Text(170, 176, (uint8_t *)"START", White, Black);
    game_state = GAME_PAUSED;
}

void restart_game(void)
{
    reset_game();
    game_state = GAME_PLAYING;
}

void game_state_toggling(void)
{
    if (game_state == GAME_PAUSED) {
        game_state = GAME_PLAYING;
        fall_acc = 0;
        tick = 0;
    } else if (game_state == GAME_PLAYING) {
        game_state = GAME_PAUSED;
    }
}

void show_game_over(void)
{
    render_field();
    GUI_Text(40, 140, (uint8_t *)"GAME OVER",  Red,   Black);
    GUI_Text(32, 160, (uint8_t *)"Press KEY1", White, Black);
    GUI_Text(36, 176, (uint8_t *)"to restart", White, Black);
    sound_request = SOUND_GAME_OVER;
}
