#include "delay_interrupt.h"

volatile int systick_flag = 1;
static volatile int delay_counter = 0;

void delay_interrupt_init(void){
    init_systik_irq_handler();
}

void delay_250ns(void){
    systick_flag = 0;
    start_delay(MIKRO_SECOND_PULSES / 4);   
}

void delay_1mikro(void){
    start_delay(MIKRO_SECOND_PULSES);
}

void delay(unsigned int count){
    if(count == 0)return;
    delay_counter = count;
    systick_flag = 0;
    delay_1mikro();
}

void start_delay(unsigned int pulses){
    SYSTICK.ctrl = 0;
    SYSTICK.load = pulses-1;
    SYSTICK.val = 0;
    SYSTICK.ctrl_first_byte = 7;
}

void init_systik_irq_handler(void){
    *((void(**)(void))0x2001C03C) = systik_irq_handler;
}

void systik_irq_handler(void){
    SYSTICK.ctrl = 0;
    delay_counter--;
    if(delay_counter > 0){
        delay_1mikro();
    } else {
        systick_flag = 1;
    }
}