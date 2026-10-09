#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include <stdint.h>

/* ---- Playfield geometry ---- */
#define BLOCK_SIZE      15
#define PLAYFIELD_COL   10
#define PLAYFIELD_ROW   20
#define FIELD_X_OFFSET  1
#define FIELD_Y_OFFSET  1

/* ---- Timing (TIMER0 and RIT both tick every 50 ms) ---- */
#define TICK_MS         50

typedef enum {
    GAME_PAUSED,
    GAME_PLAYING,
    GAME_OVER
} game_state_t;

extern volatile game_state_t game_state;

/* Flags raised by the ISRs and consumed by the main loop */
extern volatile int tick;
extern volatile int joy_left_req;
extern volatile int joy_right_req;
extern volatile int joy_up_req;
extern volatile int joy_down_req;      /* level: 1 while DOWN is held */
extern volatile int hard_drop_request;
extern volatile int toggle_request;

extern int score;
extern int high_score;
extern int lines_cleared_counter;

/* Game flow */
void game_init(void);
void restart_game(void);
void game_state_toggling(void);
void show_game_over(void);

/* Player actions: return 1 if the screen must be redrawn */
int  move_horizontal(int dx);
int  rotate_piece(void);
void hard_drop(void);
int  handle_fall(void);

/* Rendering */
void render_field(void);
void draw_playfield(void);
void draw_ui_static(void);

#endif
