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
        
        // Exit loop if not busy
        if((GPIO_E.idrHigh & 0x80) != 0){
            break;
        } 
    }
    
    // Enable = 1
    graphic_ctrl_bit_set(B_E);
    // E: 15-0 = output
    GPIO_E.moder = 0x55555555;
}

uint8_t graphic_read(uint8_t controller){
    
}
