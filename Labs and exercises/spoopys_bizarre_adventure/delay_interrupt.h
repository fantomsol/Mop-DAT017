#ifndef DELAY_INTERRUPT_H
#ifndef DELAY_H
#define DELAY_INTERRUPT_H

#include "gpio.h"
#include "systick.h"

#define MIKRO_SECOND_PULSES 168

// *** PROTOTYPES ***

// init
void delay_interrupt_init(void);

// delays
void delay_250ns(void);
void delay_500ns(void);
void delay_1mikro(void);
void delay_1milli(void);
void delay_mikro(unsigned int);
void delay_milli(unsigned int);

// utility
void start_delay(unsigned int);

// interrupt
void systick_interrupt_handler(void);
void init_systick_interrupt_handler(void);

#endif // delay.h
#endif // delay_interrupt.h