#include "delay.h"

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
#ifndef SIMULATOR
<<<<<<< HEAD
	delay_mikro(ms*MILLI_TO_MIKRO);
	return;
#endif // For simulator
    delay_mikro(ms);
=======
	delay_mikro(ms);
	return;
#endif // For simulator
    delay_mikro(ms*MILLI_TO_MIKRO);
>>>>>>> 689e8d2947eb8614c46af2a917dfb20df8d45ce9
}
