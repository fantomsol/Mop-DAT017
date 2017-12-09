#include "asciidisplay.h"

void asciidisplay_init(void){    
    // Port E -> output
    GPIO_E.moder = 0x55555555;
    
    ascii_ctrl_bit_clear(B_E);
    
    // ***DISPLAY INIT***    
    // 2 rows, characters are 5x8 dots
    ascii_command(0x38, 39, 1);
    // Turn on display, turn on cursor, cursor not blinking
    ascii_command(0xE, 39, 1);
    // Clear display
    ascii_command(0x1, 2, 0);
    // Increment mode, no shift
    ascii_command(0x6, 39, 1);
}

void ascii_ctrl_bit_set(unsigned char x){
    // Set bits that are 1 in x to 1, leave rest be
    unsigned char port_val = GPIO_E.odrLow;
    port_val |= x;
    GPIO_E.odrLow = (port_val | B_SELECT);
}

void ascii_ctrl_bit_clear(unsigned char x){
    // Set any bits that are 0 in x to 0, leave rest as they were
    unsigned char port_val = GPIO_E.odrLow;
    port_val &= (~x);
    GPIO_E.odrLow = (port_val | B_SELECT);
    //delay_250ns();
}

void ascii_write_cmd(unsigned char command){
    // Prepare display for sending command
    ascii_ctrl_bit_clear(B_RS);
    ascii_ctrl_bit_clear( B_RW);
    
    // Write command
    ascii_write_controller(command);
}

void ascii_write_data(unsigned char data){
    // Prepare display for writing data
    ascii_ctrl_bit_set(B_RS);
    ascii_ctrl_bit_clear(B_RW);
    
    // Write data
    ascii_write_controller(data);
}

unsigned char ascii_read_data(void){
    unsigned char return_value;
    // Port E 8-15 -> input
    GPIO_E.moder &= 0x0000FFFF;
    
    // Prepare display for reading data
    ascii_ctrl_bit_set(B_RW);
    ascii_ctrl_bit_set(B_RS);
    
    return_value = ascii_read_controller();
    
    // Port E 8-15 -> output
    GPIO_E.moder |= 0x55550000;
    
    return return_value;
}

unsigned char ascii_read_status(void){
    unsigned char return_value;
    // Port E 8-15 -> input
    GPIO_E.moder &= 0x0000FFFF;
    
    // Prepare display for reading status and address
    ascii_ctrl_bit_clear(B_RS);
    ascii_ctrl_bit_set(B_RW);
    
    // Read values from display
    return_value = ascii_read_controller();
    
    // Port E 8-15 -> output
    GPIO_E.moder |= 0x55550000;
    
    return return_value;
}

void ascii_write_controller(unsigned char byte){
    // Set enable flag to 1
    ascii_ctrl_bit_set(B_E);
    
    // Set data register values
    GPIO_E.odrHigh = byte;
    
    // Wait for 230ns (here at least 250, hope this should still work)
    delay_250ns();
    
    // Set enable flag to 0
    ascii_ctrl_bit_clear(B_E);
}

unsigned char ascii_read_controller(void){
    unsigned char return_value;
    
    // Set enable flag to 1
    ascii_ctrl_bit_set(B_E);
    
    // Wait for at least 360ns, here at least 500
    delay_500ns();
    
    // Read data register
    return_value = GPIO_E.idrHigh;
    
    // Set enable flag to 0
    ascii_ctrl_bit_clear(B_E);
    
    return return_value;
}

void ascii_command(unsigned char command, unsigned int post_command_delay, unsigned short us){    
    // Wait until MSB in data register is 0, which means that the display ready to receive a command in 8us
    while((ascii_read_status() & 0x80) != 0);
    delay_mikro(8);
    
    // Send command
    ascii_write_cmd(command);
    
    // Wait for the entered amount of time
    if(us == 1){
        delay_mikro(post_command_delay);
    } else {
        delay_milli(post_command_delay);
    }
}

void ascii_write_char(unsigned char character){
    // Prepare to check if display ready
    ascii_ctrl_bit_set(B_RW);
    ascii_ctrl_bit_clear(B_RS);
    
    // Wait until MSB in data register is 0, which means that the display ready to receive a command in 8us
    while((ascii_read_status() & 0x80) != 0);
    delay_mikro(8);
    
    // Write character do display
    ascii_write_data(character);
    
    // Delay for 43us
    delay_mikro(43);
}

void gotoxy(unsigned int row, unsigned int column){
    // Make sure row not out of bounds
    if(row < 1 || row > 20){
        return;
    }
    // Make sure column not out of bounds
    if(column < 1 || column > 2){
        return;
    }
    
    // Set address to the correct location
    unsigned char address = row - 1;
    if(column == 2){
        address += 0x40;
    }
    
    // Send command to mark correct spot
    ascii_command(0x80 | address, 39, 1);
}

void ascii_write_string(char *s){
    // Write each character onto the display until the finishing character is reached
    while(*s != 0){
        ascii_write_char(*s++);
    }
}

