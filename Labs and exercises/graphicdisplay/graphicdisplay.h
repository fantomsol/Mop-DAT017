#ifndef GRAPHICDISPLAY_H
#define GRAPHICDISPLAY_H

#include "delay.h"
#include "gpio.h"

#define B_E         0x40
#define B_RST       0x20
#define B_CS2       0x10
#define B_CS1       0x8
#define B_SELECT    0x4
#define B_RW        0x2
#define B_RS        0x1

typedef unsigned char uint8_t;

// Prototypes
void graphic_ctrl_bit_set(uint8_t);
void graphic_ctrl_bit_clear(uint8_t);
void select_controller(uint8_t);
void graphic_wait_ready(void);
uint8_t graphic_read(uint8_t);

#endif // GRAPHICDISPLAY_H