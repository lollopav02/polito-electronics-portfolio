#ifndef __TIMER_H
#define __TIMER_H

#include <stdint.h>

/* Timers run at PCLK = CCLK / 4 = 25 MHz. */
uint32_t init_timer(uint8_t timer_num, uint32_t interval);
void enable_timer(uint8_t timer_num);
void disable_timer(uint8_t timer_num);
void reset_timer(uint8_t timer_num);

void TIMER0_IRQHandler(void);
void TIMER1_IRQHandler(void);
void TIMER2_IRQHandler(void);

#endif
