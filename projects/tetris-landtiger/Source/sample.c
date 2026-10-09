/*
 * Tetris for the LandTiger board (NXP LPC1768).
 *
 *   Joystick LEFT/RIGHT  move          KEY1  start / pause / restart
 *   Joystick UP          rotate        KEY2  hard drop
 *   Joystick DOWN (held) soft drop     Potentiometer  falling speed (1..5 sq/s)
 */
#include <stdlib.h>
#include "LPC17xx.h"
#include "GLCD.h"
#include "timer.h"
#include "joystick.h"
#include "RIT.h"
#include "buttons.h"
#include "functions.h"
#include "adc.h"
#include "sound.h"

#define TIMER0_TICK  (25000000UL / 1000 * TICK_MS)    /* PCLK = 25 MHz  */
#define RIT_TICK     (100000000UL / 1000 * TICK_MS)   /* PCLK = 100 MHz */

#ifdef SIMULATOR
extern uint8_t ScaleFlag;
#endif

int main(void)
{
    int seeded = 0;

    SystemInit();
    LCD_Initialization();

    BUTTON_init();
    joystick_init();
    ADC_init();
    SOUND_init();

    init_timer(0, TIMER0_TICK);
    init_RIT(RIT_TICK);

    NVIC_SetPriority(TIMER0_IRQn, 1);
    NVIC_SetPriority(TIMER1_IRQn, 1);
    NVIC_SetPriority(TIMER2_IRQn, 0);   /* audio timing is the most sensitive */
    NVIC_SetPriority(RIT_IRQn, 3);

    game_init();
    enable_timer(0);
    enable_RIT();

    while (1) {
        if (toggle_request) {
            toggle_request = 0;
            if (!seeded) {
                /* the time of the first key press is a good random seed */
                srand(LPC_TIM0->TC ^ LPC_RIT->RICOUNTER ^ ADC_get_value());
                seeded = 1;
                restart_game();
            } else if (game_state == GAME_OVER) {
                restart_game();
            } else {
                game_state_toggling();
            }
        }

        if (game_state == GAME_PLAYING) {
            int redraw = 0;

            if (joy_left_req)  { joy_left_req = 0;  redraw |= move_horizontal(-1); }
            if (joy_right_req) { joy_right_req = 0; redraw |= move_horizontal(+1); }
            if (joy_up_req)    { joy_up_req = 0;    redraw |= rotate_piece(); }
            if (hard_drop_request) {
                hard_drop_request = 0;
                hard_drop();
                redraw = 1;
            }
            redraw |= handle_fall();

            if (game_state == GAME_OVER)
                show_game_over();
            else if (redraw)
                render_field();
        } else {
            /* ignore inputs while paused or after game over */
            joy_left_req = joy_right_req = joy_up_req = 0;
            hard_drop_request = 0;
        }

        if (sound_request != SOUND_NONE) {
            sound_event_t s = sound_request;
            sound_request = SOUND_NONE;
            SOUND_play(s);
        }
    }
}
