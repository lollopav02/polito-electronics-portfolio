/*
 * sound.c - short sound effects on the LandTiger speaker (DAC, P0.26).
 *
 * TIMER2 toggles the DAC output to generate a square wave of the requested
 * frequency; TIMER1 is a one-shot timer that stops the tone after its
 * duration (see IRQ_timer.c).
 */
#include "LPC17xx.h"
#include "sound.h"
#include "timer.h"

#define PCLK_TIMER  25000000UL      /* CCLK / 4 */

volatile sound_event_t sound_request = SOUND_NONE;

void SOUND_init(void)
{
    LPC_PINCON->PINSEL1 &= ~(3u << 20);
    LPC_PINCON->PINSEL1 |=  (2u << 20);     /* P0.26 -> AOUT */
    LPC_DAC->DACR = 0;

    init_timer(1, PCLK_TIMER / 10);         /* duration, reprogrammed per tone */
    init_timer(2, PCLK_TIMER / 2000);       /* half period, reprogrammed per tone */
}

static void play_tone(uint32_t freq_hz, uint32_t duration_ms)
{
    disable_timer(1);
    disable_timer(2);
    reset_timer(1);
    reset_timer(2);

    LPC_TIM2->MR0 = PCLK_TIMER / (2 * freq_hz);
    LPC_TIM1->MR0 = (PCLK_TIMER / 1000) * duration_ms;

    enable_timer(2);
    enable_timer(1);
}

void SOUND_play(sound_event_t s)
{
    switch (s) {
        case SOUND_ROTATE:     play_tone(880,  40);  break;
        case SOUND_HARD_DROP:  play_tone(220,  80);  break;
        case SOUND_LINE_CLEAR: play_tone(1320, 150); break;
        case SOUND_GAME_OVER:  play_tone(110,  600); break;
        default: break;
    }
}
