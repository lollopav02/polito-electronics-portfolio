#ifndef __RIT_H
#define __RIT_H

#include "stdint.h"

uint32_t init_RIT(uint32_t RITInterval);
void enable_RIT(void);
void disable_RIT(void);
void reset_RIT(void);
void RIT_IRQHandler(void);

#endif
