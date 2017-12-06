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
  25              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/startup.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** /*
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  * 	startup.c
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  *
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  */
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "gpio.h"
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "syscfg.h"
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "exti.h"
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void app_init(void);
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void startup ( void ){
  26              		.loc 1 12 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** __asm volatile(
  31              		.loc 1 13 0
  32              		.syntax divided
  33              	@ 13 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	" MOV SP,R0\n"
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	" BL main\n"				/* call main */
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	"_exit: B .\n"				/* never return */
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	) ;
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
  40              		.loc 1 19 0
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
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void main(void){
  57              		.loc 1 21 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
  67              		.loc 1 22 0
  68 0004 C046     		nop
  69 0006 BD46     		mov	sp, r7
  70              		@ sp needed
  71 0008 80BD     		pop	{r7, pc}
  72              		.cfi_endproc
  73              	.LFE1:
  75              		.align	1
  76              		.global	app_init
  77              		.syntax unified
  78              		.code	16
  79              		.thumb_func
  80              		.fpu softvfp
  82              	app_init:
  83              	.LFB2:
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void app_init(void){
  84              		.loc 1 25 0
  85              		.cfi_startproc
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 1, uses_anonymous_args = 0
  88 000a 80B5     		push	{r7, lr}
  89              		.cfi_def_cfa_offset 8
  90              		.cfi_offset 7, -8
  91              		.cfi_offset 14, -4
  92 000c 00AF     		add	r7, sp, #0
  93              		.cfi_def_cfa_register 7
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #ifdef USBDM
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	*((unsigned long*) 0x40023830) = 0x18;
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	__asm volatile( 
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		" LDR R0, =0x08000209\n"
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		" BLX R0\n"
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		);
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #endif
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     asciidisplay_init();
  94              		.loc 1 34 0
  95 000e FFF7FEFF 		bl	asciidisplay_init
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphicdisplay_init();
  96              		.loc 1 35 0
  97 0012 FFF7FEFF 		bl	graphicdisplay_init
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     delay_interrupt_init();
  98              		.loc 1 36 0
  99 0016 FFF7FEFF 		bl	delay_interrupt_init
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     keyboard_init();
 100              		.loc 1 37 0
 101 001a FFF7FEFF 		bl	keyboard_init
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 102              		.loc 1 39 0
 103 001e C046     		nop
 104 0020 BD46     		mov	sp, r7
 105              		@ sp needed
 106 0022 80BD     		pop	{r7, pc}
 107              		.cfi_endproc
 108              	.LFE2:
 110              	.Letext0:
