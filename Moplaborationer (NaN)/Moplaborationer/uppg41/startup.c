#include <stdint.h>
#include "gpio.h"
#include "sys_delay.h"

/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

void app_init(void){
	setup_for_keypad(GPIO_D);
	setup_for_seg_disp(GPIO_D);
}

void main(void)
{
	app_init();
	unsigned char pressed_button;
	while(1){
		pressed_button = keyb();
		out7seg(GPIO_D, pressed_button);
	}
}

