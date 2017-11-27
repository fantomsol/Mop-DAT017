/*
 * 	graphicdisplay
 *
 */
#include "delay.h"
#include "keypad.h"
#include "gpio.h"
#include "graphicdisplay.h"
#include <stdint.h>
 
//#define SIMULATOR
#define EXERCISE 16
 
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

#if EXERCISE == 14
	graphic_write_command (LCD_SET_ADD | 20, B_CS1 | B_CS2);
	graphic_write_command (LCD_SET_PAGE | 1, B_CS1 | B_CS2);
	graphic_write_data (0xFF, B_CS1 | B_CS2);
	
	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
	
#endif // 5.14
    
#if EXERCISE == 15
    while(1){
        // Draw a horisontal line
        for(int i = 0; i < 128; i++){
            pixel(i, 10, 1);
        }
        // Draw a vertical line
        for(int i = 0; i < 64; i++){
            pixel(10, i, 1);
        }
		
		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
        
        delay_milli(500);
        
        // Erase horisontal line
        for(int i = 0; i < 128; i++){
            pixel(i, 10, 0);
        }
        // Erase a vertical line
        for(int i = 0; i < 64; i++){
            pixel(10, i, 0);
        }
        
		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
		
        delay_milli(500);
    }
#endif // 5.15

#if EXERCISE == 16
	keyboard_init();
	GEOMETRY ball_geometry = {
		12, // numpoints
		4, 4, // Size x and y
		// px
		{
			{0,1}, {0,2}, {1,0}, {1,1}, {1,2}, {1,3}, {2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2}
		}
	};
	OBJECT ball = {
		&ball_geometry,
		0, 0,
		1, 1,
		draw_object,
		clear_object,
		move_object,
		set_object_speed
	};
	
	POBJECT p = &ball;
	
	p->set_speed(p, 4, 1);
	uint8_t keyboard_val;
	while(1){
		p->move(p);
		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
		keyboard_val = keyb();
		switch (keyboard_val){
			case 6: p->set_speed(p, 2, 0); break;
			case 4: p->set_speed(p, -2, 0); break;
			case 2: p->set_speed(p, 0, -2); break;
			case 8: p->set_speed(p, 0, 2); break;
		}
		delay_milli(40);
	}
#endif // Exercise 16
}

