   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"startup.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay/startup.c"
   1:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** /*
   2:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  * 	graphicdisplay
   3:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  *
   4:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  */
   5:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  #include "delay.h"
   6:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  #include "gpio.h"
   7:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  #include "graphicdisplay.h"
   8:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  
   9:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  10:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 
  11:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** void startup ( void ){
  26              		.loc 1 11 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  12:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** __asm volatile(
  31              		.loc 1 12 0
  32              		.syntax divided
  33              	@ 12 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  13:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  14:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	" MOV SP,R0\n"
  15:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	" BL main\n"				/* call main */
  16:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	"_exit: B .\n"				/* never return */
  17:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	) ;
  18:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** }
  40              		.loc 1 18 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	main
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	main:
  56              	.LFB1:
  19:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 
  20:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** void main(void){
  57              		.loc 1 20 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  21:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	init_app();
  67              		.loc 1 21 0
  68 0004 FFF7FEFF 		bl	init_app
  22:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_initialize();
  69              		.loc 1 22 0
  70 0008 FFF7FEFF 		bl	graphic_initialize
  23:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #ifndef SIMULATOR
  24:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_clear_screen();
  71              		.loc 1 24 0
  72 000c FFF7FEFF 		bl	graphic_clear_screen
  25:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #endif //for simulator
  26:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	
  27:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command (LCD_SET_ADD | 10, B_CS1 | B_CS2);
  73              		.loc 1 27 0
  74 0010 1821     		movs	r1, #24
  75 0012 4A20     		movs	r0, #74
  76 0014 FFF7FEFF 		bl	graphic_write_command
  28:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command (LCD_SET_PAGE | 1, B_CS1 | B_CS2);
  77              		.loc 1 28 0
  78 0018 1821     		movs	r1, #24
  79 001a B920     		movs	r0, #185
  80 001c FFF7FEFF 		bl	graphic_write_command
  29:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_data (0xFF, B_CS1 | B_CS2);
  81              		.loc 1 29 0
  82 0020 1821     		movs	r1, #24
  83 0022 FF20     		movs	r0, #255
  84 0024 FFF7FEFF 		bl	graphic_write_data
  30:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** }
  85              		.loc 1 30 0
  86 0028 C046     		nop
  87 002a BD46     		mov	sp, r7
  88              		@ sp needed
  89 002c 80BD     		pop	{r7, pc}
  90              		.cfi_endproc
  91              	.LFE1:
  93              	.Letext0:
