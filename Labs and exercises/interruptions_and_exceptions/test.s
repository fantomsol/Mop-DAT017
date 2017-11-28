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
  25              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions/startup.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** /*
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****  * 	startup.c
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****  *
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****  */
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #include "exceptions.h"
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #include "delay_interrupt.h"
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #include "gpio.h"
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #define SIMULATOR
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #ifdef SIMULATOR
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #define DELAY_COUNT 100
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #else
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #define DELAY_COUNT 1000000
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #endif
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void app_init(void);
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** extern int systick_flag;
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void startup ( void ){
  26              		.loc 1 22 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** __asm volatile(
  31              		.loc 1 23 0
  32              		.syntax divided
  33              	@ 23 "C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	" MOV SP,R0\n"
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	" BL main\n"				/* call main */
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	"_exit: B .\n"				/* never return */
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	) ;
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** }
  40              		.loc 1 29 0
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
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void main(void){
  57              		.loc 1 31 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     app_init();
  67              		.loc 1 32 0
  68 0004 FFF7FEFF 		bl	app_init
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     delay(DELAY_COUNT);
  69              		.loc 1 33 0
  70 0008 6420     		movs	r0, #100
  71 000a FFF7FEFF 		bl	delay
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.odrLow = 0xFF;
  72              		.loc 1 35 0
  73 000e 114B     		ldr	r3, .L10
  74 0010 FF22     		movs	r2, #255
  75 0012 1A75     		strb	r2, [r3, #20]
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.odrHigh = 0;
  76              		.loc 1 36 0
  77 0014 0F4B     		ldr	r3, .L10
  78 0016 0022     		movs	r2, #0
  79 0018 5A75     		strb	r2, [r3, #21]
  80              	.L7:
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     while(1){
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         if(GPIO_D.odrHigh == 0){
  81              		.loc 1 38 0
  82 001a 0E4B     		ldr	r3, .L10
  83 001c 5B7D     		ldrb	r3, [r3, #21]
  84 001e DBB2     		uxtb	r3, r3
  85 0020 002B     		cmp	r3, #0
  86 0022 03D1     		bne	.L3
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****             GPIO_D.odrHigh = 1;
  87              		.loc 1 39 0
  88 0024 0B4B     		ldr	r3, .L10
  89 0026 0122     		movs	r2, #1
  90 0028 5A75     		strb	r2, [r3, #21]
  91 002a 06E0     		b	.L4
  92              	.L3:
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         } else {
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****             GPIO_D.odrHigh = GPIO_D.odrHigh << 1;
  93              		.loc 1 41 0
  94 002c 094A     		ldr	r2, .L10
  95 002e 094B     		ldr	r3, .L10
  96 0030 5B7D     		ldrb	r3, [r3, #21]
  97 0032 DBB2     		uxtb	r3, r3
  98 0034 DB18     		adds	r3, r3, r3
  99 0036 DBB2     		uxtb	r3, r3
 100 0038 5375     		strb	r3, [r2, #21]
 101              	.L4:
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         }
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         if(systick_flag) break;
 102              		.loc 1 43 0
 103 003a 074B     		ldr	r3, .L10+4
 104 003c 1B68     		ldr	r3, [r3]
 105 003e 002B     		cmp	r3, #0
 106 0040 00D1     		bne	.L9
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****             GPIO_D.odrHigh = 1;
 107              		.loc 1 38 0
 108 0042 EAE7     		b	.L7
 109              	.L9:
 110              		.loc 1 43 0
 111 0044 C046     		nop
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     }
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.odrLow = 0;
 112              		.loc 1 45 0
 113 0046 034B     		ldr	r3, .L10
 114 0048 0022     		movs	r2, #0
 115 004a 1A75     		strb	r2, [r3, #20]
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** }
 116              		.loc 1 46 0
 117 004c C046     		nop
 118 004e BD46     		mov	sp, r7
 119              		@ sp needed
 120 0050 80BD     		pop	{r7, pc}
 121              	.L11:
 122 0052 C046     		.align	2
 123              	.L10:
 124 0054 000C0240 		.word	1073875968
 125 0058 00000000 		.word	systick_flag
 126              		.cfi_endproc
 127              	.LFE1:
 129              		.align	1
 130              		.global	app_init
 131              		.syntax unified
 132              		.code	16
 133              		.thumb_func
 134              		.fpu softvfp
 136              	app_init:
 137              	.LFB2:
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void app_init(void){
 138              		.loc 1 48 0
 139              		.cfi_startproc
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 1, uses_anonymous_args = 0
 142 005c 80B5     		push	{r7, lr}
 143              		.cfi_def_cfa_offset 8
 144              		.cfi_offset 7, -8
 145              		.cfi_offset 14, -4
 146 005e 00AF     		add	r7, sp, #0
 147              		.cfi_def_cfa_register 7
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.moder = 0x55555555;
 148              		.loc 1 49 0
 149 0060 034B     		ldr	r3, .L13
 150 0062 044A     		ldr	r2, .L13+4
 151 0064 1A60     		str	r2, [r3]
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     delay_interrupt_init();
 152              		.loc 1 50 0
 153 0066 FFF7FEFF 		bl	delay_interrupt_init
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** }
 154              		.loc 1 51 0
 155 006a C046     		nop
 156 006c BD46     		mov	sp, r7
 157              		@ sp needed
 158 006e 80BD     		pop	{r7, pc}
 159              	.L14:
 160              		.align	2
 161              	.L13:
 162 0070 000C0240 		.word	1073875968
 163 0074 55555555 		.word	1431655765
 164              		.cfi_endproc
 165              	.LFE2:
 167              	.Letext0:
 168              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions/gpio.h"
