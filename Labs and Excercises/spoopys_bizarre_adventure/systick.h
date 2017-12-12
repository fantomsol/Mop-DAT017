#ifndef SYSTICK_H
#define SYSTICK_H

typedef struct _systick{
    union {
        unsigned int ctrl;
        struct {
            unsigned char ctrlFirstByte;
            unsigned char reserved1;
            unsigned char ctrlThirdByte;
            unsigned char reserved2;
        }
    };
    unsigned int load;
    unsigned int val;
    unsigned int calib;
}SYSTICK_STRUCT;

#define SYSTICK (*((volatile SYSTICK_STRUCT*) 0xE000E010))

#endif // systik.h