#include "LPC17xx.h"
#include "RIT.h"

void enable_RIT(void)
{
    LPC_RIT->RICTRL |= (1<<3);
}

void disable_RIT(void)
{
    LPC_RIT->RICTRL &= ~(1<<3);
}

void reset_RIT(void)
{
    LPC_RIT->RICOUNTER = 0;
}

uint32_t init_RIT(uint32_t interval)
{
    LPC_SC->PCONP |= (1<<16);
    LPC_SC->PCLKSEL1 &= ~(3<<26);
    LPC_SC->PCLKSEL1 |=  (1<<26);

    LPC_RIT->RICOMPVAL = interval;
    LPC_RIT->RICTRL = (1<<1) | (1<<2);
    LPC_RIT->RICOUNTER = 0;

    NVIC_EnableIRQ(RIT_IRQn);
    NVIC_SetPriority(RIT_IRQn, 3);

    return 0;
}
