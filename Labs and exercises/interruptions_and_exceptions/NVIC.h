#ifndef NVIC_H
#define NVIC_H

typedef struct _nvic{
    unsigned int iser0;
    unsigned int iser1;
    union {
        unsigned int iser2;
        unsigned short iser2Low;
    };
    unsigned int cer0;
    unsigned int cer1;
    union {
        unsigned int cer2;
        unsigned short cer2Low;
    };
    unsigned int ispr0;
    unsigned int ispr1;
    union {
        unsigned int ispr2;
        unsigned short ispr2Low;
    };
    unsigned int icpr0;
    unsigned int icpr1;
    union {
        unsigned int icpr2;
        unsigned short icpr2Low;
    };
    unsigned int iabr0;
    unsigned int iabr1;
    union {
        unsigned int iabr2;
        unsigned short iabr2Low;
    };
} _NVIC;

#define NVIC (*((volatile _NVIC*)0xE000E100))

#endif // nvic.h