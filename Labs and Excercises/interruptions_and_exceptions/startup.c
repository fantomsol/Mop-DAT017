/*
 * 	startup.c
 *
 */
#include "exceptions.h"
#include "delay_interrupt.h"
#include "gpio.h"

#define SIMULATOR

#ifdef SIMULATOR
#define DELAY_COUNT 100
#else
#define DELAY_COUNT 1000000
#endif

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
void app_init(void);

extern int systick_flag;

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
    delay(DELAY_COUNT);
    
    GPIO_D.odrLow = 0xFF;
    GPIO_D.odrHigh = 0;
    while(1){
        if(GPIO_D.odrHigh == 0){
            GPIO_D.odrHigh = 1;
        } else {
            GPIO_D.odrHigh = GPIO_D.odrHigh << 1;
        }
        if(systick_flag) break;
    }
    GPIO_D.odrLow = 0;
}

void app_init(void){
    GPIO_D.moder = 0x55555555;
    delay_interrupt_init();
}

