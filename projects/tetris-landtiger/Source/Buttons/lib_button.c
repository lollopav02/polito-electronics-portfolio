#include "LPC17xx.h"
#include "buttons.h"

#define KEY1_PIN   11
#define KEY2_PIN   12

extern volatile int key1_down;
extern volatile int key2_down;

void BUTTON_init(void)
{
    /* P2.10, P2.11, P2.12 -> EINT0, EINT1, EINT2 */
    LPC_PINCON->PINSEL4 &= ~((3u << 20) | (3u << 22) | (3u << 24));
    LPC_PINCON->PINSEL4 |=   (1u << 20) | (1u << 22) | (1u << 24);
    LPC_GPIO2->FIODIR   &= ~((1u << 10) | (1u << 11) | (1u << 12));

    LPC_SC->EXTMODE   = 0x7;        /* edge sensitive */
    LPC_SC->EXTPOLAR &= ~0x7u;      /* falling edge (keys are active low) */
    LPC_SC->EXTINT    = 0x7;        /* clear pending flags */

    NVIC_SetPriority(EINT1_IRQn, 2);
    NVIC_SetPriority(EINT2_IRQn, 2);
    NVIC_EnableIRQ(EINT1_IRQn);
    NVIC_EnableIRQ(EINT2_IRQn);
}

/*
 * Debouncing: on press, the EINT handler disables its own interrupt and
 * switches the pin to GPIO. The RIT then polls the pin every 50 ms and,
 * once the key is released, gives the pin back to the EINT and re-enables
 * the interrupt. Contact bounces can no longer produce extra presses.
 */
void BUTTON_debounce(void)
{
    if (key1_down && (LPC_GPIO2->FIOPIN & (1u << KEY1_PIN))) {
        key1_down = 0;
        LPC_PINCON->PINSEL4 |= (1u << 22);
        LPC_SC->EXTINT = (1u << 1);
        NVIC_ClearPendingIRQ(EINT1_IRQn);
        NVIC_EnableIRQ(EINT1_IRQn);
    }

    if (key2_down && (LPC_GPIO2->FIOPIN & (1u << KEY2_PIN))) {
        key2_down = 0;
        LPC_PINCON->PINSEL4 |= (1u << 24);
        LPC_SC->EXTINT = (1u << 2);
        NVIC_ClearPendingIRQ(EINT2_IRQn);
        NVIC_EnableIRQ(EINT2_IRQn);
    }
}
