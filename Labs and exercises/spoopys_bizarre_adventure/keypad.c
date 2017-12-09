#include "keypad.h"

void keyboard_init (void) {
    GPIO_D.moder &= 0x0000FFFF;
	GPIO_D.moder |= 0x55000000;
	GPIO_D.otyper &= 0x00FF;
	GPIO_D.otyper |= 0x0000;
	GPIO_D.pupdr &= 0x0000FFFF;
	GPIO_D.pupdr |= 0x00AA0000;
	GPIO_D.odrHigh &= 0x00FF;
}

unsigned char keyb(void){
	unsigned char row, column;
	
	for (unsigned char row = 1; row <= 4; row++) {
		// mind the one indexing of rows and columns, to simplify resetting of values
		ActivateRow(row);
		column = ReadColumn();
		if (column > 0){
			ActivateRow(0);
			return key[row - 1][column - 1];
			//return decode7segMatrix[row - 1][column - 1];
		}
	}
	ActivateRow(0);
	return 0xFF;
}

void ActivateRow(unsigned char row) {
	switch(row){
		case 0: GPIO_D.odrHigh = 0x0; break; //0 to reset
		case 1: GPIO_D.odrHigh = 0x10; break;
		case 2: GPIO_D.odrHigh = 0x20; break;
		case 3: GPIO_D.odrHigh = 0x40; break;
		case 4: GPIO_D.odrHigh = 0x80; break;
	}
}

int ReadColumn(void) {
	// Returns column number of pressed key, observe that the columns of the keyboard are read from right to left!
	unsigned char c;
	c = GPIO_D.idrHigh;
	if (c & 0x8){return 4;}
	if (c & 0x4){return 3;}
	if (c & 0x2){return 2;}
	if (c & 0x1){return 1;}
	return 0;
}