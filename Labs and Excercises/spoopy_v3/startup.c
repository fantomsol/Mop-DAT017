/*
 * 	startup.c
 *
 */
#include "gpio.h"
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
    app_init();
    
    unsigned char test1[] = "Lumo och Lattes";
    unsigned char test2[] = "Cafe";
    unsigned char* p = test1;
    ascii_gotoxy(1, 1);
    while(*p != 0){
        ascii_write_char(*p);
        p++;
    }
    p = test2;
    ascii_gotoxy(2, 1);
    while(*p != 0){
        ascii_write_char(*p);
        p++;
    }
    
    for(int x = 0; x < 8; x++){
        pixel(x + 8, 20, 1);
    }
}

void app_init(){
#ifdef USBDM
	*((unsigned long*) 0x40023830) = 0x18;
	__asm volatile( 
		" LDR R0, =0x08000209\n"
		" BLX R0\n"
		);
#endif // usbdm
    setup_for_ascii_display();
    graphic_initialize();
}

