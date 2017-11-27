<<<<<<< HEAD
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
  46              		.file 1 "C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay/startup.c"
   1:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** /*
   2:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  * 	graphicdisplay
   3:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  *
   4:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  */
   5:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include "delay.h"
   6:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include "keypad.h"
   7:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include "gpio.h"
   8:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include "graphicdisplay.h"
   9:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #include <stdint.h>
  10:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  
  11:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** //#define SIMULATOR
  12:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #define EXERCISE 16
  13:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****  
  14:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  15:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 
  16:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** void startup ( void ){
  47              		.loc 1 16 0
  48              		.cfi_startproc
  49              		@ Naked Function: prologue and epilogue provided by programmer.
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 1, uses_anonymous_args = 0
  17:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** __asm volatile(
  52              		.loc 1 17 0
  53              		.syntax divided
  54              	@ 17 "C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay/startup.c" 1
  55 0000 0248     		 LDR R0,=0x2001C000
  56 0002 8546     	 MOV SP,R0
  57 0004 FFF7FEFF 	 BL main
  58 0008 FEE7     	_exit: B .
  59              	
  60              	@ 0 "" 2
  18:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  19:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	" MOV SP,R0\n"
  20:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	" BL main\n"				/* call main */
  21:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	"_exit: B .\n"				/* never return */
  22:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	) ;
  23:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** }
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
  24:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 
  25:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** void main(void){
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
  26:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	init_app();
  91              		.loc 1 26 0
  92 0006 FFF7FEFF 		bl	init_app
  27:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_initialize();
  93              		.loc 1 27 0
  94 000a FFF7FEFF 		bl	graphic_initialize
  28:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #ifndef SIMULATOR
  29:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_clear_screen();
  95              		.loc 1 29 0
  96 000e FFF7FEFF 		bl	graphic_clear_screen
  30:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #endif //for simulator
  31:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 
  32:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #if EXERCISE == 14
  33:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command (LCD_SET_ADD | 20, B_CS1 | B_CS2);
  34:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command (LCD_SET_PAGE | 1, B_CS1 | B_CS2);
  35:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_data (0xFF, B_CS1 | B_CS2);
  36:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	
  37:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
  38:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
  39:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	
  40:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #endif // 5.14
  41:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****     
  42:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #if EXERCISE == 15
  43:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****     while(1){
  44:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         // Draw a horisontal line
  45:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 128; i++){
  46:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 1);
  47:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         }
  48:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         // Draw a vertical line
  49:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 64; i++){
  50:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 1);
  51:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         }
  52:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		
  53:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
  54:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
  55:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         
  56:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         delay_milli(500);
  57:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         
  58:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         // Erase horisontal line
  59:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 128; i++){
  60:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****             pixel(i, 10, 0);
  61:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         }
  62:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         // Erase a vertical line
  63:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         for(int i = 0; i < 64; i++){
  64:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****             pixel(10, i, 0);
  65:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         }
  66:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         
  67:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
  68:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
  69:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		
  70:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****         delay_milli(500);
  71:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c ****     }
  72:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #endif // 5.15
  73:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 
  74:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** #if EXERCISE == 16
  75:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	keyboard_init();
  97              		.loc 1 75 0
  98 0012 FFF7FEFF 		bl	keyboard_init
  76:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	GEOMETRY ball_geometry = {
  99              		.loc 1 76 0
 100 0016 2423     		movs	r3, #36
 101 0018 FB18     		adds	r3, r7, r3
 102 001a 1800     		movs	r0, r3
 103 001c 3423     		movs	r3, #52
 104 001e 1A00     		movs	r2, r3
 105 0020 0021     		movs	r1, #0
 106 0022 FFF7FEFF 		bl	memset
 107 0026 2423     		movs	r3, #36
 108 0028 FB18     		adds	r3, r7, r3
 109 002a 0C22     		movs	r2, #12
 110 002c 1A60     		str	r2, [r3]
 111 002e 2423     		movs	r3, #36
 112 0030 FB18     		adds	r3, r7, r3
 113 0032 0422     		movs	r2, #4
 114 0034 5A60     		str	r2, [r3, #4]
 115 0036 2423     		movs	r3, #36
 116 0038 FB18     		adds	r3, r7, r3
 117 003a 0422     		movs	r2, #4
 118 003c 9A60     		str	r2, [r3, #8]
 119 003e 2423     		movs	r3, #36
 120 0040 FB18     		adds	r3, r7, r3
 121 0042 0122     		movs	r2, #1
 122 0044 5A73     		strb	r2, [r3, #13]
 123 0046 2423     		movs	r3, #36
 124 0048 FB18     		adds	r3, r7, r3
 125 004a 0222     		movs	r2, #2
 126 004c DA73     		strb	r2, [r3, #15]
 127 004e 2423     		movs	r3, #36
 128 0050 FB18     		adds	r3, r7, r3
 129 0052 0122     		movs	r2, #1
 130 0054 1A74     		strb	r2, [r3, #16]
 131 0056 2423     		movs	r3, #36
 132 0058 FB18     		adds	r3, r7, r3
 133 005a 0122     		movs	r2, #1
 134 005c 9A74     		strb	r2, [r3, #18]
 135 005e 2423     		movs	r3, #36
 136 0060 FB18     		adds	r3, r7, r3
 137 0062 0122     		movs	r2, #1
 138 0064 DA74     		strb	r2, [r3, #19]
 139 0066 2423     		movs	r3, #36
 140 0068 FB18     		adds	r3, r7, r3
 141 006a 0122     		movs	r2, #1
 142 006c 1A75     		strb	r2, [r3, #20]
 143 006e 2423     		movs	r3, #36
 144 0070 FB18     		adds	r3, r7, r3
 145 0072 0222     		movs	r2, #2
 146 0074 5A75     		strb	r2, [r3, #21]
 147 0076 2423     		movs	r3, #36
 148 0078 FB18     		adds	r3, r7, r3
 149 007a 0122     		movs	r2, #1
 150 007c 9A75     		strb	r2, [r3, #22]
 151 007e 2423     		movs	r3, #36
 152 0080 FB18     		adds	r3, r7, r3
 153 0082 0322     		movs	r2, #3
 154 0084 DA75     		strb	r2, [r3, #23]
 155 0086 2423     		movs	r3, #36
 156 0088 FB18     		adds	r3, r7, r3
 157 008a 0222     		movs	r2, #2
 158 008c 1A76     		strb	r2, [r3, #24]
 159 008e 2423     		movs	r3, #36
 160 0090 FB18     		adds	r3, r7, r3
 161 0092 0222     		movs	r2, #2
 162 0094 9A76     		strb	r2, [r3, #26]
 163 0096 2423     		movs	r3, #36
 164 0098 FB18     		adds	r3, r7, r3
 165 009a 0122     		movs	r2, #1
 166 009c DA76     		strb	r2, [r3, #27]
 167 009e 2423     		movs	r3, #36
 168 00a0 FB18     		adds	r3, r7, r3
 169 00a2 0222     		movs	r2, #2
 170 00a4 1A77     		strb	r2, [r3, #28]
 171 00a6 2423     		movs	r3, #36
 172 00a8 FB18     		adds	r3, r7, r3
 173 00aa 0222     		movs	r2, #2
 174 00ac 5A77     		strb	r2, [r3, #29]
 175 00ae 2423     		movs	r3, #36
 176 00b0 FB18     		adds	r3, r7, r3
 177 00b2 0222     		movs	r2, #2
 178 00b4 9A77     		strb	r2, [r3, #30]
 179 00b6 2423     		movs	r3, #36
 180 00b8 FB18     		adds	r3, r7, r3
 181 00ba 0322     		movs	r2, #3
 182 00bc DA77     		strb	r2, [r3, #31]
 183 00be 2423     		movs	r3, #36
 184 00c0 FB18     		adds	r3, r7, r3
 185 00c2 2022     		movs	r2, #32
 186 00c4 0321     		movs	r1, #3
 187 00c6 9954     		strb	r1, [r3, r2]
 188 00c8 2423     		movs	r3, #36
 189 00ca FB18     		adds	r3, r7, r3
 190 00cc 2122     		movs	r2, #33
 191 00ce 0121     		movs	r1, #1
 192 00d0 9954     		strb	r1, [r3, r2]
 193 00d2 2423     		movs	r3, #36
 194 00d4 FB18     		adds	r3, r7, r3
 195 00d6 2222     		movs	r2, #34
 196 00d8 0321     		movs	r1, #3
 197 00da 9954     		strb	r1, [r3, r2]
 198 00dc 2423     		movs	r3, #36
 199 00de FB18     		adds	r3, r7, r3
 200 00e0 2322     		movs	r2, #35
 201 00e2 0221     		movs	r1, #2
 202 00e4 9954     		strb	r1, [r3, r2]
  77:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		12, // numpoints
  78:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		4, 4, // Size x and y
  79:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		// px
  80:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		{
  81:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			{0,1}, {0,2}, {1,0}, {1,1}, {1,2}, {1,3}, {2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2}
  82:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		}
  83:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	};
  84:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	OBJECT ball = {
 203              		.loc 1 84 0
 204 00e6 3B00     		movs	r3, r7
 205 00e8 2422     		movs	r2, #36
 206 00ea BA18     		adds	r2, r7, r2
 207 00ec 1A60     		str	r2, [r3]
 208 00ee 3B00     		movs	r3, r7
 209 00f0 0022     		movs	r2, #0
 210 00f2 5A60     		str	r2, [r3, #4]
 211 00f4 3B00     		movs	r3, r7
 212 00f6 0022     		movs	r2, #0
 213 00f8 9A60     		str	r2, [r3, #8]
 214 00fa 3B00     		movs	r3, r7
 215 00fc 0122     		movs	r2, #1
 216 00fe DA60     		str	r2, [r3, #12]
 217 0100 3B00     		movs	r3, r7
 218 0102 0122     		movs	r2, #1
 219 0104 1A61     		str	r2, [r3, #16]
 220 0106 3B00     		movs	r3, r7
 221 0108 2A4A     		ldr	r2, .L10
 222 010a 5A61     		str	r2, [r3, #20]
 223 010c 3B00     		movs	r3, r7
 224 010e 2A4A     		ldr	r2, .L10+4
 225 0110 9A61     		str	r2, [r3, #24]
 226 0112 3B00     		movs	r3, r7
 227 0114 294A     		ldr	r2, .L10+8
 228 0116 DA61     		str	r2, [r3, #28]
 229 0118 3B00     		movs	r3, r7
 230 011a 294A     		ldr	r2, .L10+12
 231 011c 1A62     		str	r2, [r3, #32]
  85:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		&ball_geometry,
  86:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		0, 0,
  87:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		1, 1,
  88:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		draw_object,
  89:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		clear_object,
  90:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		move_object,
  91:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		set_object_speed
  92:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	};
  93:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	
  94:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	POBJECT p = &ball;
 232              		.loc 1 94 0
 233 011e 3B00     		movs	r3, r7
 234 0120 FB65     		str	r3, [r7, #92]
  95:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	
  96:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	p->set_speed(p, 4, 1);
 235              		.loc 1 96 0
 236 0122 FB6D     		ldr	r3, [r7, #92]
 237 0124 1B6A     		ldr	r3, [r3, #32]
 238 0126 F86D     		ldr	r0, [r7, #92]
 239 0128 0122     		movs	r2, #1
 240 012a 0421     		movs	r1, #4
 241 012c 9847     		blx	r3
 242              	.LVL0:
 243              	.L9:
  97:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	uint8_t keyboard_val;
  98:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 	while(1){
  99:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		p->move(p);
 244              		.loc 1 99 0
 245 012e FB6D     		ldr	r3, [r7, #92]
 246 0130 DB69     		ldr	r3, [r3, #28]
 247 0132 FA6D     		ldr	r2, [r7, #92]
 248 0134 1000     		movs	r0, r2
 249 0136 9847     		blx	r3
 250              	.LVL1:
 100:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 251              		.loc 1 100 0
 252 0138 1821     		movs	r1, #24
 253 013a 3F20     		movs	r0, #63
 254 013c FFF7FEFF 		bl	graphic_write_command
 101:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 255              		.loc 1 101 0
 256 0140 1821     		movs	r1, #24
 257 0142 C020     		movs	r0, #192
 258 0144 FFF7FEFF 		bl	graphic_write_command
 102:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		keyboard_val = keyb();
 259              		.loc 1 102 0
 260 0148 5B23     		movs	r3, #91
 261 014a FC18     		adds	r4, r7, r3
 262 014c FFF7FEFF 		bl	keyb
 263 0150 0300     		movs	r3, r0
 264 0152 2370     		strb	r3, [r4]
 103:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		switch (keyboard_val){
 265              		.loc 1 103 0
 266 0154 5B23     		movs	r3, #91
 267 0156 FB18     		adds	r3, r7, r3
 268 0158 1B78     		ldrb	r3, [r3]
 269 015a 042B     		cmp	r3, #4
 270 015c 0FD0     		beq	.L4
 271 015e 02DC     		bgt	.L5
 272 0160 022B     		cmp	r3, #2
 273 0162 14D0     		beq	.L6
 274 0164 22E0     		b	.L3
 275              	.L5:
 276 0166 062B     		cmp	r3, #6
 277 0168 02D0     		beq	.L7
 278 016a 082B     		cmp	r3, #8
 279 016c 17D0     		beq	.L8
 280 016e 1DE0     		b	.L3
 281              	.L7:
 104:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			case 6: p->set_speed(p, 2, 0); break;
 282              		.loc 1 104 0
 283 0170 FB6D     		ldr	r3, [r7, #92]
 284 0172 1B6A     		ldr	r3, [r3, #32]
 285 0174 F86D     		ldr	r0, [r7, #92]
 286 0176 0022     		movs	r2, #0
 287 0178 0221     		movs	r1, #2
 288 017a 9847     		blx	r3
 289              	.LVL2:
 290 017c 16E0     		b	.L3
 291              	.L4:
 105:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			case 4: p->set_speed(p, -2, 0); break;
 292              		.loc 1 105 0
 293 017e FB6D     		ldr	r3, [r7, #92]
 294 0180 1B6A     		ldr	r3, [r3, #32]
 295 0182 0222     		movs	r2, #2
 296 0184 5142     		rsbs	r1, r2, #0
 297 0186 F86D     		ldr	r0, [r7, #92]
 298 0188 0022     		movs	r2, #0
 299 018a 9847     		blx	r3
 300              	.LVL3:
 301 018c 0EE0     		b	.L3
 302              	.L6:
 106:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			case 2: p->set_speed(p, 0, -2); break;
 303              		.loc 1 106 0
 304 018e FB6D     		ldr	r3, [r7, #92]
 305 0190 1B6A     		ldr	r3, [r3, #32]
 306 0192 0222     		movs	r2, #2
 307 0194 5242     		rsbs	r2, r2, #0
 308 0196 F86D     		ldr	r0, [r7, #92]
 309 0198 0021     		movs	r1, #0
 310 019a 9847     		blx	r3
 311              	.LVL4:
 312 019c 06E0     		b	.L3
 313              	.L8:
 107:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 			case 8: p->set_speed(p, 0, 2); break;
 314              		.loc 1 107 0
 315 019e FB6D     		ldr	r3, [r7, #92]
 316 01a0 1B6A     		ldr	r3, [r3, #32]
 317 01a2 F86D     		ldr	r0, [r7, #92]
 318 01a4 0222     		movs	r2, #2
 319 01a6 0021     		movs	r1, #0
 320 01a8 9847     		blx	r3
 321              	.LVL5:
 322 01aa C046     		nop
 323              	.L3:
 108:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		}
 109:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		delay_milli(40);
 324              		.loc 1 109 0
 325 01ac 2820     		movs	r0, #40
 326 01ae FFF7FEFF 		bl	delay_milli
  99:C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 327              		.loc 1 99 0
 328 01b2 BCE7     		b	.L9
 329              	.L11:
 330              		.align	2
 331              	.L10:
 332 01b4 00000000 		.word	draw_object
 333 01b8 00000000 		.word	clear_object
 334 01bc 00000000 		.word	move_object
 335 01c0 00000000 		.word	set_object_speed
 336              		.cfi_endproc
 337              	.LFE1:
 339              	.Letext0:
 340              		.file 2 "C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay/graphicdisp
 341              		.file 3 "C:/Users/lovlan/Documents/Mop-DAT017-master/Labs and exercises/graphicdisplay/keypad.h"
=======
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
>>>>>>> 689e8d2947eb8614c46af2a917dfb20df8d45ce9
