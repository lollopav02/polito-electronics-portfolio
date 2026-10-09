#include "LPC17xx.h"
#include "adc.h"

/* Potentiometer on P1.31 (AD0.5). */
void ADC_init(void)
{
    LPC_SC->PCONP |= (1 << 12);             /* power up the ADC */

    LPC_PINCON->PINSEL3 &= ~(3u << 30);
    LPC_PINCON->PINSEL3 |=  (3u << 30);     /* P1.31 -> AD0.5 */

    LPC_ADC->ADCR = (1 << 5)                /* select channel 5 */
                  | (4 << 8)                /* ADC clock = PCLK / 5 */
                  | (1 << 21);              /* ADC operational */
}

void ADC_start_conversion(void)
{
    LPC_ADC->ADCR |= (1 << 24);             /* start now */
}

uint16_t ADC_get_value(void)
{
    static uint16_t last = 0;
    uint32_t gdr = LPC_ADC->ADGDR;

    if (gdr & (1u << 31))                   /* DONE: a new result is ready */
        last = (gdr >> 4) & 0xFFF;
    return last;
}
