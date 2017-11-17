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

#define GPIO_D 0x40020C00
#define GPIO_MODER *((volatile unsigned int*)GPIO_D)
#define PORT_D *((volatile unsigned short*)(GPIO_D+0x14))

#define COUNT_VAL ((unsigned int)(42))
#define MILLI_TO_MIKRO 1

void app_init(void);
void delay_250ns(void);
void delay_mikro(unsigned int);
void delay_milli(unsigned int);

void main(void){
    app_init();
    while(1){
        PORT_D &= 0xFFFFFF00; // Set port D pin 0-7 as low
        delay_milli(500);
        PORT_D |= 0xFF; // Set port D pin 0-7 as high
        delay_milli(500);
    }
}

void app_init(void){
    GPIO_MODER &= 0xFFFF0000;
    GPIO_MODER |= 0x00005555;
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

