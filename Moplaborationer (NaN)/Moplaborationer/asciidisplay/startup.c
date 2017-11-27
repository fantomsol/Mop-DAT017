#include "gpio.h"
#include "sys_delay.h"

/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

void init_app( void )
{
	setup_for_seg_disp(GPIO_D);
	setup_for_ascii_display();
}

int main(int argc, char **argv)
{
	char *s;
	char test1[] = "Alfanumerisk ";
	char test2[] = "Displej - test";
	
	init_app();
	ascii_gotoxy(1,1);
	s = test1;
	while(*s)
		ascii_write_char(*s++);
	
	ascii_gotoxy(1,2);
	s = test2;
	while(*s)
		ascii_write_char(*s++);
	return 0;
}

