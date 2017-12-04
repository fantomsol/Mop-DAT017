#include "delay_interrupt.h"

volatile int systick_flag = 1;
static volatile int delay_counter = 0;
static int mikro;

void delay_interrupt_init(void){
    init_systick_interrupt_handler();
}

void delay_250ns(void){
    systick_flag = 0;
    start_delay(MIKRO_SECOND_PULSES / 4);   
}

void delay_500ns(void){
    systick_flag = 0;
    start_delay(MIKRO_SECOND_PULSES / 2);   
}

void delay_1mikro(void){
    start_delay(MIKRO_SECOND_PULSES);
}

void delay_1milli(void){
#ifndef SIMULATOR
    start_delay(MIKRO_SECOND_PULSES * 1000);
#else
    start_delay(MIKRO_SECOND_PULSES);
#endif
}

void delay_mikro(unsigned int count){
    if(count == 0)return;
    delay_counter = count;
    systick_flag = 0;
    mikro = 1;
    delay_1mikro();
}

void delay_milli(unsigned int count){
    if(count == 0) return;
    delay_counter = count;
    systick_flag = 0;
    mikro = 0;
    delay_1milli();
}

void start_delay(unsigned int pulses){
    SYSTICK.ctrl = 0;
    SYSTICK.load = pulses-1;
    SYSTICK.val = 0;
    SYSTICK.ctrlFirstByte = 7;
}

void init_systick_interrupt_handler(void){
    *((void(**)(void))0x2001C03C) = systick_interrupt_handler;
}

void systick_interrupt_handler(void){
    SYSTICK.ctrl = 0;
    delay_counter--;
    if(delay_counter > 0){
        if(mikro){
            delay_1mikro();
        } else {
            delay_1milli();
        }
    } else {
        systick_flag = 1;
    }
}