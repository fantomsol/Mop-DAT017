#include "gpio.h"

void setup_for_keypad(GPIO* _gpio)
{
	// Sätt pinnar 15-12 till utportar
	// och pinnar 11-8 till inportar.
    _gpio->moder &= 0x0000FFFF;
    _gpio->moder |= 0x5500FFFF;
	
	// Sätt pinnar 15-12 till "push-pull"
	// och pinnar 11-8 till "open drain".
    _gpio->otyper &= 0xFFFF00FF;
    _gpio->otyper |= 0x00000F00;

	// Sätt pinnar 15-12 till "floating"
	// och pinnar 11-8 till "pull-down"
    _gpio->pupdr &= 0x0000FFFF;
    _gpio->pupdr |= 0x00AA0000;
}

void setup_for_seg_disp(GPIO* _gpio) 
{
	// Sätt pinnar 7-0 till utportar
	_gpio->moder &= 0xFFFF0000;
	_gpio->moder |= 0x00005555;
	
	// Sätt pinnar 7-0 till "push-pull"
	_gpio->otyper &= 0xFFFFFF00;
	_gpio->otyper |= 0x000000FF;
	
	// Sätter pinnar 4-0 till "pull-down"
	_gpio->pupdr &= 0xFFFFFF00;
	_gpio->pupdr |= 0x000000AA;
}

unsigned char keyb(void)
{
	unsigned char keys[] = {
		1,  2,  3,  10,
		4,  5,  6,  11,
		7,  8,  9,  12,
		14, 0,  15, 13
	};
	unsigned char row, col;
	for(row = 0; row < 4; row++) {
		deactivate_rows(GPIO_D);
		activate_row(GPIO_D, row);
		col = read_col(GPIO_D);
		if(col != 0xFF) {
			return keys[ 4 * row + col];
		}
	}
	return 0xFF;
}

void out7seg(GPIO* _gpio, unsigned char c)
{
    unsigned short result[] = { 
		0x3F, // 0
		0x06, // 1
		0x5B, // 2
		0x4F, // 3
		0x66, // 4
		0x6D, // 5
		0x7D, // 6
		0x07, // 7
		0x7F, // 8
		0x6F, // 9
		0x77, // A
		0x7C, // B
		0x58, // C
		0x5E, // D
		0x80, // E
		0x76  // F
	};

    if(c > 0xF) {
		_gpio->odrLow = 0x00;
    } else {
		_gpio->odrLow = result[c];
    }
}

void activate_row(GPIO* _gpio, unsigned char row) 
{
	switch(row){
		case 0: _gpio->odrHigh = 0x10; break;
		case 1: _gpio->odrHigh = 0x20; break;
		case 2: _gpio->odrHigh = 0x40; break;
		case 3: _gpio->odrHigh = 0x80; break;
	}
}

void deactivate_rows(GPIO* _gpio)
{
	_gpio->odrHigh = 0x00;
}

unsigned char read_col(GPIO* _gpio)
{
	if(_gpio->idrHigh & 0x01) return 0;
	if(_gpio->idrHigh & 0x02) return 1;
	if(_gpio->idrHigh & 0x04) return 2;
	if(_gpio->idrHigh & 0x08) return 3;
	return 0xFF;
}