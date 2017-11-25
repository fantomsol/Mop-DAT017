#include "sys_delay.h"
#include "gpio.h"

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

void init_app(void) {
	setup_for_graphic_display();
}

void main(void)
{
	init_app();
	graphic_initialize();
#ifndef SIMULATOR
	graphic_clear_screen();
#endif

	/*unsigned char i;
	for (i = 0; i < 128; i++)
		pixel(i, 10, 1);
	for (i = 0; i < 64; i++)
		pixel(10, i, 1);
	delay_milli(30);
	for (i = 0; i < 128; i++)
		pixel(i, 10, 0);
	for (i = 0; i < 64; i++)
		pixel(10, i, 0);*/

	// Print left only
	//graphic_write_command(LCD_SET_ADD | 10, B_CS1/*|B_CS2*/);
	//graphic_write_command(LCD_SET_PAGE | 1, B_CS1/*|B_CS2*/);
	//graphic_write_data(0xFF, B_CS1/*|B_CS2*/);
	
	// Print right only
	//graphic_write_command(LCD_SET_ADD | 10, /*B_CS1|*/B_CS2);
	//graphic_write_command(LCD_SET_PAGE | 1, /*B_CS1|*/B_CS2);
	//graphic_write_data(0xFF, /*B_CS1|*/B_CS2);
	
	// Print both
	graphic_write_command(LCD_SET_ADD | 20, B_CS1|B_CS2);
	graphic_write_command(LCD_SET_PAGE | 1, B_CS1|B_CS2);
	graphic_write_data(0xFF, B_CS1|B_CS2);
}

