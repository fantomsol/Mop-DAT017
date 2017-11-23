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

#define LCD_ON			0x3E
#define LCD_OFF			0xFF
#define LCD_DISP_START	0xD0
#define LCD_SET_ADD		0x40
#define LCD_SET_PAGE	0xB8

typedef unsigned char uint8_t;

// Prototypes
void graphic_ctrl_bit_set(uint8_t);
void graphic_ctrl_bit_clear(uint8_t);

void select_controller(uint8_t);

void graphic_wait_ready(void);

void graphic_write(uint8_t, uint8_t);
void graphic_write_command(uint8_t, uint8_t);
void graphic_write_data(uint8_t, uint8_t);

uint8_t graphic_read(uint8_t);
uint8_t graphic_read_data(uint8_t);

void init_app(void);
void graphic_initialize(void);

void graphic_clear_screen(void);
#endif // GRAPHICDISPLAY_H