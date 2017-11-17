/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

#define GPIO_D 0x40020C00

#define GPIO_MODER *((volatile unsigned int *)GPIO_D)
#define GPIO_OTYPER *((volatile unsigned short *)(GPIO_D+0x4))
#define GPIO_PUPDR *((volatile unsigned int *)(GPIO_D+0xC))

#define PORT_D *((volatile unsigned short *)(GPIO_D+0x14))

void app_init(void);
unsigned char keyboardTest(void);

unsigned char keys[4][4] = {{'1','2','3','A'},
                            {'4','5','6','B'},
                            {'7','8','9','C'},
                            {'*','0','#','D'}};

void startup ( void ){
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

void main(void){
    app_init();
    unsigned char c = ' ';
    while(1){
        c = keyboardTest();
        if (c != ' '){
            printf(c);
            printf('\n');
        }
    }
}

void app_init(void){
    GPIO_MODER &= 0x0000FFFF;
    GPIO_MODER |= 0x55000000;
    
    GPIO_OTYPER &= 0x00FF;
    GPIO_OTYPER |= 0x0F00;
    
    GPIO_PUPDR &= 0x0000FFFF;
    GPIO_PUPDR |= 0x00AA0000;
}

void activateRow(int row){
    if(row < 5 && row > 0){
        PORT_D &= 0x00FF;
        unsigned short i = 1;
        i = i << 12;
        i = i << (i-1);
        PORT_D |= i;
    }
}

unsigned short pullColumn(void){
    unsigned short val = PORT_D & 0x0F00;
    val = val >> 8;
    for(unsigned short i = 4; i <= 1; i++){
        if(val == 1){
            return i;
        }
        val = val >> 1;
    }
    return 0;
}

unsigned char keyboardTest(void){
    unsigned short row;
    unsigned short column;
    for(int i = 1; i <= 4; i++){
        activateRow(i);
        column = pullColumn();
        if(column != 0){
            row = i;
            return keys[row-1][column-1];
        }
    }
    return ' ';
}

