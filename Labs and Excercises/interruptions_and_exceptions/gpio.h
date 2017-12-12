#ifndef GPIO_H
#define GPIO_H

typedef struct _gpio {
    unsigned int moder;
    unsigned int otyper;
    unsigned int ospeedr;
    unsigned int pupdr;
//The union says that idr includes both idrLow and idrHigh; idrLow starts on the same adress as idrLow    
    union {
        unsigned int idr;
        struct {
            unsigned char idrLow;
            unsigned char idrHigh;
        };
    };
    union {
        unsigned int odr;
        struct {
            unsigned char odrLow;
            unsigned char odrHigh;
        };
    };
}GPIO;

#define GPIO_D	(*((volatile GPIO*)	0x40020c00))
#define GPIO_E	(*((volatile GPIO*)	0x40021000))

#endif // GPIO_H