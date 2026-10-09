																			 /*********************************************************************************************************
**--------------File Info---------------------------------------------------------------------------------
** File name:           joystick.h
** Last modified Date:  2018-12-30
** Last Version:        V1.00
** Descriptions:        Prototypes of functions included in the lib_joystick, funct_joystick .c files
** Correlated files:    lib_joystick.c, funct_joystick.c
**--------------------------------------------------------------------------------------------------------       
*********************************************************************************************************/

#include <stdint.h>

#define JOY_NONE   	0
#define JOY_LEFT   	1
#define JOY_RIGHT 	2
#define JOY_UP 			3
#define JOY_DOWN		4



/* lib_joystick */
void joystick_init(void);

uint8_t joystick_read(void);


