#include "graphicdisplay.h"

void graphic_ctrl_bit_set(uint8_t x){
    uint8_t control_register = GPIO_E.odrLow;
    control_register |= (x | B_SELECT);
    GPIO_E.odrLow = control_register;
}

void graphic_ctrl_bit_clear(uint8_t x){
    uint8_t control_register = GPIO_E.odrLow;
    control_register &= ~x;
    control_register |= B_SELECT;
    GPIO_E.odrLow = control_register;
}

void select_controller(uint8_t controller){
    switch(controller){
        case 0: 
            graphic_ctrl_bit_clear(B_CS1 | B_CS2);
            break;
        case B_CS1: 
            graphic_ctrl_bit_clear(B_CS2);
            graphic_ctrl_bit_set(B_CS1);
            break;
        case B_CS2:
            graphic_ctrl_bit_clear(B_CS1);
            graphic_ctrl_bit_set(B_CS2);
            break;
        case B_CS1 | B_CS2:
            graphic_ctrl_bit_set(B_CS1 | B_CS2);
            break;
    }
}

void graphic_wait_ready(void){
    // Enable = 0
    graphic_ctrl_bit_clear(B_E);
    // E: 15-8 = input, 7-0 = output
    GPIO_E.moder = 0x00005555;
    
    // RS = 0, RW = 1
    graphic_ctrl_bit_clear(B_RS);
    graphic_ctrl_bit_set(B_RW);
    delay_500ns();
    
    while(1){
        // Enable = 1
        graphic_ctrl_bit_set(B_E);
        delay_500ns();
        // Enable = 0
        graphic_ctrl_bit_clear(B_E);
        delay_500ns();
        // Exit loop if not busy
        if((GPIO_E.idrHigh & 0x0) != 0){
            break;
        } 
    }
    
    // Enable = 1
    graphic_ctrl_bit_set(B_E);
    // E: 15-0 = output
    GPIO_E.moder = 0x55555555;
}

uint8_t graphic_read(uint8_t controller){
	//Set enable to 0
	graphic_ctrl_bit_clear(B_E);
	
	//set E to input high byte / output low byte
	GPIO_E.moder = 0x00005555;
	
	graphic_ctrl_bit_set(B_RS);
	graphic_ctrl_bit_set(B_RW);
	
	select_controller(controller);
	delay_500ns();
	
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	
	// set return value to what is on the data register
	uint8_t RV = GPIO_E.idrHigh;
	
	graphic_ctrl_bit_clear(B_E);
	
	//set E to output
	GPIO_E.moder = 0x55555555;
	
	switch (controller) {
		case B_CS1: select_controller(B_CS1); break;
		case B_CS2: select_controller(B_CS2); break;
		case B_CS1 | B_CS2: select_controller(B_CS1 | B_CS2); break;
		default: select_controller(0);
	}
	graphic_wait_ready();
	
	return RV;
}

void graphic_write(uint8_t value, uint8_t controller){
	//datareg to value
	GPIO_E.odrHigh = value;
	select_controller(controller);
	delay_500ns();
	
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	graphic_ctrl_bit_clear(B_E);
	
	//select actual controller, wait while we read
	if (controller & B_CS1){
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if (controller & B_CS2){
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	
	//datareg to 0
	GPIO_E.odrHigh = 0;
	graphic_ctrl_bit_set(B_E);
	
	//set controller to 0
	select_controller(0);
}

void graphic_write_command(uint8_t command, uint8_t controller){
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_clear(B_RS);
	graphic_ctrl_bit_clear(B_RW);
	graphic_write(command, controller);
}

void graphic_write_data(uint8_t data, uint8_t controller){
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_set(B_RS);
	graphic_ctrl_bit_clear(B_RW);
	graphic_write(data, controller);
}

uint8_t graphic_read_data(uint8_t controller){
	graphic_read(controller);
	return graphic_read(controller);
}

void init_app(void){
	//port E is output
	GPIO_E.moder = 0x55555555;
}

void graphic_initialize(void){
	graphic_ctrl_bit_set(B_E);
	
	delay_mikro(10);
	
	select_controller(0);
	graphic_ctrl_bit_clear(B_RST);
	graphic_ctrl_bit_clear(B_E);
	
	delay_milli(30);
	graphic_ctrl_bit_set(B_RST);
	
	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);
	
	select_controller(0);
}

void graphic_clear_screen(void){
	for(uint8_t page = 0; page < 8; page++){
		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
		graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
		
		for(uint8_t add = 0; add < 64; add++){
			graphic_write_data(0, B_CS1 | B_CS2);
		}
	}
}