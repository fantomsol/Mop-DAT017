#include "geometry.h"
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

void init_app()
{
	setup_for_graphic_display();
}

int main(int argc, char **argv)
{
	POBJECT p = &ball;
	init_app();
	graphic_initialize();
#ifndef SIMULATOR
	graphic_clearscreen();
#endif
	p->set_speed(p, 4, 1);
	while(1){
		p->move(p);
		delay_milli(40); // 25 "bilder/sekund"
	}
}

