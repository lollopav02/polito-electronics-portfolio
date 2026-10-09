#ifndef __ADC_H
#define __ADC_H

#include <stdint.h>

void     ADC_init(void);
void     ADC_start_conversion(void);   /* called every 50 ms by the RIT */
uint16_t ADC_get_value(void);          /* last result, 0..4095, never blocks */

#endif
