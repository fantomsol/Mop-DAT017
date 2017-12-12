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
  15              		.data
  16              		.align	2
  19              	key:
  20 0000 01       		.byte	1
  21 0001 02       		.byte	2
  22 0002 03       		.byte	3
  23 0003 0A       		.byte	10
  24 0004 04       		.byte	4
  25 0005 05       		.byte	5
  26 0006 06       		.byte	6
  27 0007 0B       		.byte	11
  28 0008 07       		.byte	7
  29 0009 08       		.byte	8
  30 000a 09       		.byte	9
  31 000b 0C       		.byte	12
  32 000c 0E       		.byte	14
  33 000d 00       		.byte	0
  34 000e 0F       		.byte	15
  35 000f 0D       		.byte	13
  36              		.section	.start_section,"ax",%progbits
  37              		.align	1
  38              		.global	startup
  39              		.syntax unified
  40              		.code	16
  41              		.thumb_func
  42              		.fpu softvfp
  44              	startup:
  45              	.LFB0:
  46              		.file 1 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicd
   1:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** /*
   2:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  * 	graphicdisplay
   3:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  *
   4:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  */
   5:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include "delay.h"
   6:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include "keypad.h"
   7:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include "gpio.h"
   8:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include "graphicdisplay.h"
   9:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include <stdint.h>
  10:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  
  11:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #define SIMULATOR
  12:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #define EXERCISE 16
  13:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  
  14:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  15:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 
  16:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** void startup ( void ){
  47              		.loc 1 16 0
  48              		.cfi_startproc
  49              		@ Naked Function: prologue and epilogue provided by programmer.
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 1, uses_anonymous_args = 0
  17:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** __asm volatile(
  52              		.loc 1 17 0
  53              		.syntax divided
  54              	@ 17 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdispl
  55 0000 0248     		 LDR R0,=0x2001C000
  56 0002 8546     	 MOV SP,R0
  57 0004 FFF7FEFF 	 BL main
  58 0008 FEE7     	_exit: B .
  59              	
  60              	@ 0 "" 2
  18:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  19:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	" MOV SP,R0\n"
  20:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	" BL main\n"				/* call main */
  21:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	"_exit: B .\n"				/* never return */
  22:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	) ;
  23:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** }
  61              		.loc 1 23 0
  62              		.thumb
  63              		.syntax unified
  64 000a C046     		nop
  65              		.cfi_endproc
  66              	.LFE0:
  68              		.text
  69              		.align	1
  70              		.global	main
  71              		.syntax unified
  72              		.code	16
  73              		.thumb_func
  74              		.fpu softvfp
  76              	main:
  77              	.LFB1:
  24:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 
  25:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** void main(void){
  78              		.loc 1 25 0
  79              		.cfi_startproc
  80              		@ args = 0, pretend = 0, frame = 96
  81              		@ frame_needed = 1, uses_anonymous_args = 0
  82 0000 90B5     		push	{r4, r7, lr}
  83              		.cfi_def_cfa_offset 12
  84              		.cfi_offset 4, -12
  85              		.cfi_offset 7, -8
  86              		.cfi_offset 14, -4
  87 0002 99B0     		sub	sp, sp, #100
  88              		.cfi_def_cfa_offset 112
  89 0004 00AF     		add	r7, sp, #0
  90              		.cfi_def_cfa_register 7
  26:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	init_app();
  91              		.loc 1 26 0
  92 0006 FFF7FEFF 		bl	init_app
  27:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_initialize();
  93              		.loc 1 27 0
  94 000a FFF7FEFF 		bl	graphic_initialize
  28:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #ifndef SIMULATOR
  29:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_clear_screen();
  30:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #endif //for simulator
  31:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 
  32:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #if EXERCISE == 14
  33:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command (LCD_SET_ADD | 20, B_CS1 | B_CS2);
  34:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command (LCD_SET_PAGE | 1, B_CS1 | B_CS2);
  35:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_data (0xFF, B_CS1 | B_CS2);
  36:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	
  37:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
  38:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
  39:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	
  40:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #endif // 5.14
  41:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****     
  42:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #if EXERCISE == 15
  43:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****     while(1){
  44:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         // Draw a horisontal line
  45:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 128; i++){
  46:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 1);
  47:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         }
  48:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         // Draw a vertical line
  49:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 64; i++){
  50:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 1);
  51:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         }
  52:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		
  53:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
  54:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
  55:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         
  56:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         delay_milli(500);
  57:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         
  58:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         // Erase horisontal line
  59:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 128; i++){
  60:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 0);
  61:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         }
  62:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         // Erase a vertical line
  63:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 64; i++){
  64:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 0);
  65:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         }
  66:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         
  67:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
  68:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
  69:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		
  70:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         delay_milli(500);
  71:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****     }
  72:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #endif // 5.15
  73:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 
  74:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #if EXERCISE == 16
  75:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	keyboard_init();
  95              		.loc 1 75 0
  96 000e FFF7FEFF 		bl	keyboard_init
  76:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	GEOMETRY ball_geometry = {
  97              		.loc 1 76 0
  98 0012 2423     		movs	r3, #36
  99 0014 FB18     		adds	r3, r7, r3
 100 0016 1800     		movs	r0, r3
 101 0018 3423     		movs	r3, #52
 102 001a 1A00     		movs	r2, r3
 103 001c 0021     		movs	r1, #0
 104 001e FFF7FEFF 		bl	memset
 105 0022 2423     		movs	r3, #36
 106 0024 FB18     		adds	r3, r7, r3
 107 0026 0C22     		movs	r2, #12
 108 0028 1A60     		str	r2, [r3]
 109 002a 2423     		movs	r3, #36
 110 002c FB18     		adds	r3, r7, r3
 111 002e 0422     		movs	r2, #4
 112 0030 5A60     		str	r2, [r3, #4]
 113 0032 2423     		movs	r3, #36
 114 0034 FB18     		adds	r3, r7, r3
 115 0036 0422     		movs	r2, #4
 116 0038 9A60     		str	r2, [r3, #8]
 117 003a 2423     		movs	r3, #36
 118 003c FB18     		adds	r3, r7, r3
 119 003e 0122     		movs	r2, #1
 120 0040 5A73     		strb	r2, [r3, #13]
 121 0042 2423     		movs	r3, #36
 122 0044 FB18     		adds	r3, r7, r3
 123 0046 0222     		movs	r2, #2
 124 0048 DA73     		strb	r2, [r3, #15]
 125 004a 2423     		movs	r3, #36
 126 004c FB18     		adds	r3, r7, r3
 127 004e 0122     		movs	r2, #1
 128 0050 1A74     		strb	r2, [r3, #16]
 129 0052 2423     		movs	r3, #36
 130 0054 FB18     		adds	r3, r7, r3
 131 0056 0122     		movs	r2, #1
 132 0058 9A74     		strb	r2, [r3, #18]
 133 005a 2423     		movs	r3, #36
 134 005c FB18     		adds	r3, r7, r3
 135 005e 0122     		movs	r2, #1
 136 0060 DA74     		strb	r2, [r3, #19]
 137 0062 2423     		movs	r3, #36
 138 0064 FB18     		adds	r3, r7, r3
 139 0066 0122     		movs	r2, #1
 140 0068 1A75     		strb	r2, [r3, #20]
 141 006a 2423     		movs	r3, #36
 142 006c FB18     		adds	r3, r7, r3
 143 006e 0222     		movs	r2, #2
 144 0070 5A75     		strb	r2, [r3, #21]
 145 0072 2423     		movs	r3, #36
 146 0074 FB18     		adds	r3, r7, r3
 147 0076 0122     		movs	r2, #1
 148 0078 9A75     		strb	r2, [r3, #22]
 149 007a 2423     		movs	r3, #36
 150 007c FB18     		adds	r3, r7, r3
 151 007e 0322     		movs	r2, #3
 152 0080 DA75     		strb	r2, [r3, #23]
 153 0082 2423     		movs	r3, #36
 154 0084 FB18     		adds	r3, r7, r3
 155 0086 0222     		movs	r2, #2
 156 0088 1A76     		strb	r2, [r3, #24]
 157 008a 2423     		movs	r3, #36
 158 008c FB18     		adds	r3, r7, r3
 159 008e 0222     		movs	r2, #2
 160 0090 9A76     		strb	r2, [r3, #26]
 161 0092 2423     		movs	r3, #36
 162 0094 FB18     		adds	r3, r7, r3
 163 0096 0122     		movs	r2, #1
 164 0098 DA76     		strb	r2, [r3, #27]
 165 009a 2423     		movs	r3, #36
 166 009c FB18     		adds	r3, r7, r3
 167 009e 0222     		movs	r2, #2
 168 00a0 1A77     		strb	r2, [r3, #28]
 169 00a2 2423     		movs	r3, #36
 170 00a4 FB18     		adds	r3, r7, r3
 171 00a6 0222     		movs	r2, #2
 172 00a8 5A77     		strb	r2, [r3, #29]
 173 00aa 2423     		movs	r3, #36
 174 00ac FB18     		adds	r3, r7, r3
 175 00ae 0222     		movs	r2, #2
 176 00b0 9A77     		strb	r2, [r3, #30]
 177 00b2 2423     		movs	r3, #36
 178 00b4 FB18     		adds	r3, r7, r3
 179 00b6 0322     		movs	r2, #3
 180 00b8 DA77     		strb	r2, [r3, #31]
 181 00ba 2423     		movs	r3, #36
 182 00bc FB18     		adds	r3, r7, r3
 183 00be 2022     		movs	r2, #32
 184 00c0 0321     		movs	r1, #3
 185 00c2 9954     		strb	r1, [r3, r2]
 186 00c4 2423     		movs	r3, #36
 187 00c6 FB18     		adds	r3, r7, r3
 188 00c8 2122     		movs	r2, #33
 189 00ca 0121     		movs	r1, #1
 190 00cc 9954     		strb	r1, [r3, r2]
 191 00ce 2423     		movs	r3, #36
 192 00d0 FB18     		adds	r3, r7, r3
 193 00d2 2222     		movs	r2, #34
 194 00d4 0321     		movs	r1, #3
 195 00d6 9954     		strb	r1, [r3, r2]
 196 00d8 2423     		movs	r3, #36
 197 00da FB18     		adds	r3, r7, r3
 198 00dc 2322     		movs	r2, #35
 199 00de 0221     		movs	r1, #2
 200 00e0 9954     		strb	r1, [r3, r2]
  77:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		12, // numpoints
  78:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		4, 4, // Size x and y
  79:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		// px
  80:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		{
  81:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			{0,1}, {0,2}, {1,0}, {1,1}, {1,2}, {1,3}, {2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2}
  82:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		}
  83:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	};
  84:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	OBJECT ball = {
 201              		.loc 1 84 0
 202 00e2 3B00     		movs	r3, r7
 203 00e4 2422     		movs	r2, #36
 204 00e6 BA18     		adds	r2, r7, r2
 205 00e8 1A60     		str	r2, [r3]
 206 00ea 3B00     		movs	r3, r7
 207 00ec 0022     		movs	r2, #0
 208 00ee 5A60     		str	r2, [r3, #4]
 209 00f0 3B00     		movs	r3, r7
 210 00f2 0022     		movs	r2, #0
 211 00f4 9A60     		str	r2, [r3, #8]
 212 00f6 3B00     		movs	r3, r7
 213 00f8 0122     		movs	r2, #1
 214 00fa DA60     		str	r2, [r3, #12]
 215 00fc 3B00     		movs	r3, r7
 216 00fe 0122     		movs	r2, #1
 217 0100 1A61     		str	r2, [r3, #16]
 218 0102 3B00     		movs	r3, r7
 219 0104 2A4A     		ldr	r2, .L10
 220 0106 5A61     		str	r2, [r3, #20]
 221 0108 3B00     		movs	r3, r7
 222 010a 2A4A     		ldr	r2, .L10+4
 223 010c 9A61     		str	r2, [r3, #24]
 224 010e 3B00     		movs	r3, r7
 225 0110 294A     		ldr	r2, .L10+8
 226 0112 DA61     		str	r2, [r3, #28]
 227 0114 3B00     		movs	r3, r7
 228 0116 294A     		ldr	r2, .L10+12
 229 0118 1A62     		str	r2, [r3, #32]
  85:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		&ball_geometry,
  86:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		0, 0,
  87:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		1, 1,
  88:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		draw_object,
  89:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		clear_object,
  90:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		move_object,
  91:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		set_object_speed
  92:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	};
  93:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	
  94:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	POBJECT p = &ball;
 230              		.loc 1 94 0
 231 011a 3B00     		movs	r3, r7
 232 011c FB65     		str	r3, [r7, #92]
  95:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	
  96:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	p->set_speed(p, 4, 1);
 233              		.loc 1 96 0
 234 011e FB6D     		ldr	r3, [r7, #92]
 235 0120 1B6A     		ldr	r3, [r3, #32]
 236 0122 F86D     		ldr	r0, [r7, #92]
 237 0124 0122     		movs	r2, #1
 238 0126 0421     		movs	r1, #4
 239 0128 9847     		blx	r3
 240              	.LVL0:
 241              	.L9:
  97:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	uint8_t keyboard_val;
  98:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	while(1){
  99:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		p->move(p);
 242              		.loc 1 99 0
 243 012a FB6D     		ldr	r3, [r7, #92]
 244 012c DB69     		ldr	r3, [r3, #28]
 245 012e FA6D     		ldr	r2, [r7, #92]
 246 0130 1000     		movs	r0, r2
 247 0132 9847     		blx	r3
 248              	.LVL1:
 100:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 249              		.loc 1 100 0
 250 0134 1821     		movs	r1, #24
 251 0136 3F20     		movs	r0, #63
 252 0138 FFF7FEFF 		bl	graphic_write_command
 101:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 253              		.loc 1 101 0
 254 013c 1821     		movs	r1, #24
 255 013e C020     		movs	r0, #192
 256 0140 FFF7FEFF 		bl	graphic_write_command
 102:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		keyboard_val = keyb();
 257              		.loc 1 102 0
 258 0144 5B23     		movs	r3, #91
 259 0146 FC18     		adds	r4, r7, r3
 260 0148 FFF7FEFF 		bl	keyb
 261 014c 0300     		movs	r3, r0
 262 014e 2370     		strb	r3, [r4]
 103:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		switch (keyboard_val){
 263              		.loc 1 103 0
 264 0150 5B23     		movs	r3, #91
 265 0152 FB18     		adds	r3, r7, r3
 266 0154 1B78     		ldrb	r3, [r3]
 267 0156 042B     		cmp	r3, #4
 268 0158 0FD0     		beq	.L4
 269 015a 02DC     		bgt	.L5
 270 015c 022B     		cmp	r3, #2
 271 015e 14D0     		beq	.L6
 272 0160 22E0     		b	.L3
 273              	.L5:
 274 0162 062B     		cmp	r3, #6
 275 0164 02D0     		beq	.L7
 276 0166 082B     		cmp	r3, #8
 277 0168 17D0     		beq	.L8
 278 016a 1DE0     		b	.L3
 279              	.L7:
 104:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			case 6: p->set_speed(p, 2, 0); break;
 280              		.loc 1 104 0
 281 016c FB6D     		ldr	r3, [r7, #92]
 282 016e 1B6A     		ldr	r3, [r3, #32]
 283 0170 F86D     		ldr	r0, [r7, #92]
 284 0172 0022     		movs	r2, #0
 285 0174 0221     		movs	r1, #2
 286 0176 9847     		blx	r3
 287              	.LVL2:
 288 0178 16E0     		b	.L3
 289              	.L4:
 105:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			case 4: p->set_speed(p, -2, 0); break;
 290              		.loc 1 105 0
 291 017a FB6D     		ldr	r3, [r7, #92]
 292 017c 1B6A     		ldr	r3, [r3, #32]
 293 017e 0222     		movs	r2, #2
 294 0180 5142     		rsbs	r1, r2, #0
 295 0182 F86D     		ldr	r0, [r7, #92]
 296 0184 0022     		movs	r2, #0
 297 0186 9847     		blx	r3
 298              	.LVL3:
 299 0188 0EE0     		b	.L3
 300              	.L6:
 106:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			case 2: p->set_speed(p, 0, -2); break;
 301              		.loc 1 106 0
 302 018a FB6D     		ldr	r3, [r7, #92]
 303 018c 1B6A     		ldr	r3, [r3, #32]
 304 018e 0222     		movs	r2, #2
 305 0190 5242     		rsbs	r2, r2, #0
 306 0192 F86D     		ldr	r0, [r7, #92]
 307 0194 0021     		movs	r1, #0
 308 0196 9847     		blx	r3
 309              	.LVL4:
 310 0198 06E0     		b	.L3
 311              	.L8:
 107:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			case 8: p->set_speed(p, 0, 2); break;
 312              		.loc 1 107 0
 313 019a FB6D     		ldr	r3, [r7, #92]
 314 019c 1B6A     		ldr	r3, [r3, #32]
 315 019e F86D     		ldr	r0, [r7, #92]
 316 01a0 0222     		movs	r2, #2
 317 01a2 0021     		movs	r1, #0
 318 01a4 9847     		blx	r3
 319              	.LVL5:
 320 01a6 C046     		nop
 321              	.L3:
 108:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		}
 109:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		delay_milli(40);
 322              		.loc 1 109 0
 323 01a8 2820     		movs	r0, #40
 324 01aa FFF7FEFF 		bl	delay_milli
  99:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 325              		.loc 1 99 0
 326 01ae BCE7     		b	.L9
 327              	.L11:
 328              		.align	2
 329              	.L10:
 330 01b0 00000000 		.word	draw_object
 331 01b4 00000000 		.word	clear_object
 332 01b8 00000000 		.word	move_object
 333 01bc 00000000 		.word	set_object_speed
 334              		.cfi_endproc
 335              	.LFE1:
 337              	.Letext0:
 338              		.file 2 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicd
 339              		.file 3 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/graphicd
