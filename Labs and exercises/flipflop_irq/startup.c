#if 1
/*
 * 	startup.c
 *
 */
#include "gpio.h"
#include "syscfg.h"
#include "exti.h"

#define SYSCFG_EXTICR1 *((volatile unsigned short*)0x40013808)
#define EXTI_IMR *((volatile unsigned int*)0x40013C00)
#define EXTI_RTSR *((volatile unsigned int*)0x40013C08)
#define EXTI_FTSR *((volatile unsigned int*)0x40013C0C)
#define EXTI_PR *((volatile unsigned int *)0x40013C14)
#define NVIC *((volatile unsigned int *) 0xE000E100)

#define EXTI_3_BPOS 0x8

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

void main(void){
    app_init();
    while(1){
        GPIO_D.odrLow = counter;
    }
}

void app_init(void){
    /*
    // Set up GPIO
    GPIO_E.moder &= 0xFFFF0000;
    GPIO_E.moder |= 0x00001500;
    GPIO_D.moder &= 0xFFFF0000;
    GPIO_D.moder |= 0x00005555;
    
    // Reset EXTI3, then connect port E to EXTI3, that means PE3 becomes an interrupt pin
    SYSCFG_EXTICR1 &= 0x0FFF;
    SYSCFG_EXTICR1 |= 0x4000;
    
    // Configure EXTI3 for interruptions on negative flank
    EXTI_IMR |= EXTI_3_BPOS;
    EXTI_FTSR |= EXTI_3_BPOS;
    EXTI_RTSR &= ~EXTI_3_BPOS;
    
    // Set up interrupt vector
    *((void (**) (void))0x2001C064) = interrupt_handler;
    
    // Enable interrupt
    NVIC |= (1<<9);
    */
    
	GPIO_D.moder = 0x55555555;
	GPIO_E.moder = 0x1500;
	SYSCFG_EXTICR1 &= 0x0FFF;
	SYSCFG_EXTICR1 |= 0x4000;
	EXTI_IMR |= EXTI_3_BPOS;
	EXTI_FTSR |= EXTI_3_BPOS;
	EXTI_RTSR &= ~EXTI_3_BPOS;
	*((void (**) (void) ) 0x2001C064) = interrupt_handler;
	NVIC |= (1<<9);
}

void interrupt_handler(void){
    if (EXTI_PR & EXTI_3_BPOS){
        counter++;
        EXTI_PR |= EXTI_3_BPOS; // ??? dafuq???
    }
}
#endif // Vår kod


#if 0 //Runviks och Frodos kod
/*
 * 	startup.c
 *
 */
 
#define EXTI_PR ((volatile unsigned int *)0x40013C14)
#define EXTI3_BPOS 0x8

#define IRQ0 0x1
#define IRQ1 0x2
#define IRQ2 0x4
#define IRQ0in 0x10
#define IRQ1in 0x20
#define IRQ2in 0x40

#define SYSCFG_EXTICR ((volatile unsigned int * ) 0x40013808)
#define EXTI_IMR ((volatile unsigned int *) 0x40013C00)
#define EXTI_RTSR ((volatile unsigned int * ) 0x40013C08)
#define EXTI_FTSR ((volatile unsigned int * ) 0x40013C0C)
#define NVIC ((volatile unsigned int *) 0xE000E100)
 
#define PORT_D ((volatile unsigned int *)0x40020C00)
#define outportLow ((volatile unsigned char *) 0x40020C14)
#define outportHigh ((volatile unsigned char *) 0x40020C15)
 
#define PORT_E ((volatile unsigned int *)0x40021000)
#define EinportLow ((volatile unsigned int * ) 0x40021010)
#define EoutportLow ((volatile unsigned int *) 0x40021014)


void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void ){
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
    " MOV SP,R0\n"
    " BL main\n"				/* call main */
    "_exit: B .\n"				/* never return */
);
}

static volatile int count = 0;

void irq_handler(void){	
	if (*EXTI_PR & EXTI3_BPOS){
		/*Uppgift 6.5

		if (*EinportLow & IRQ0){

			count++;

			*EoutportLow |= IRQ0in;

			*EoutportLow &= ~IRQ0in;

		}

		if (*EinportLow & IRQ1){
			count =0;

			*EoutportLow |= IRQ1in;

			*EoutportLow &= ~IRQ1in;

		}

		if (*EinportLow & IRQ2){

			
*EoutportLow |= IRQ2in;

			*EoutportLow &= ~IRQ2in;

			if (*outportHigh == 0xFF){

				*outportHigh = 0;

			}
else{

				*outportHigh = 0xFF;

			}

		}

		*EXTI_PR |= EXTI3_BPOS;*/
		
		/*Uppgift 6.4*/
		count++;
		*EXTI_PR |= EXTI3_BPOS;
	}
}

void app_init(void){
	*PORT_D = 0x55555555;
	*PORT_E = 0x1500;
	*SYSCFG_EXTICR &= 0x0FFF;
	*SYSCFG_EXTICR |= 0x4000;
	*EXTI_IMR |= EXTI3_BPOS;
	*EXTI_FTSR |= EXTI3_BPOS;
	*EXTI_RTSR &= ~EXTI3_BPOS;
	*((void (**) (void) ) 0x2001C064) = irq_handler;
	*NVIC |= (1<<9);
}

void main(void){
	app_init();
	while(1){
		*outportLow = count;
	}
}
#endif // Runvik + Frodo