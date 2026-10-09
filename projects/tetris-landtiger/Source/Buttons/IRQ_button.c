#include "LPC17xx.h"
#include "buttons.h"
#include "functions.h"

volatile int key1_down = 0;
volatile int key2_down = 0;

void EINT0_IRQHandler(void)
{
    LPC_SC->EXTINT = (1u << 0);
}

/* KEY1: start / pause / restart */
void EINT1_IRQHandler(void)
{
    NVIC_DisableIRQ(EINT1_IRQn);
    LPC_PINCON->PINSEL4 &= ~(3u << 22);     /* P2.11 -> GPIO while held */
    key1_down = 1;
    toggle_request = 1;
    LPC_SC->EXTINT = (1u << 1);
}

/* KEY2: hard drop */
void EINT2_IRQHandler(void)
{
    NVIC_DisableIRQ(EINT2_IRQn);
    LPC_PINCON->PINSEL4 &= ~(3u << 24);     /* P2.12 -> GPIO while held */
    key2_down = 1;
    hard_drop_request = 1;
    LPC_SC->EXTINT = (1u << 2);
}
