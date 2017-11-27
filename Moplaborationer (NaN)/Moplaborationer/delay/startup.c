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

void init_app( void )
{
	setup_for_seg_disp(GPIO_D);
}

void main(void)
{
	init_app();
	while(1)
	{
		GPIO_D->odrLow = 0;
		delay_milli(500);
		GPIO_D->odrLow = 0xFF;
		delay_milli(500);
	}
}

