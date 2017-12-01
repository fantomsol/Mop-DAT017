/*
 * 	startup.c
 *
 */
#define GPIO_D 0x40020C00

#define GPIO_MODER *((volatile unsigned int*) GPIO_D)
#define GPIO_OTYPER *((volatile unsigned short*) (GPIO_D + 0x4))
#define GPIO_PUPDR *((volatile unsigned int*) (GPIO_D + 0xC))

#define GPIO_IDR_HIGH *((volatile unsigned char*) (GPIO_D + 0x11))
#define GPIO_ODR_LOW *((volatile unsigned char*) (GPIO_D + 0x14))
#define GPIO_ODR_HIGH *((volatile unsigned char*) (GPIO_D + 0x15))


void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	);
}

void app_init (void) {
	GPIO_MODER = 0x55005555;
	GPIO_OTYPER &= 0x00FF;
	GPIO_OTYPER |= 0x0000;
	GPIO_PUPDR &= 0x0000FFFF;
	GPIO_PUPDR |= 0x00AA0000;
	GPIO_ODR_HIGH &= 0x00FF;
}


unsigned char key[4][4] = {
	{1, 2, 3, 0xA},
	{4, 5, 6, 0xB},
	{7, 8, 9, 0xC},
	{0xE, 0, 0xF, 0xD}
};

unsigned char decode7segArray[] = {0x3F, 0x6, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x58, 0x5E, 0x79, 0x71};

unsigned char decode7segMatrix[4][4] = {
{0x6, 0x5B, 0x4F, 0x77}, //1, 2, 3, A
{0x66, 0x6D, 0x7D, 0x7C}, //4, 5, 6, B
{0x07, 0x7F, 0x6F, 0x58}, //7, 8, 9, C
{0x79, 0x3F, 0x71, 0x5E} //E, 0, F, D
};

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
		case 0: GPIO_ODR_HIGH = 0x0; break; //0 to reset
		case 1: GPIO_ODR_HIGH = 0x10; break;
		case 2: GPIO_ODR_HIGH = 0x20; break;
		case 3: GPIO_ODR_HIGH = 0x40; break;
		case 4: GPIO_ODR_HIGH = 0x80; break;
	}
}

int ReadColumn(void) {
	// Returns column number of pressed key, observe that the columns of the keyboard are read from right to left!
	unsigned char c;
	c = GPIO_IDR_HIGH;
	if (c & 0x8){return 4;}
	if (c & 0x4){return 3;}
	if (c & 0x2){return 2;}
	if (c & 0x1){return 1;}
	return 0;
}

void out7seg(unsigned char c) {
	if (c > 0xF) {
		GPIO_ODR_LOW = 0;
	} else {
	GPIO_ODR_LOW = decode7segArray[c];
	//GPIO_ODR_LOW = c;
	}
}

void main(void) {
	app_init();
	while(1) {
	out7seg(keyb());
	}
}

