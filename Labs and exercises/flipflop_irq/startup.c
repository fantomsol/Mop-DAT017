/*
 * 	startup.c
 *
 */
#include "gpio.h"
#include "syscfg.h"
#include "exti.h"

#define EXTI_3_BPOS 0x8
#define NVIC *((volatile unsigned int *) 0xE000E100)

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
void init_app(void);
void interrupt_handler(void);

static volatile int counter = 0;

void startup ( void ){
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}


void interrupt_handler(void){
    if (EXTI.pr & EXTI_3_BPOS){
        counter++;
        EXTI.pr |= EXTI_3_BPOS; //denna bit nollställs då den ettställs. makes perfect sense.
    }
}

void app_init(void){
    // Set up GPIO
    GPIO_E.moder &= 0xFFFF0000;
    GPIO_E.moder |= 0x00001500;
    GPIO_D.moder &= 0xFFFF0000;
    GPIO_D.moder |= 0x00005555;
    
    // Reset EXTI3, then connect port E to EXTI3, that means PE3 becomes an interrupt pin
    
	
	
	//fungerar
	SYSCFG.exticr &= 0x0FFF;
	SYSCFG.exticr |= 0x4000;
	
	//fungerar också
	//SYSCFG.exticr1 &= 0x0FFF;
	//SYSCFG.exticr1 |= 0x4000;



    // Configure EXTI3 for interruptions on negative flank
    EXTI.imr |= EXTI_3_BPOS;
	EXTI.ftsr |= EXTI_3_BPOS;
	EXTI.rtsr &= ~EXTI_3_BPOS;
	
    // Set up interrupt vector
    *((void (**) (void))0x2001C064) = interrupt_handler;
    
    // Enable interrupt
    NVIC |= (1<<9);
}

void main(void){
    app_init();
    while(1){
        GPIO_D.odrLow = counter;
		int y = 0;
    }
}