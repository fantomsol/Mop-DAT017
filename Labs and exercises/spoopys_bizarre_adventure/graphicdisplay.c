#include "graphicdisplay.h"

void graphic_ctrl_bit_set(uint8_t x){
    uint8_t control_register = GPIO_E.odrLow;
    control_register |= x;
	control_register &= ~B_SELECT;
    GPIO_E.odrLow = control_register;
}

void graphic_ctrl_bit_clear(uint8_t x){
    uint8_t control_register = GPIO_E.odrLow;
    control_register &= (~x);
    control_register &= ~B_SELECT;
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
    uint8_t display_busy_status;
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
		display_busy_status = GPIO_E.idrHigh;
        graphic_ctrl_bit_clear(B_E);
        delay_500ns();
        // Exit loop if not busy
        
		display_busy_status &= LCD_BUSY;
        if(display_busy_status == 0){
            break;
        } 
    }
    
    // Enable = 1
    graphic_ctrl_bit_set(B_E); // Commented out to check if this works because it works for NaN
    // E: 15-0 = output
    GPIO_E.moder = 0x55555555;
}

uint8_t graphic_read(uint8_t controller){
	//Set enable to 0
	graphic_ctrl_bit_clear(B_E);
	
	//set E to input high byte / output low byte
	GPIO_E.moder = 0x00005555;
	
	graphic_ctrl_bit_set(B_RS | B_RW);
	
	select_controller(controller);
	delay_500ns();
	
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	
	// set return value to what is on the data register
	uint8_t RV = GPIO_E.idrHigh;
	
	graphic_ctrl_bit_clear(B_E);
	
	//set E to output
	GPIO_E.moder = 0x55555555;
	
	if((controller & B_CS1) != 0) {
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if((controller & B_CS2) != 0){
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	
	/*switch (controller) {
		case B_CS1: select_controller(B_CS1); break;
		case B_CS2: select_controller(B_CS2); break;
		//case B_CS1 | B_CS2: select_controller(B_CS1 | B_CS2); break;
		//default: select_controller(0);
	}*/
	//graphic_wait_ready();
	
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
	graphic_ctrl_bit_clear(B_RS | B_RW);
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
	(void) graphic_read(controller);
	return graphic_read(controller);
}

void graphic_initialize(void){
	graphic_ctrl_bit_set(B_E);
	
	delay_mikro(10);
	
	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RST | B_E);
	
	delay_milli(30);
	graphic_ctrl_bit_set(B_RST);
	
	delay_milli(100); // Added because NaN has it
	
	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
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

void pixel(uint8_t x, uint8_t y, uint8_t set){
    // Validate values for input variables
    if(x < 1 || x > 128){
        return;
    }
    if(y < 1 || y > 64){
        return;
    }
    if(set != 1 && set != 0){
        return;
    }
    
    uint8_t index = (y-1)/8;
    // Create mask for y, works as well as switch from book, but with less code
    uint8_t mask = 1;
    mask = mask << ((y-1)%8);
	/*switch((y-1)%8){
		case 0: mask = 1; break;
		case 1: mask = 2; break;
		case 2: mask = 4; break;
		case 3: mask = 8; break;
		case 4: mask = 0x10; break;
		case 5: mask = 0x20; break;
		case 6: mask = 0x40; break;
		case 7: mask = 0x80; break;
	}*/
    
    // Invert mask if the bit is going to get cleared
    if(set == 0){
        mask = ~mask;
    }
    
    uint8_t x_actual;
    uint8_t controller;
    // Select applicable chip (screen half), and store the actual value of x
    if(x > 64){
        controller = B_CS2;
        x_actual = x - 65;
    } else {
        controller = B_CS1;
        x_actual = x - 1;
    }
    
    graphic_write_command(LCD_SET_ADD | x_actual, controller);
    graphic_write_command(LCD_SET_PAGE | index, controller);
    uint8_t temp = graphic_read_data(controller);
    graphic_write_command(LCD_SET_ADD | x_actual, controller);
    if(set == 1){
        mask |= temp;
    } else {
        mask &= temp;
    }
    graphic_write_data(mask, controller);
	delay_500ns();
}

void draw_object(POBJECT object){
	for(int i = 0; i < object->geo->numpoints; i++){
		pixel(object->geo->px[i].x + object->pos_x, object->geo->px[i].y + object->pos_y, 1);
	}
}

void clear_object(POBJECT object){
	for(int i = 0; i < object->geo->numpoints; i++){
		pixel(object->geo->px[i].x + object->pos_x, object->geo->px[i].y + object->pos_y, 0);
	}
}

void move_object(POBJECT object){
	clear_object(object);
	object->pos_x += object->dir_x;
	object->pos_y += object->dir_y;
	
	//bounce if object reaches edges of screen
	if (object->pos_x < 1 || (object->pos_x + object->geo->size_x) > 128){
		object->dir_x = -object->dir_x;
	}
	if (object->pos_y < 1 || (object->pos_y + object->geo->size_y) > 64){
		object->dir_y = -object->dir_y;
	}
	
	draw_object(object);
}

void set_object_speed(POBJECT object, int x, int y){
	object->dir_x = x;
	object->dir_y = y;
}

void graphicdisplay_init(void){
	//port E is output
	GPIO_E.moder = 0x55555555;
	GPIO_E.ospeedr = 0x55555555;
}