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
  25              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay/startup.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** /*
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  * 	graphicdisplay
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  *
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  */
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #include "delay.h"
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #include "gpio.h"
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #include "graphicdisplay.h"
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #include <stdint.h>
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #define SIMULATOR
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #define EXERCISE 15
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****  
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** void startup ( void ){
  26              		.loc 1 15 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** __asm volatile(
  31              		.loc 1 16 0
  32              		.syntax divided
  33              	@ 16 "C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	" MOV SP,R0\n"
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	" BL main\n"				/* call main */
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	"_exit: B .\n"				/* never return */
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	) ;
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** }
  40              		.loc 1 22 0
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
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** void main(void){
  57              		.loc 1 24 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 16
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 84B0     		sub	sp, sp, #16
  66              		.cfi_def_cfa_offset 24
  67 0004 00AF     		add	r7, sp, #0
  68              		.cfi_def_cfa_register 7
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #if EXERCISE == 14
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	init_app();
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_initialize();
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #ifndef SIMULATOR
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_clear_screen();
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #endif //for simulator
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command (LCD_SET_ADD | 20, B_CS1 | B_CS2);
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command (LCD_SET_PAGE | 1, B_CS1 | B_CS2);
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_data (0xFF, B_CS1 | B_CS2);
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #endif // 5.14
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****     
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #if EXERCISE == 15
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****     init_app();
  69              		.loc 1 38 0
  70 0006 FFF7FEFF 		bl	init_app
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****     graphic_initialize();
  71              		.loc 1 39 0
  72 000a FFF7FEFF 		bl	graphic_initialize
  73              	.L11:
  74              	.LBB2:
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #ifndef SIMULATOR
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****     graphic_clear_screen();
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c **** #endif // For simulator
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****     while(1){
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         // Draw a horisontal line
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 128; i++){
  75              		.loc 1 45 0
  76 000e 0023     		movs	r3, #0
  77 0010 FB60     		str	r3, [r7, #12]
  78 0012 09E0     		b	.L3
  79              	.L4:
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 1);
  80              		.loc 1 46 0 discriminator 3
  81 0014 FB68     		ldr	r3, [r7, #12]
  82 0016 DBB2     		uxtb	r3, r3
  83 0018 0122     		movs	r2, #1
  84 001a 0A21     		movs	r1, #10
  85 001c 1800     		movs	r0, r3
  86 001e FFF7FEFF 		bl	pixel
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 1);
  87              		.loc 1 45 0 discriminator 3
  88 0022 FB68     		ldr	r3, [r7, #12]
  89 0024 0133     		adds	r3, r3, #1
  90 0026 FB60     		str	r3, [r7, #12]
  91              	.L3:
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 1);
  92              		.loc 1 45 0 is_stmt 0 discriminator 1
  93 0028 FB68     		ldr	r3, [r7, #12]
  94 002a 7F2B     		cmp	r3, #127
  95 002c F2DD     		ble	.L4
  96              	.LBE2:
  97              	.LBB3:
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         }
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         // Draw a vertical line
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 64; i++){
  98              		.loc 1 49 0 is_stmt 1
  99 002e 0023     		movs	r3, #0
 100 0030 BB60     		str	r3, [r7, #8]
 101 0032 09E0     		b	.L5
 102              	.L6:
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 1);
 103              		.loc 1 50 0 discriminator 3
 104 0034 BB68     		ldr	r3, [r7, #8]
 105 0036 DBB2     		uxtb	r3, r3
 106 0038 0122     		movs	r2, #1
 107 003a 1900     		movs	r1, r3
 108 003c 0A20     		movs	r0, #10
 109 003e FFF7FEFF 		bl	pixel
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 1);
 110              		.loc 1 49 0 discriminator 3
 111 0042 BB68     		ldr	r3, [r7, #8]
 112 0044 0133     		adds	r3, r3, #1
 113 0046 BB60     		str	r3, [r7, #8]
 114              	.L5:
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 1);
 115              		.loc 1 49 0 is_stmt 0 discriminator 1
 116 0048 BB68     		ldr	r3, [r7, #8]
 117 004a 3F2B     		cmp	r3, #63
 118 004c F2DD     		ble	.L6
 119              	.LBE3:
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         }
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         delay_milli(500);
 120              		.loc 1 53 0 is_stmt 1
 121 004e FA23     		movs	r3, #250
 122 0050 5B00     		lsls	r3, r3, #1
 123 0052 1800     		movs	r0, r3
 124 0054 FFF7FEFF 		bl	delay_milli
 125              	.LBB4:
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         // Erase horisontal line
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 128; i++){
 126              		.loc 1 56 0
 127 0058 0023     		movs	r3, #0
 128 005a 7B60     		str	r3, [r7, #4]
 129 005c 09E0     		b	.L7
 130              	.L8:
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 0);
 131              		.loc 1 57 0 discriminator 3
 132 005e 7B68     		ldr	r3, [r7, #4]
 133 0060 DBB2     		uxtb	r3, r3
 134 0062 0022     		movs	r2, #0
 135 0064 0A21     		movs	r1, #10
 136 0066 1800     		movs	r0, r3
 137 0068 FFF7FEFF 		bl	pixel
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 0);
 138              		.loc 1 56 0 discriminator 3
 139 006c 7B68     		ldr	r3, [r7, #4]
 140 006e 0133     		adds	r3, r3, #1
 141 0070 7B60     		str	r3, [r7, #4]
 142              	.L7:
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 0);
 143              		.loc 1 56 0 is_stmt 0 discriminator 1
 144 0072 7B68     		ldr	r3, [r7, #4]
 145 0074 7F2B     		cmp	r3, #127
 146 0076 F2DD     		ble	.L8
 147              	.LBE4:
 148              	.LBB5:
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         }
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         // Erase a vertical line
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 64; i++){
 149              		.loc 1 60 0 is_stmt 1
 150 0078 0023     		movs	r3, #0
 151 007a 3B60     		str	r3, [r7]
 152 007c 09E0     		b	.L9
 153              	.L10:
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 0);
 154              		.loc 1 61 0 discriminator 3
 155 007e 3B68     		ldr	r3, [r7]
 156 0080 DBB2     		uxtb	r3, r3
 157 0082 0022     		movs	r2, #0
 158 0084 1900     		movs	r1, r3
 159 0086 0A20     		movs	r0, #10
 160 0088 FFF7FEFF 		bl	pixel
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 0);
 161              		.loc 1 60 0 discriminator 3
 162 008c 3B68     		ldr	r3, [r7]
 163 008e 0133     		adds	r3, r3, #1
 164 0090 3B60     		str	r3, [r7]
 165              	.L9:
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 0);
 166              		.loc 1 60 0 is_stmt 0 discriminator 1
 167 0092 3B68     		ldr	r3, [r7]
 168 0094 3F2B     		cmp	r3, #63
 169 0096 F2DD     		ble	.L10
 170              	.LBE5:
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         }
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****         delay_milli(500);
 171              		.loc 1 64 0 is_stmt 1
 172 0098 FA23     		movs	r3, #250
 173 009a 5B00     		lsls	r3, r3, #1
 174 009c 1800     		movs	r0, r3
 175 009e FFF7FEFF 		bl	delay_milli
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 1);
 176              		.loc 1 45 0
 177 00a2 B4E7     		b	.L11
 178              		.cfi_endproc
 179              	.LFE1:
 181              	.Letext0:
