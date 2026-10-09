#ifndef BUTTONS_H
#define BUTTONS_H

/* KEY1 (P2.11, EINT1): start / pause / restart
 * KEY2 (P2.12, EINT2): hard drop
 * KEY0 (P2.10, EINT0): unused */
void BUTTON_init(void);
void BUTTON_debounce(void);     /* called by the RIT every 50 ms */

void EINT0_IRQHandler(void);
void EINT1_IRQHandler(void);
void EINT2_IRQHandler(void);

#endif
