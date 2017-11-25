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
  25              		.file 1 "C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay/startup.c"
   1:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** #include "sys_delay.h"
   2:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** #include "gpio.h"
   3:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 
   4:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** /*
   5:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c ****  * 	startup.c
   6:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c ****  *
   7:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c ****  */
   8:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   9:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 
  10:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** void startup ( void )
  11:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** {
  26              		.loc 1 11 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  12:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** __asm volatile(
  31              		.loc 1 12 0
  32              		.syntax divided
  33              	@ 12 "C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  13:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  14:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	" MOV SP,R0\n"
  15:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	" BL main\n"				/* call main */
  16:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	"_exit: B .\n"				/* never return */
  17:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	) ;
  18:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** }
  40              		.loc 1 18 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	init_app
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	init_app:
  56              	.LFB1:
  19:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 
  20:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** void init_app(void) {
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
  21:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	setup_for_graphic_display();
  67              		.loc 1 21 0
  68 0004 FFF7FEFF 		bl	setup_for_graphic_display
  22:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** }
  69              		.loc 1 22 0
  70 0008 C046     		nop
  71 000a BD46     		mov	sp, r7
  72              		@ sp needed
  73 000c 80BD     		pop	{r7, pc}
  74              		.cfi_endproc
  75              	.LFE1:
  77              		.align	1
  78              		.global	main
  79              		.syntax unified
  80              		.code	16
  81              		.thumb_func
  82              		.fpu softvfp
  84              	main:
  85              	.LFB2:
  23:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 
  24:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** void main(void)
  25:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** {
  86              		.loc 1 25 0
  87              		.cfi_startproc
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 1, uses_anonymous_args = 0
  90 000e 80B5     		push	{r7, lr}
  91              		.cfi_def_cfa_offset 8
  92              		.cfi_offset 7, -8
  93              		.cfi_offset 14, -4
  94 0010 00AF     		add	r7, sp, #0
  95              		.cfi_def_cfa_register 7
  26:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	init_app();
  96              		.loc 1 26 0
  97 0012 FFF7FEFF 		bl	init_app
  27:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	graphic_initialize();
  98              		.loc 1 27 0
  99 0016 FFF7FEFF 		bl	graphic_initialize
  28:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** #ifndef SIMULATOR
  29:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	graphic_clear_screen();
  30:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** #endif
  31:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 
  32:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	/*unsigned char i;
  33:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	for (i = 0; i < 128; i++)
  34:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 		pixel(i, 10, 1);
  35:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	for (i = 0; i < 64; i++)
  36:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 		pixel(10, i, 1);
  37:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	delay_milli(30);
  38:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	for (i = 0; i < 128; i++)
  39:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 		pixel(i, 10, 0);
  40:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	for (i = 0; i < 64; i++)
  41:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 		pixel(10, i, 0);*/
  42:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 
  43:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	// Print left only
  44:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	//graphic_write_command(LCD_SET_ADD | 10, B_CS1/*|B_CS2*/);
  45:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	//graphic_write_command(LCD_SET_PAGE | 1, B_CS1/*|B_CS2*/);
  46:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	//graphic_write_data(0xFF, B_CS1/*|B_CS2*/);
  47:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	
  48:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	// Print right only
  49:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	//graphic_write_command(LCD_SET_ADD | 10, /*B_CS1|*/B_CS2);
  50:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	//graphic_write_command(LCD_SET_PAGE | 1, /*B_CS1|*/B_CS2);
  51:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	//graphic_write_data(0xFF, /*B_CS1|*/B_CS2);
  52:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	
  53:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	// Print both
  54:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	graphic_write_command(LCD_SET_ADD | 20, B_CS1|B_CS2);
 100              		.loc 1 54 0
 101 001a 1821     		movs	r1, #24
 102 001c 5420     		movs	r0, #84
 103 001e FFF7FEFF 		bl	graphic_write_command
  55:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	graphic_write_command(LCD_SET_PAGE | 1, B_CS1|B_CS2);
 104              		.loc 1 55 0
 105 0022 1821     		movs	r1, #24
 106 0024 B920     		movs	r0, #185
 107 0026 FFF7FEFF 		bl	graphic_write_command
  56:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** 	graphic_write_data(0xFF, B_CS1|B_CS2);
 108              		.loc 1 56 0
 109 002a 1821     		movs	r1, #24
 110 002c FF20     		movs	r0, #255
 111 002e FFF7FEFF 		bl	graphic_write_data
  57:C:/Users/Lumo/Documents/Moplaborationer/Moplaborationer/graphicdisplay\startup.c **** }
 112              		.loc 1 57 0
 113 0032 C046     		nop
 114 0034 BD46     		mov	sp, r7
 115              		@ sp needed
 116 0036 80BD     		pop	{r7, pc}
 117              		.cfi_endproc
 118              	.LFE2:
 120              	.Letext0:
