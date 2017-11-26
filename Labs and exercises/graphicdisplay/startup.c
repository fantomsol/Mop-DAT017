/*
 * 	graphicdisplay
 *
 */
#include "delay.h"
#include "gpio.h"
#include "graphicdisplay.h"
#include <stdint.h>
 
#define SIMULATOR
#define EXERCISE 15
 
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
#if EXERCISE == 14
	init_app();
	graphic_initialize();
#ifndef SIMULATOR
	graphic_clear_screen();
#endif //for simulator
	
	graphic_write_command (LCD_SET_ADD | 20, B_CS1 | B_CS2);
	graphic_write_command (LCD_SET_PAGE | 1, B_CS1 | B_CS2);
	graphic_write_data (0xFF, B_CS1 | B_CS2);
#endif // 5.14
    
#if EXERCISE == 15
    init_app();
    graphic_initialize();
#ifndef SIMULATOR
    graphic_clear_screen();
#endif // For simulator
    while(1){
        // Draw a horisontal line
        for(int i = 0; i < 128; i++){
            pixel(i, 10, 1);
        }
        // Draw a vertical line
        for(int i = 0; i < 64; i++){
            pixel(10, i, 1);
        }
        
        delay_milli(500);
        
        // Erase horisontal line
        for(int i = 0; i < 128; i++){
            pixel(i, 10, 0);
        }
        // Erase a vertical line
        for(int i = 0; i < 64; i++){
            pixel(10, i, 0);
        }
        
        delay_milli(500);
    }
#endif // 5.15
}

