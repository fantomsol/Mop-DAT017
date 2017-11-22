#include "delay.h"

#define SYSTIK 0xE000E010

#define STK_CTRL *((volatile unsigned int*)SYSTIK)
#define STK_LOAD *((volatile unsigned int*)(SYSTIK+0x4))
#define STK_VAL *((volatile unsigned int*)(SYSTIK+0x8))

#define COUNT_VAL ((unsigned int)(42))
#define MILLI_TO_MIKRO 1000

void delay_250ns(void){
    STK_CTRL &= 0xFFFEFFF8;
    STK_LOAD &= 0xFF000000;
    STK_LOAD |= COUNT_VAL-1;
    STK_VAL = 0;
    STK_CTRL |= 0x5;
    
    while(STK_CTRL & 0x00010000 == 0);
    
    STK_CTRL &= 0xFFFEFFF8;
}

void delay_500ns(void){
    delay_250ns();
    delay_250ns();
}

void delay_mikro(unsigned int us){
    for(int i=0; i < us*2; i++){
        delay_500ns();
    }
}

void delay_milli(unsigned int ms){
    delay_mikro(ms*MILLI_TO_MIKRO);
}
