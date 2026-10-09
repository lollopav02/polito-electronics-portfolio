#include "LPC17xx.h"
#include "RIT.h"
#include "functions.h"
#include "buttons.h"
#include "adc.h"

/* Joystick lines on port 1 (active low) */
#define JOY_SELECT  (1u << 25)
#define JOY_DOWN    (1u << 26)
#define JOY_LEFT    (1u << 27)
#define JOY_RIGHT   (1u << 28)
#define JOY_UP      (1u << 29)
#define JOY_MASK    (JOY_SELECT | JOY_DOWN | JOY_LEFT | JOY_RIGHT | JOY_UP)

/* Every TICK_MS: joystick sampling, key debouncing, ADC trigger. */
void RIT_IRQHandler(void)
{
    static uint32_t prev = 0;
    uint32_t now   = ~LPC_GPIO1->FIOPIN & JOY_MASK;   /* 1 = pressed */
    uint32_t edges = now & ~prev;                      /* newly pressed */

    prev = now;

    if (edges & JOY_LEFT)   joy_left_req = 1;
    if (edges & JOY_RIGHT)  joy_right_req = 1;
    if (edges & JOY_UP)     joy_up_req = 1;
    if (edges & JOY_SELECT) hard_drop_request = 1;
    joy_down_req = (now & JOY_DOWN) != 0;              /* held = soft drop */

    BUTTON_debounce();
    ADC_start_conversion();

    LPC_RIT->RICTRL |= 0x1;                            /* clear interrupt */
}
