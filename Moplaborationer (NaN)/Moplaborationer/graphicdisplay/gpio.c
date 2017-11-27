#include "gpio.h"
#include "sys_delay.h"
#include <stdint.h>

void setup_for_keypad(GPIO* _gpio) {
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

void setup_for_seg_disp(GPIO* _gpio) {
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

unsigned char keyb(void) {
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

void out7seg(GPIO* _gpio, unsigned char c) {
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

void activate_row(GPIO* _gpio, unsigned char row) {
	switch(row){
		case 0: _gpio->odrHigh = 0x10; break;
		case 1: _gpio->odrHigh = 0x20; break;
		case 2: _gpio->odrHigh = 0x40; break;
		case 3: _gpio->odrHigh = 0x80; break;
	}
}

void deactivate_rows(GPIO* _gpio) {
	_gpio->odrHigh = 0x00;
}

unsigned char read_col(GPIO* _gpio) {
	if(_gpio->idrHigh & 0x01) return 0;
	if(_gpio->idrHigh & 0x02) return 1;
	if(_gpio->idrHigh & 0x04) return 2;
	if(_gpio->idrHigh & 0x08) return 3;
	return 0xFF;
}

void setup_for_ascii_display() {
	// Sätt alla pinnar till utportar.
	GPIO_E->moder = 0x55555555;

	// Sätt utportar till "push/pull".
	//GPIO_E->otyper = 0x00000000;

	// Sätt utportars hastighet till medium.
	GPIO_E->ospeedr = 0x55555555;

	// Sätt utportart hastighet till low.
	//GPIO_E->ospeedr = 0x00000000;

	// inportar är "pull-up"
	//GPIO_E->pupdr = 0x55550000;

	ascii_init();
}

void ascii_init(void) {
	while((ascii_read_status() & 0x80) == 0x80)
	{} // vänta tills display är klar att ta emot komando.
	delay_mikro(20);
	// Function Set - 2 rader, 5x8 punkters tecken.
	ascii_write_cmd(0x38);
	delay_mikro(39);


	while((ascii_read_status() & 0x80) == 0x80)
	{} // vänta tills display är klar att ta emot komando.
	delay_mikro(20);
	// Tänd display, tänd markör ("cursor"), konstant visning.
	ascii_write_cmd(0x0E);
	delay_mikro(39);

	while((ascii_read_status() & 0x80) == 0x80)
	{} // vänta tills display är klar att ta emot komando.
	delay_mikro(20);
	// Clear display.
	ascii_write_cmd(0x01);
	delay_mikro(39);

	while((ascii_read_status() & 0x80) == 0x80)
	{} // vänta tills display är klar att ta emot komando.
	delay_mikro(20);
	// Adressering med "increment", inget skift av adressbuffern.
	ascii_write_cmd(0x04);
	delay_mikro(39);
}

void ascii_ctrl_bit_set(unsigned char x) {
	//GPIO_E->odrLow |= x;

	unsigned char c;
	c = GPIO_E->odrLow;
	c |= (B_SELECT | x);
	GPIO_E->odrLow = c;
}

void ascii_ctrl_bit_clear(unsigned char x) {
	//GPIO_E->odrLow &= (~x);

	unsigned char c;
	c = GPIO_E->odrLow;
	c = (B_SELECT | c & ~x);
	GPIO_E->odrLow = c;
}

void ascii_write_cmd(unsigned char command) {
	// Doesn't wait or check for the status flag...
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(command);
}

void ascii_write_data(unsigned char data) {
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(data);
}

unsigned char ascii_read_status(void) {
	unsigned char read_value;

	// Sätt pinnar 15-8 till ingångar.
	GPIO_E->moder &= 0x0000FFFF;

	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_set(B_RW);
	read_value = ascii_read_controller();

	// Sätt pinnar 15-8 till utgångar igen.
	GPIO_E->moder |= 0x55550000;

	return read_value;
}

unsigned char ascii_read_data(void) {
	unsigned char read_value;

	// Sätt pinnar 15-8 till ingångar.
	GPIO_E->moder &= 0x0000FFFF;

	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_set(B_RW);
	read_value = ascii_read_controller();

	// Sätt pinnar 15-8 till utgångar igen.
	GPIO_E->moder |= 0xFFFF0000;

	return read_value;
}

void ascii_write_controller(unsigned char byte) {
	// Delay40ns is redundant
	ascii_ctrl_bit_set(B_E);
	GPIO_E->odrHigh = byte;
	delay_250ns();
	ascii_ctrl_bit_clear(B_E);
	// Delay10ns is redundant
}

unsigned char ascii_read_controller(void) {
	unsigned char read_value;
	ascii_ctrl_bit_set(B_E);
	delay_250ns();
	delay_250ns();
	read_value = GPIO_E->idrHigh;
	ascii_ctrl_bit_clear(B_E);
	return read_value;
}

void ascii_gotoxy(int x, int y) {
	if(!(y == 1 || y == 2)) return;
	unsigned char address = x - 1;
	if(y == 2){
		address += 0x40;
	}
	ascii_write_cmd(0x80 | address);
}

void ascii_write_char(unsigned char c) {
	while((ascii_read_status() & 0x80) == 0x80)
	{} // vänta tills display är klar att ta emot komando.
	delay_mikro(8);
	ascii_write_data(c);
	delay_mikro(43);
	//delay_mikro(100000);
}

void graphic_ctrl_bit_set(uint8_t x) {
	uint8_t c;
	c = GPIO_E->odrLow;
	c &= ~B_SELECT;
	c |= (~B_SELECT & x);
	GPIO_E->odrLow = c;
}

void graphic_ctrl_bit_clear(uint8_t x) {
	uint8_t c;
	c = GPIO_E->odrLow;
	c &= ~B_SELECT;
	c &= ~x;
	GPIO_E->odrLow = c;
}

void select_controller(uint8_t controller) {
	switch(controller){
		case 0:
			graphic_ctrl_bit_clear(B_CS1|B_CS2);
			break;
		case B_CS1 :
			graphic_ctrl_bit_set(B_CS1);
			graphic_ctrl_bit_clear(B_CS2);
			break;
		case B_CS2 :
			graphic_ctrl_bit_set(B_CS2);
			graphic_ctrl_bit_clear(B_CS1);
			break;
		case B_CS1|B_CS2 :
			graphic_ctrl_bit_set(B_CS1|B_CS2);
			break;
	}
}

void graphic_initialize(void) {
	graphic_ctrl_bit_set(B_E);
	delay_mikro(10);
	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
	delay_mikro(30);
	graphic_ctrl_bit_set(B_RST);
	delay_mikro(100);
	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
	graphic_write_command(LCD_ON, B_CS1|B_CS2);
	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
	select_controller(0);
}

void graphic_wait_ready(void) {
	uint8_t c;
	graphic_ctrl_bit_clear(B_E);
	GPIO_E->moder = 0x00005555; // 15-8 inputs, 7-0 outputs
	graphic_ctrl_bit_clear(B_RS);
	graphic_ctrl_bit_set(B_RW);
	delay_500ns();
	while(1) {
		graphic_ctrl_bit_set(B_E);
		delay_500ns();
		c = GPIO_E->idrHigh & LCD_BUSY;
		graphic_ctrl_bit_clear(B_E);
		delay_500ns();
		if( c == 0 ) break;
	}
	GPIO_E->moder = 0x55555555; // 15-0 outputs
}

uint8_t graphic_read(uint8_t controller) {
	graphic_ctrl_bit_clear(B_E);
	GPIO_E->moder = 0x00005555;
	graphic_ctrl_bit_set(B_RW);
	graphic_ctrl_bit_set(B_RS);
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	uint8_t rv = GPIO_E->idrHigh;
	graphic_ctrl_bit_clear(B_E);
	GPIO_E->moder = 0x55555555;
	if(controller == B_CS1) {
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if(controller == B_CS2){
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	// graphic_read = RV (what???)
	return rv;
}

void graphic_write(uint8_t value, uint8_t controller) {
	GPIO_E->odrHigh = value;
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	graphic_ctrl_bit_clear(B_E);
	if(controller & B_CS1) {
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if(controller & B_CS2) {
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	GPIO_E->odrHigh = 0;
	graphic_ctrl_bit_set(B_E);
	select_controller(0);
}

void graphic_write_command(uint8_t commandToWrite, uint8_t controller) {
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_clear(B_RS | B_RW);
	graphic_write(commandToWrite, controller);
}

void graphic_write_data(uint8_t data, uint8_t controller) {
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_set(B_RS);
	graphic_ctrl_bit_clear(B_RW);
	graphic_write(data, controller);
}

uint8_t graphic_read_data(unsigned char controller) {
	(void) graphic_read(controller);
	return graphic_read(controller);
}

void graphic_clear_screen(void) {
	uint8_t page, add;
	for(page = 0; page < 8; page++){
		graphic_write_command(LCD_SET_PAGE	| page, B_CS1|B_CS2);
		graphic_write_command(LCD_SET_ADD	| 0, 	B_CS1|B_CS2);
		for(add = 0; add < 64; add++){
			graphic_write_data(0,B_CS1|B_CS2);
		}
	}
}

void setup_for_graphic_display(void){
	GPIO_E->moder = 0x55555555;
	GPIO_E->ospeedr = 0x55555555;
}

void pixel(unsigned char x, unsigned char y, unsigned char set) {
	// Kontrollera att x och y är i tillåtna intervall. 
	if(x > 128 || x < 1 || y > 64 || y < 1) return;
	if(set != 0 && set != 1) return;
	
	uint8_t index = (y - 1) / 8;
	uint8_t mask;
	mask = 1 << ( (y - 1) % 8);
	if(set == 0){
		mask = ~mask; // biten ska nollställas
	}
	
	uint8_t controller;
	
	// Bestäm fysiska koordinater och välj styrkrets
	if(x > 64){
		controller = B_CS2;
		x = x - 65;
	}else{
		controller = B_CS1;
		x = x - 1;
	}
	graphic_write_command(LCD_SET_ADD | x, controller);
	graphic_write_command(LCD_SET_PAGE | index, controller);
	uint8_t temp = graphic_read_data(controller);
	graphic_write_command(LCD_SET_ADD | x, controller);
	
	if(set == 1){
		mask = mask | temp;
	}else{
		mask = mask & temp;
	}
	graphic_write_data(mask, controller);	
}