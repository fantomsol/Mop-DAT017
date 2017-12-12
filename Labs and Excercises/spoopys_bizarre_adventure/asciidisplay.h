#ifndef ASCIIDISPLAY_H
#define ASCIIDISPLAY_H

#include "delay.h"
#include "gpio.h"

#define B_E 0x40
#define B_SELECT 0x4
#define B_RW 0x2
#define B_RS 0x1

void asciidisplay_init(void);
void ascii_ctrl_bit_set(unsigned char);
void ascii_ctrl_bit_clear(unsigned char);
void ascii_write_cmd(unsigned char);
void ascii_write_data(unsigned char);
unsigned char ascii_read_status(void);
unsigned char ascii_read_data(void);
void ascii_write_controller(unsigned char);
unsigned char ascii_read_controller(void);
void ascii_command(unsigned char, unsigned int, unsigned short);
void ascii_write_char(unsigned char);
void gotoxy(unsigned int, unsigned int);
void ascii_write_string(char*);
void ascii_clear_screen(void);

#endif