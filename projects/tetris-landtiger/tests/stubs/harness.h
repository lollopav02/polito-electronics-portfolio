/* Stubs for LCD/ADC/sound + white-box include of the game logic. */
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <stdlib.h>
#include "functions.h"
#include "GLCD.h"
#include "adc.h"
#include "sound.h"
volatile sound_event_t sound_request = SOUND_NONE;
static uint16_t adc = 0; uint16_t ADC_get_value(void){return adc;}
static uint16_t lcd[320][240]; long setpoints=0;
void LCD_Clear(uint16_t c){for(int y=0;y<320;y++)for(int x=0;x<240;x++)lcd[y][x]=c;}
void LCD_SetPoint(uint16_t x,uint16_t y,uint16_t p){assert(x<240&&y<320);lcd[y][x]=p;setpoints++;}
void LCD_DrawLine(uint16_t a,uint16_t b,uint16_t c,uint16_t d,uint16_t e){}
void GUI_Text(uint16_t x,uint16_t y,uint8_t*s,uint16_t c,uint16_t b){}
#include "functions.c"
