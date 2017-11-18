/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void ){
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

#define SYSTIK 0xE000E010

#define STK_CTRL *((volatile unsigned int*)SYSTIK)
#define STK_LOAD *((volatile unsigned int*)(SYSTIK+0x4))
#define STK_VAL *((volatile unsigned int*)(SYSTIK+0x8))

#define COUNT_VAL ((unsigned int)(42))
#define MILLI_TO_MIKRO 1000

#define PORT_E 0x40021000

#define portModer *((unsigned int*)PORT_E)
#define portOTyper *((unsigned int*)(PORT_E+0x4))
#define portOSpeedr *((unsigned int*)(PORT_E+0x8))
#define portPupdr *((unsigned int*)(PORT_E+0xC))

#define portIdrLow *((unsigned char*)(PORT_E+0x10))
#define portIdrHigh *((unsigned char*)(PORT_E+0x11))
#define portOdrLow *((unsigned char*)(PORT_E+0x14))
#define portOdrHigh *((unsigned char*)(PORT_E+0x15))

#define B_E (unsigned char)0x40
#define B_SELECT (unsigned char)0x4
#define B_RW (unsigned char)0x2
#define B_RS (unsigned char)0x1

void app_init(void);
void delay_250ns(void);
void delay_mikro(unsigned int);
void delay_milli(unsigned int);
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

void main(void){
    char *s;
    char test1[] = "Alfanumerisk ";
    char test2[] = "Display - test";
    
    app_init();
    //ascii_init();
    gotoxy(1, 1);
    s = test1;
    ascii_write_string(*s);
    gotoxy(1, 2);
    s = test2;
    ascii_write_string(*s);
}

void app_init(void){
    // Port E -> output
    portModer = 0x55555555;
    
    // ***DISPLAY INIT***
    // Clear display
    ascii_command(0x1, 2, 0);
    // Set address register to 0, reset cursor
    ascii_command(0x2, 2, 0);
    // 2 rows, characters are 5x8 dots
    ascii_command(0x38, 39, 1);
    // Turn on display, turn on cursor, cursor not blinking
    ascii_command(0xE, 39, 1);
    // Increment mode, no shift
    ascii_command(0x6, 39, 1);
}

void delay_250ns(void){
    STK_CTRL &= 0xFFFEFFF8;
    STK_LOAD &= 0xFF000000;
    STK_LOAD |= COUNT_VAL-1;
    STK_VAL = 0;
    STK_CTRL |= 0x5;
    
    while(STK_CTRL & 0x00010000 == 0);
    
    STK_CTRL &= 0xFFFEFFF8;
}

void delay_mikro(unsigned int us){
    for(int i=0; i < us*4; i++){
        delay_250ns();
    }
}

void delay_milli(unsigned int ms){
    delay_mikro(ms*MILLI_TO_MIKRO);
}

void ascii_ctrl_bit_set(unsigned char x){
    // Set bits that are 1 in x to 1, leave rest be
    portOdrLow |= x;
}

void ascii_ctrl_bit_clear(unsigned char x){
    // Set any bits that are 0 in x to 0, leave rest as they were
    portOdrLow &= x;
}

void ascii_write_cmd(unsigned char command){
    // Prepare display for sending command
    ascii_ctrl_bit_clear(B_RS | B_RW);
    
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
    portModer &= 0x0000FFFF;
    
    // Prepare display for reading data
    ascii_ctrl_bit_set(B_RS | B_RW);
    
    return_value = ascii_read_controller();
    
    // Port E 8-15 -> output
    portModer |= 0x55550000;
    
    return return_value;
}

unsigned char ascii_read_status(void){
    unsigned char return_value;
    // Port E 8-15 -> input
    portModer &= 0x0000FFFF;
    
    // Prepare display for reading status and address
    ascii_ctrl_bit_clear(B_RS);
    ascii_ctrl_bit_set(B_RW);
    
    // Read values from display
    return_value = ascii_read_controller();
    
    // Port E 8-15 -> output
    portModer |= 0x55550000;
    
    return return_value;
}

void ascii_write_controller(unsigned char byte){
    // Set enable flag to 1
    ascii_ctrl_bit_set(B_E);
    
    // Set data register values
    portOdrHigh = byte;
    
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
    delay_250ns();
    delay_250ns();
    
    // Read data register
    return_value = portIdrHigh;
    
    // Set enable flag to 0
    ascii_ctrl_bit_clear(B_E);
    
    return return_value;
}

void ascii_command(unsigned char command, unsigned int post_command_delay, unsigned short us){
    // Prepare to check if display ready
    ascii_ctrl_bit_set(B_RW);
    ascii_ctrl_bit_clear(B_RS);
    
    // Wait until MSB in data register is 0, which means that the display ready to receive a command in 8us
    while(ascii_read_status() & 0x80 != 0);
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
    while(ascii_read_status() & 0x80 != 0);
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

