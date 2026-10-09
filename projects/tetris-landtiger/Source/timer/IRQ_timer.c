#include "LPC17xx.h"
#include "timer.h"
#include "functions.h"

#define DAC_LEVEL  (512u << 6)      /* half scale */

/* Game tick, every TICK_MS. */
void TIMER0_IRQHandler(void)
{
    tick = 1;
    LPC_TIM0->IR = 1;
}

/* End of the current tone. */
void TIMER1_IRQHandler(void)
{
    disable_timer(2);
    LPC_DAC->DACR = 0;
    LPC_TIM1->IR = 1;
}

/* Square wave: toggle the DAC every half period. */
void TIMER2_IRQHandler(void)
{
    static uint8_t high = 0;

    high ^= 1;
    LPC_DAC->DACR = high ? DAC_LEVEL : 0;
    LPC_TIM2->IR = 1;
}
