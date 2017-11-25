#ifndef DELAY_H
#define DELAY_H

#define SYSTIK 0xE000E010

#define STK_CTRL *((volatile unsigned int*)SYSTIK)
#define STK_LOAD *((volatile unsigned int*)(SYSTIK+0x4))
#define STK_VAL *((volatile unsigned int*)(SYSTIK+0x8))

#define COUNT_VAL ((unsigned int)(42))
#define MILLI_TO_MIKRO 1

void delay_250ns(void);
void delay_500ns(void);
void delay_mikro(unsigned int);
void delay_milli(unsigned int);

#endif // DELAY_H
