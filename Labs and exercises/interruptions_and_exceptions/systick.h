#ifndef SYSTICK_H
#define SYSTICK_H

typedef struct _systick{
    union {
        unsigned int ctrl;
        struct {
            unsigned char ctrl_first_byte;
            unsigned char reserved_1;
            unsigned char ctrl_third_byte;
            unsigned char reserved_2;
        }
    };
    unsigned int load;
    unsigned int val;
    unsigned int calib;
}SYSTICK_STRUCT;

#define SYSTICK (*((volatile SYSTICK_STRUCT*) 0xE000E010))

#endif // systik.h