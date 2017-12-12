#ifndef DELAY_INTERRUPT_H
#ifndef DELAY_H
#define DELAY_INTERRUPT_H

#include "gpio.h"
#include "systick.h"
#include "exceptions.h"

#define MIKRO_SECOND_PULSES 168

// *** PROTOTYPES ***

// init
void delay_interrupt_init(void);

// delays
void delay_250ns(void);
void delay_1mikro(void);
void delay(unsigned int);

// utility
void start_delay(unsigned int);

// interrupt
void systik_irq_handler(void);
void init_systik_irq_handler(void);

#endif // delay.h
#endif // delay_interrupt.h