#include <stdint.h>
#define White 0xFFFF
#define Black 0x0000
#define Grey 0xF7DE
#define Blue 0x001F
#define Blue2 0x051F
#define Red 0xF800
#define Magenta 0xF81F
#define Green 0x07E0
#define Cyan 0x7FFF
#define Yellow 0xFFE0
void LCD_Clear(uint16_t c);
void LCD_SetPoint(uint16_t x,uint16_t y,uint16_t p);
void LCD_DrawLine(uint16_t,uint16_t,uint16_t,uint16_t,uint16_t);
void GUI_Text(uint16_t,uint16_t,uint8_t*,uint16_t,uint16_t);
