/*
 * 	startup.c
 *
 */
#include "gpio.h"
#include "syscfg.h"
#include "exti.h"
#include "sprites.h"

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
void app_init(void);

void startup ( void ){
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

void main(void){
    keyboard_init();
    sprites_init();
	
    extern OBJECT spoopy;
    extern OBJECT portal;
	POBJECT p = &spoopy;
	
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
}


void app_init(void){
#ifdef USBDM
	*((unsigned long*) 0x40023830) = 0x18;
	__asm volatile( 
		" LDR R0, =0x08000209\n"
		" BLX R0\n"
		);
#endif

    asciidisplay_init();
    graphicdisplay_init();
    delay_interrupt_init();
    keyboard_init();
    
}
