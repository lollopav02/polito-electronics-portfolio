/*********************************************************************************************************
**--------------File Info---------------------------------------------------------------------------------
** File name:           funct_joystick.h
** Last modified Date:  2018-12-30
** Last Version:        V1.00
** Descriptions:        High level joystick management functions
** Correlated files:    lib_joystick.c, funct_joystick.c
**--------------------------------------------------------------------------------------------------------       
*********************************************************************************************************/

#include "LPC17xx.h"
#include "joystick.h"


uint8_t joystick_read(void)
{
    uint32_t val = LPC_GPIO1->FIOPIN;

    if (!(val & (1 << 27))) return JOY_LEFT;   // LEFT  -> P1.27
    if (!(val & (1 << 28))) return JOY_RIGHT;  // RIGHT -> P1.28
    if (!(val & (1 << 29))) return JOY_UP;     // UP    -> P1.29
    if (!(val & (1 << 26))) return JOY_DOWN;   // DOWN  -> P1.26

    return JOY_NONE;
}
