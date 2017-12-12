#ifndef EXTI_H
#define EXTI_H

typedef struct _exti{
    unsigned int imr;
    unsigned int emr;
    unsigned int rtsr;
    unsigned int ftsr;
    unsigned int swier;
    unsigned int pr;
} _EXTI;

#define EXTI (*((volatile _EXTI*) 0x40013C00))

#endif // exti.h