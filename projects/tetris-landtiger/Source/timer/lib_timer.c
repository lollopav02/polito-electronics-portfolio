#include "LPC17xx.h"
#include "timer.h"

static LPC_TIM_TypeDef * const timers[3] = { LPC_TIM0, LPC_TIM1, LPC_TIM2 };

/*
 * TIMER0: periodic game tick       (interrupt + reset on MR0)
 * TIMER1: one-shot sound duration  (interrupt + reset + stop on MR0)
 * TIMER2: periodic DAC square wave (interrupt + reset on MR0)
 * The timer is configured but not started: call enable_timer().
 */
uint32_t init_timer(uint8_t timer_num, uint32_t interval)
{
    LPC_TIM_TypeDef *t;
    uint32_t mcr;
    IRQn_Type irq;

    switch (timer_num) {
        case 0:
            LPC_SC->PCONP    |=  (1 << 1);
            LPC_SC->PCLKSEL0 &= ~(3 << 2);
            mcr = 3; irq = TIMER0_IRQn;
            break;
        case 1:
            LPC_SC->PCONP    |=  (1 << 2);
            LPC_SC->PCLKSEL0 &= ~(3 << 4);
            mcr = 7; irq = TIMER1_IRQn;
            break;
        case 2:
            LPC_SC->PCONP    |=  (1 << 22);
            LPC_SC->PCLKSEL1 &= ~(3 << 12);
            mcr = 3; irq = TIMER2_IRQn;
            break;
        default:
            return 0;
    }

    t = timers[timer_num];
    t->TCR = 2;             /* hold in reset */
    t->MR0 = interval;
    t->MCR = mcr;
    t->IR  = 0x3F;
    t->TCR = 0;
    NVIC_EnableIRQ(irq);
    return 1;
}

void enable_timer(uint8_t timer_num)
{
    if (timer_num < 3)
        timers[timer_num]->TCR = 1;
}

void disable_timer(uint8_t timer_num)
{
    if (timer_num < 3)
        timers[timer_num]->TCR = 0;
}

void reset_timer(uint8_t timer_num)
{
    if (timer_num < 3) {
        uint32_t tcr = timers[timer_num]->TCR;
        timers[timer_num]->TCR = tcr | 2;
        timers[timer_num]->TCR = tcr & ~2u;
    }
}
