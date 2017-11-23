/*
 * 	graphicdisplay
 *
 */
 #include "delay.h"
 #include "gpio.h"
 #include "graphicdisplay.h"
 
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void ){
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

void main(void){
	init_app();
	graphic_initialize();
#ifndef SIMULATOR
	graphic_clear_screen();
#endif //for simulator
	
	graphic_write_command (LCD_SET_ADD | 10, B_CS1 | B_CS2);
	graphic_write_command (LCD_SET_PAGE | 1, B_CS1 | B_CS2);
	graphic_write_data (0xFF, B_CS1 | B_CS2);
}

