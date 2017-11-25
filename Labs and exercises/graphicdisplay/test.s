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
  11              		.file	"graphicdisplay.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	graphic_ctrl_bit_set
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	graphic_ctrl_bit_set:
  23              	.LFB0:
  24              		.file 1 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay/graphicdisplay.c"
   1:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** #include "graphicdisplay.h"
   2:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
   3:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_ctrl_bit_set(uint8_t x){
  25              		.loc 1 3 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 16
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 84B0     		sub	sp, sp, #16
  34              		.cfi_def_cfa_offset 24
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
  37 0006 0200     		movs	r2, r0
  38 0008 FB1D     		adds	r3, r7, #7
  39 000a 1A70     		strb	r2, [r3]
   4:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t control_register = GPIO_E.odrLow;
  40              		.loc 1 4 0
  41 000c 0C4A     		ldr	r2, .L2
  42 000e 0F23     		movs	r3, #15
  43 0010 FB18     		adds	r3, r7, r3
  44 0012 127D     		ldrb	r2, [r2, #20]
  45 0014 1A70     		strb	r2, [r3]
   5:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register |= (x | B_SELECT);
  46              		.loc 1 5 0
  47 0016 FA1D     		adds	r2, r7, #7
  48 0018 0F23     		movs	r3, #15
  49 001a FB18     		adds	r3, r7, r3
  50 001c 1278     		ldrb	r2, [r2]
  51 001e 1B78     		ldrb	r3, [r3]
  52 0020 1343     		orrs	r3, r2
  53 0022 DAB2     		uxtb	r2, r3
  54 0024 0F23     		movs	r3, #15
  55 0026 FB18     		adds	r3, r7, r3
  56 0028 0421     		movs	r1, #4
  57 002a 0A43     		orrs	r2, r1
  58 002c 1A70     		strb	r2, [r3]
   6:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.odrLow = control_register;
  59              		.loc 1 6 0
  60 002e 044A     		ldr	r2, .L2
  61 0030 0F23     		movs	r3, #15
  62 0032 FB18     		adds	r3, r7, r3
  63 0034 1B78     		ldrb	r3, [r3]
  64 0036 1375     		strb	r3, [r2, #20]
   7:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
  65              		.loc 1 7 0
  66 0038 C046     		nop
  67 003a BD46     		mov	sp, r7
  68 003c 04B0     		add	sp, sp, #16
  69              		@ sp needed
  70 003e 80BD     		pop	{r7, pc}
  71              	.L3:
  72              		.align	2
  73              	.L2:
  74 0040 00100240 		.word	1073876992
  75              		.cfi_endproc
  76              	.LFE0:
  78              		.align	1
  79              		.global	graphic_ctrl_bit_clear
  80              		.syntax unified
  81              		.code	16
  82              		.thumb_func
  83              		.fpu softvfp
  85              	graphic_ctrl_bit_clear:
  86              	.LFB1:
   8:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
   9:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_ctrl_bit_clear(uint8_t x){
  87              		.loc 1 9 0
  88              		.cfi_startproc
  89              		@ args = 0, pretend = 0, frame = 16
  90              		@ frame_needed = 1, uses_anonymous_args = 0
  91 0044 80B5     		push	{r7, lr}
  92              		.cfi_def_cfa_offset 8
  93              		.cfi_offset 7, -8
  94              		.cfi_offset 14, -4
  95 0046 84B0     		sub	sp, sp, #16
  96              		.cfi_def_cfa_offset 24
  97 0048 00AF     		add	r7, sp, #0
  98              		.cfi_def_cfa_register 7
  99 004a 0200     		movs	r2, r0
 100 004c FB1D     		adds	r3, r7, #7
 101 004e 1A70     		strb	r2, [r3]
  10:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t control_register = GPIO_E.odrLow;
 102              		.loc 1 10 0
 103 0050 114A     		ldr	r2, .L5
 104 0052 0F23     		movs	r3, #15
 105 0054 FB18     		adds	r3, r7, r3
 106 0056 127D     		ldrb	r2, [r2, #20]
 107 0058 1A70     		strb	r2, [r3]
  11:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register &= (~x);
 108              		.loc 1 11 0
 109 005a FB1D     		adds	r3, r7, #7
 110 005c 1B78     		ldrb	r3, [r3]
 111 005e 5BB2     		sxtb	r3, r3
 112 0060 DB43     		mvns	r3, r3
 113 0062 5BB2     		sxtb	r3, r3
 114 0064 0F22     		movs	r2, #15
 115 0066 BA18     		adds	r2, r7, r2
 116 0068 1278     		ldrb	r2, [r2]
 117 006a 52B2     		sxtb	r2, r2
 118 006c 1340     		ands	r3, r2
 119 006e 5AB2     		sxtb	r2, r3
 120 0070 0F23     		movs	r3, #15
 121 0072 FB18     		adds	r3, r7, r3
 122 0074 1A70     		strb	r2, [r3]
  12:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register |= B_SELECT;
 123              		.loc 1 12 0
 124 0076 0F23     		movs	r3, #15
 125 0078 FB18     		adds	r3, r7, r3
 126 007a 0F22     		movs	r2, #15
 127 007c BA18     		adds	r2, r7, r2
 128 007e 1278     		ldrb	r2, [r2]
 129 0080 0421     		movs	r1, #4
 130 0082 0A43     		orrs	r2, r1
 131 0084 1A70     		strb	r2, [r3]
  13:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.odrLow = control_register;
 132              		.loc 1 13 0
 133 0086 044A     		ldr	r2, .L5
 134 0088 0F23     		movs	r3, #15
 135 008a FB18     		adds	r3, r7, r3
 136 008c 1B78     		ldrb	r3, [r3]
 137 008e 1375     		strb	r3, [r2, #20]
  14:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 138              		.loc 1 14 0
 139 0090 C046     		nop
 140 0092 BD46     		mov	sp, r7
 141 0094 04B0     		add	sp, sp, #16
 142              		@ sp needed
 143 0096 80BD     		pop	{r7, pc}
 144              	.L6:
 145              		.align	2
 146              	.L5:
 147 0098 00100240 		.word	1073876992
 148              		.cfi_endproc
 149              	.LFE1:
 151              		.align	1
 152              		.global	select_controller
 153              		.syntax unified
 154              		.code	16
 155              		.thumb_func
 156              		.fpu softvfp
 158              	select_controller:
 159              	.LFB2:
  15:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  16:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void select_controller(uint8_t controller){
 160              		.loc 1 16 0
 161              		.cfi_startproc
 162              		@ args = 0, pretend = 0, frame = 8
 163              		@ frame_needed = 1, uses_anonymous_args = 0
 164 009c 80B5     		push	{r7, lr}
 165              		.cfi_def_cfa_offset 8
 166              		.cfi_offset 7, -8
 167              		.cfi_offset 14, -4
 168 009e 82B0     		sub	sp, sp, #8
 169              		.cfi_def_cfa_offset 16
 170 00a0 00AF     		add	r7, sp, #0
 171              		.cfi_def_cfa_register 7
 172 00a2 0200     		movs	r2, r0
 173 00a4 FB1D     		adds	r3, r7, #7
 174 00a6 1A70     		strb	r2, [r3]
  17:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     switch(controller){
 175              		.loc 1 17 0
 176 00a8 FB1D     		adds	r3, r7, #7
 177 00aa 1B78     		ldrb	r3, [r3]
 178 00ac 082B     		cmp	r3, #8
 179 00ae 0FD0     		beq	.L9
 180 00b0 02DC     		bgt	.L10
 181 00b2 002B     		cmp	r3, #0
 182 00b4 05D0     		beq	.L11
  18:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case 0: 
  19:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_clear(B_CS1);
  20:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_clear(B_CS2);
  21:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
  22:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1: 
  23:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_clear(B_CS2);
  24:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS1);
  25:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
  26:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS2:
  27:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_clear(B_CS1);
  28:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS2);
  29:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
  30:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1 | B_CS2:
  31:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS1);
  32:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS2);
  33:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
  34:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
  35:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 183              		.loc 1 35 0
 184 00b6 20E0     		b	.L14
 185              	.L10:
  17:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     switch(controller){
 186              		.loc 1 17 0
 187 00b8 102B     		cmp	r3, #16
 188 00ba 10D0     		beq	.L12
 189 00bc 182B     		cmp	r3, #24
 190 00be 15D0     		beq	.L13
 191              		.loc 1 35 0
 192 00c0 1BE0     		b	.L14
 193              	.L11:
  19:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_clear(B_CS2);
 194              		.loc 1 19 0
 195 00c2 0820     		movs	r0, #8
 196 00c4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  20:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 197              		.loc 1 20 0
 198 00c8 1020     		movs	r0, #16
 199 00ca FFF7FEFF 		bl	graphic_ctrl_bit_clear
  21:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1: 
 200              		.loc 1 21 0
 201 00ce 14E0     		b	.L8
 202              	.L9:
  23:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS1);
 203              		.loc 1 23 0
 204 00d0 1020     		movs	r0, #16
 205 00d2 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  24:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 206              		.loc 1 24 0
 207 00d6 0820     		movs	r0, #8
 208 00d8 FFF7FEFF 		bl	graphic_ctrl_bit_set
  25:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS2:
 209              		.loc 1 25 0
 210 00dc 0DE0     		b	.L8
 211              	.L12:
  27:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS2);
 212              		.loc 1 27 0
 213 00de 0820     		movs	r0, #8
 214 00e0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  28:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 215              		.loc 1 28 0
 216 00e4 1020     		movs	r0, #16
 217 00e6 FFF7FEFF 		bl	graphic_ctrl_bit_set
  29:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1 | B_CS2:
 218              		.loc 1 29 0
 219 00ea 06E0     		b	.L8
 220              	.L13:
  31:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS2);
 221              		.loc 1 31 0
 222 00ec 0820     		movs	r0, #8
 223 00ee FFF7FEFF 		bl	graphic_ctrl_bit_set
  32:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 224              		.loc 1 32 0
 225 00f2 1020     		movs	r0, #16
 226 00f4 FFF7FEFF 		bl	graphic_ctrl_bit_set
  33:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 227              		.loc 1 33 0
 228 00f8 C046     		nop
 229              	.L8:
 230              	.L14:
 231              		.loc 1 35 0
 232 00fa C046     		nop
 233 00fc BD46     		mov	sp, r7
 234 00fe 02B0     		add	sp, sp, #8
 235              		@ sp needed
 236 0100 80BD     		pop	{r7, pc}
 237              		.cfi_endproc
 238              	.LFE2:
 240              		.align	1
 241              		.global	graphic_wait_ready
 242              		.syntax unified
 243              		.code	16
 244              		.thumb_func
 245              		.fpu softvfp
 247              	graphic_wait_ready:
 248              	.LFB3:
  36:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  37:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_wait_ready(void){
 249              		.loc 1 37 0
 250              		.cfi_startproc
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 1, uses_anonymous_args = 0
 253 0102 80B5     		push	{r7, lr}
 254              		.cfi_def_cfa_offset 8
 255              		.cfi_offset 7, -8
 256              		.cfi_offset 14, -4
 257 0104 00AF     		add	r7, sp, #0
 258              		.cfi_def_cfa_register 7
  38:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Enable = 0
  39:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_clear(B_E);
 259              		.loc 1 39 0
 260 0106 4020     		movs	r0, #64
 261 0108 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  40:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // E: 15-8 = input, 7-0 = output
  41:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.moder = 0x00005555;
 262              		.loc 1 41 0
 263 010c 124B     		ldr	r3, .L21
 264 010e 134A     		ldr	r2, .L21+4
 265 0110 1A60     		str	r2, [r3]
  42:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  43:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // RS = 0, RW = 1
  44:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_clear(B_RS);
 266              		.loc 1 44 0
 267 0112 0120     		movs	r0, #1
 268 0114 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  45:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_set(B_RW);
 269              		.loc 1 45 0
 270 0118 0220     		movs	r0, #2
 271 011a FFF7FEFF 		bl	graphic_ctrl_bit_set
  46:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     delay_500ns();
 272              		.loc 1 46 0
 273 011e FFF7FEFF 		bl	delay_500ns
 274              	.L18:
  47:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  48:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     while(1){
  49:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Enable = 1
  50:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         graphic_ctrl_bit_set(B_E);
 275              		.loc 1 50 0
 276 0122 4020     		movs	r0, #64
 277 0124 FFF7FEFF 		bl	graphic_ctrl_bit_set
  51:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 278              		.loc 1 51 0
 279 0128 FFF7FEFF 		bl	delay_500ns
  52:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Enable = 0
  53:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         graphic_ctrl_bit_clear(B_E);
 280              		.loc 1 53 0
 281 012c 4020     		movs	r0, #64
 282 012e FFF7FEFF 		bl	graphic_ctrl_bit_clear
  54:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 283              		.loc 1 54 0
 284 0132 FFF7FEFF 		bl	delay_500ns
  55:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Exit loop if not busy
  56:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         if((GPIO_E.idrHigh & LCD_BUSY) == 0){
 285              		.loc 1 56 0
 286 0136 084B     		ldr	r3, .L21
 287 0138 5B7C     		ldrb	r3, [r3, #17]
 288 013a DBB2     		uxtb	r3, r3
 289 013c 5BB2     		sxtb	r3, r3
 290 013e 002B     		cmp	r3, #0
 291 0140 00DA     		bge	.L20
  50:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 292              		.loc 1 50 0
 293 0142 EEE7     		b	.L18
 294              	.L20:
  57:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 295              		.loc 1 57 0
 296 0144 C046     		nop
  58:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         } 
  59:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
  60:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  61:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Enable = 1
  62:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_set(B_E);
 297              		.loc 1 62 0
 298 0146 4020     		movs	r0, #64
 299 0148 FFF7FEFF 		bl	graphic_ctrl_bit_set
  63:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // E: 15-0 = output
  64:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.moder = 0x55555555;
 300              		.loc 1 64 0
 301 014c 024B     		ldr	r3, .L21
 302 014e 044A     		ldr	r2, .L21+8
 303 0150 1A60     		str	r2, [r3]
  65:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 304              		.loc 1 65 0
 305 0152 C046     		nop
 306 0154 BD46     		mov	sp, r7
 307              		@ sp needed
 308 0156 80BD     		pop	{r7, pc}
 309              	.L22:
 310              		.align	2
 311              	.L21:
 312 0158 00100240 		.word	1073876992
 313 015c 55550000 		.word	21845
 314 0160 55555555 		.word	1431655765
 315              		.cfi_endproc
 316              	.LFE3:
 318              		.align	1
 319              		.global	graphic_read
 320              		.syntax unified
 321              		.code	16
 322              		.thumb_func
 323              		.fpu softvfp
 325              	graphic_read:
 326              	.LFB4:
  66:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  67:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** uint8_t graphic_read(uint8_t controller){
 327              		.loc 1 67 0
 328              		.cfi_startproc
 329              		@ args = 0, pretend = 0, frame = 16
 330              		@ frame_needed = 1, uses_anonymous_args = 0
 331 0164 80B5     		push	{r7, lr}
 332              		.cfi_def_cfa_offset 8
 333              		.cfi_offset 7, -8
 334              		.cfi_offset 14, -4
 335 0166 84B0     		sub	sp, sp, #16
 336              		.cfi_def_cfa_offset 24
 337 0168 00AF     		add	r7, sp, #0
 338              		.cfi_def_cfa_register 7
 339 016a 0200     		movs	r2, r0
 340 016c FB1D     		adds	r3, r7, #7
 341 016e 1A70     		strb	r2, [r3]
  68:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//Set enable to 0
  69:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 342              		.loc 1 69 0
 343 0170 4020     		movs	r0, #64
 344 0172 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  70:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  71:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//set E to input high byte / output low byte
  72:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.moder = 0x00005555;
 345              		.loc 1 72 0
 346 0176 1C4B     		ldr	r3, .L27
 347 0178 1C4A     		ldr	r2, .L27+4
 348 017a 1A60     		str	r2, [r3]
  73:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  74:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS);
 349              		.loc 1 74 0
 350 017c 0120     		movs	r0, #1
 351 017e FFF7FEFF 		bl	graphic_ctrl_bit_set
  75:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RW);
 352              		.loc 1 75 0
 353 0182 0220     		movs	r0, #2
 354 0184 FFF7FEFF 		bl	graphic_ctrl_bit_set
  76:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  77:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 355              		.loc 1 77 0
 356 0188 FB1D     		adds	r3, r7, #7
 357 018a 1B78     		ldrb	r3, [r3]
 358 018c 1800     		movs	r0, r3
 359 018e FFF7FEFF 		bl	select_controller
  78:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 360              		.loc 1 78 0
 361 0192 FFF7FEFF 		bl	delay_500ns
  79:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  80:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 362              		.loc 1 80 0
 363 0196 4020     		movs	r0, #64
 364 0198 FFF7FEFF 		bl	graphic_ctrl_bit_set
  81:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 365              		.loc 1 81 0
 366 019c FFF7FEFF 		bl	delay_500ns
  82:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  83:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	// set return value to what is on the data register
  84:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	uint8_t RV = GPIO_E.idrHigh;
 367              		.loc 1 84 0
 368 01a0 114A     		ldr	r2, .L27
 369 01a2 0F23     		movs	r3, #15
 370 01a4 FB18     		adds	r3, r7, r3
 371 01a6 527C     		ldrb	r2, [r2, #17]
 372 01a8 1A70     		strb	r2, [r3]
  85:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  86:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 373              		.loc 1 86 0
 374 01aa 4020     		movs	r0, #64
 375 01ac FFF7FEFF 		bl	graphic_ctrl_bit_clear
  87:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  88:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//set E to output
  89:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.moder = 0x55555555;
 376              		.loc 1 89 0
 377 01b0 0D4B     		ldr	r3, .L27
 378 01b2 0F4A     		ldr	r2, .L27+8
 379 01b4 1A60     		str	r2, [r3]
  90:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  91:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if(controller == B_CS1) {
 380              		.loc 1 91 0
 381 01b6 FB1D     		adds	r3, r7, #7
 382 01b8 1B78     		ldrb	r3, [r3]
 383 01ba 082B     		cmp	r3, #8
 384 01bc 04D1     		bne	.L24
  92:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS1);
 385              		.loc 1 92 0
 386 01be 0820     		movs	r0, #8
 387 01c0 FFF7FEFF 		bl	select_controller
  93:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 388              		.loc 1 93 0
 389 01c4 FFF7FEFF 		bl	graphic_wait_ready
 390              	.L24:
  94:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
  95:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if(controller == B_CS2){
 391              		.loc 1 95 0
 392 01c8 FB1D     		adds	r3, r7, #7
 393 01ca 1B78     		ldrb	r3, [r3]
 394 01cc 102B     		cmp	r3, #16
 395 01ce 04D1     		bne	.L25
  96:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS2);
 396              		.loc 1 96 0
 397 01d0 1020     		movs	r0, #16
 398 01d2 FFF7FEFF 		bl	select_controller
  97:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 399              		.loc 1 97 0
 400 01d6 FFF7FEFF 		bl	graphic_wait_ready
 401              	.L25:
  98:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
  99:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 100:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	/*switch (controller) {
 101:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case B_CS1: select_controller(B_CS1); break;
 102:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case B_CS2: select_controller(B_CS2); break;
 103:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		//case B_CS1 | B_CS2: select_controller(B_CS1 | B_CS2); break;
 104:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		//default: select_controller(0);
 105:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}*/
 106:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//graphic_wait_ready();
 107:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 108:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	return RV;
 402              		.loc 1 108 0
 403 01da 0F23     		movs	r3, #15
 404 01dc FB18     		adds	r3, r7, r3
 405 01de 1B78     		ldrb	r3, [r3]
 109:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 406              		.loc 1 109 0
 407 01e0 1800     		movs	r0, r3
 408 01e2 BD46     		mov	sp, r7
 409 01e4 04B0     		add	sp, sp, #16
 410              		@ sp needed
 411 01e6 80BD     		pop	{r7, pc}
 412              	.L28:
 413              		.align	2
 414              	.L27:
 415 01e8 00100240 		.word	1073876992
 416 01ec 55550000 		.word	21845
 417 01f0 55555555 		.word	1431655765
 418              		.cfi_endproc
 419              	.LFE4:
 421              		.align	1
 422              		.global	graphic_write
 423              		.syntax unified
 424              		.code	16
 425              		.thumb_func
 426              		.fpu softvfp
 428              	graphic_write:
 429              	.LFB5:
 110:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 111:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_write(uint8_t value, uint8_t controller){
 430              		.loc 1 111 0
 431              		.cfi_startproc
 432              		@ args = 0, pretend = 0, frame = 8
 433              		@ frame_needed = 1, uses_anonymous_args = 0
 434 01f4 80B5     		push	{r7, lr}
 435              		.cfi_def_cfa_offset 8
 436              		.cfi_offset 7, -8
 437              		.cfi_offset 14, -4
 438 01f6 82B0     		sub	sp, sp, #8
 439              		.cfi_def_cfa_offset 16
 440 01f8 00AF     		add	r7, sp, #0
 441              		.cfi_def_cfa_register 7
 442 01fa 0200     		movs	r2, r0
 443 01fc FB1D     		adds	r3, r7, #7
 444 01fe 1A70     		strb	r2, [r3]
 445 0200 BB1D     		adds	r3, r7, #6
 446 0202 0A1C     		adds	r2, r1, #0
 447 0204 1A70     		strb	r2, [r3]
 112:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//datareg to value
 113:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.odrHigh = value;
 448              		.loc 1 113 0
 449 0206 1A4A     		ldr	r2, .L32
 450 0208 FB1D     		adds	r3, r7, #7
 451 020a 1B78     		ldrb	r3, [r3]
 452 020c 5375     		strb	r3, [r2, #21]
 114:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 453              		.loc 1 114 0
 454 020e BB1D     		adds	r3, r7, #6
 455 0210 1B78     		ldrb	r3, [r3]
 456 0212 1800     		movs	r0, r3
 457 0214 FFF7FEFF 		bl	select_controller
 115:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 458              		.loc 1 115 0
 459 0218 FFF7FEFF 		bl	delay_500ns
 116:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 117:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 460              		.loc 1 117 0
 461 021c 4020     		movs	r0, #64
 462 021e FFF7FEFF 		bl	graphic_ctrl_bit_set
 118:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 463              		.loc 1 118 0
 464 0222 FFF7FEFF 		bl	delay_500ns
 119:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 465              		.loc 1 119 0
 466 0226 4020     		movs	r0, #64
 467 0228 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 120:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 121:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//select actual controller, wait while we read
 122:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if (controller & B_CS1){
 468              		.loc 1 122 0
 469 022c BB1D     		adds	r3, r7, #6
 470 022e 1B78     		ldrb	r3, [r3]
 471 0230 0822     		movs	r2, #8
 472 0232 1340     		ands	r3, r2
 473 0234 04D0     		beq	.L30
 123:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS1);
 474              		.loc 1 123 0
 475 0236 0820     		movs	r0, #8
 476 0238 FFF7FEFF 		bl	select_controller
 124:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 477              		.loc 1 124 0
 478 023c FFF7FEFF 		bl	graphic_wait_ready
 479              	.L30:
 125:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 126:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if (controller & B_CS2){
 480              		.loc 1 126 0
 481 0240 BB1D     		adds	r3, r7, #6
 482 0242 1B78     		ldrb	r3, [r3]
 483 0244 1022     		movs	r2, #16
 484 0246 1340     		ands	r3, r2
 485 0248 04D0     		beq	.L31
 127:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS2);
 486              		.loc 1 127 0
 487 024a 1020     		movs	r0, #16
 488 024c FFF7FEFF 		bl	select_controller
 128:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 489              		.loc 1 128 0
 490 0250 FFF7FEFF 		bl	graphic_wait_ready
 491              	.L31:
 129:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 130:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 131:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//datareg to 0
 132:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.odrHigh = 0;
 492              		.loc 1 132 0
 493 0254 064B     		ldr	r3, .L32
 494 0256 0022     		movs	r2, #0
 495 0258 5A75     		strb	r2, [r3, #21]
 133:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 496              		.loc 1 133 0
 497 025a 4020     		movs	r0, #64
 498 025c FFF7FEFF 		bl	graphic_ctrl_bit_set
 134:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 135:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//set controller to 0
 136:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(0);
 499              		.loc 1 136 0
 500 0260 0020     		movs	r0, #0
 501 0262 FFF7FEFF 		bl	select_controller
 137:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 502              		.loc 1 137 0
 503 0266 C046     		nop
 504 0268 BD46     		mov	sp, r7
 505 026a 02B0     		add	sp, sp, #8
 506              		@ sp needed
 507 026c 80BD     		pop	{r7, pc}
 508              	.L33:
 509 026e C046     		.align	2
 510              	.L32:
 511 0270 00100240 		.word	1073876992
 512              		.cfi_endproc
 513              	.LFE5:
 515              		.align	1
 516              		.global	graphic_write_command
 517              		.syntax unified
 518              		.code	16
 519              		.thumb_func
 520              		.fpu softvfp
 522              	graphic_write_command:
 523              	.LFB6:
 138:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 139:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_write_command(uint8_t command, uint8_t controller){
 524              		.loc 1 139 0
 525              		.cfi_startproc
 526              		@ args = 0, pretend = 0, frame = 8
 527              		@ frame_needed = 1, uses_anonymous_args = 0
 528 0274 80B5     		push	{r7, lr}
 529              		.cfi_def_cfa_offset 8
 530              		.cfi_offset 7, -8
 531              		.cfi_offset 14, -4
 532 0276 82B0     		sub	sp, sp, #8
 533              		.cfi_def_cfa_offset 16
 534 0278 00AF     		add	r7, sp, #0
 535              		.cfi_def_cfa_register 7
 536 027a 0200     		movs	r2, r0
 537 027c FB1D     		adds	r3, r7, #7
 538 027e 1A70     		strb	r2, [r3]
 539 0280 BB1D     		adds	r3, r7, #6
 540 0282 0A1C     		adds	r2, r1, #0
 541 0284 1A70     		strb	r2, [r3]
 140:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 542              		.loc 1 140 0
 543 0286 4020     		movs	r0, #64
 544 0288 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 141:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 545              		.loc 1 141 0
 546 028c BB1D     		adds	r3, r7, #6
 547 028e 1B78     		ldrb	r3, [r3]
 548 0290 1800     		movs	r0, r3
 549 0292 FFF7FEFF 		bl	select_controller
 142:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS);
 550              		.loc 1 142 0
 551 0296 0120     		movs	r0, #1
 552 0298 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 143:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RW);
 553              		.loc 1 143 0
 554 029c 0220     		movs	r0, #2
 555 029e FFF7FEFF 		bl	graphic_ctrl_bit_clear
 144:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write(command, controller);
 556              		.loc 1 144 0
 557 02a2 BB1D     		adds	r3, r7, #6
 558 02a4 1A78     		ldrb	r2, [r3]
 559 02a6 FB1D     		adds	r3, r7, #7
 560 02a8 1B78     		ldrb	r3, [r3]
 561 02aa 1100     		movs	r1, r2
 562 02ac 1800     		movs	r0, r3
 563 02ae FFF7FEFF 		bl	graphic_write
 145:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 564              		.loc 1 145 0
 565 02b2 C046     		nop
 566 02b4 BD46     		mov	sp, r7
 567 02b6 02B0     		add	sp, sp, #8
 568              		@ sp needed
 569 02b8 80BD     		pop	{r7, pc}
 570              		.cfi_endproc
 571              	.LFE6:
 573              		.align	1
 574              		.global	graphic_write_data
 575              		.syntax unified
 576              		.code	16
 577              		.thumb_func
 578              		.fpu softvfp
 580              	graphic_write_data:
 581              	.LFB7:
 146:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 147:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_write_data(uint8_t data, uint8_t controller){
 582              		.loc 1 147 0
 583              		.cfi_startproc
 584              		@ args = 0, pretend = 0, frame = 8
 585              		@ frame_needed = 1, uses_anonymous_args = 0
 586 02ba 80B5     		push	{r7, lr}
 587              		.cfi_def_cfa_offset 8
 588              		.cfi_offset 7, -8
 589              		.cfi_offset 14, -4
 590 02bc 82B0     		sub	sp, sp, #8
 591              		.cfi_def_cfa_offset 16
 592 02be 00AF     		add	r7, sp, #0
 593              		.cfi_def_cfa_register 7
 594 02c0 0200     		movs	r2, r0
 595 02c2 FB1D     		adds	r3, r7, #7
 596 02c4 1A70     		strb	r2, [r3]
 597 02c6 BB1D     		adds	r3, r7, #6
 598 02c8 0A1C     		adds	r2, r1, #0
 599 02ca 1A70     		strb	r2, [r3]
 148:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 600              		.loc 1 148 0
 601 02cc 4020     		movs	r0, #64
 602 02ce FFF7FEFF 		bl	graphic_ctrl_bit_clear
 149:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 603              		.loc 1 149 0
 604 02d2 BB1D     		adds	r3, r7, #6
 605 02d4 1B78     		ldrb	r3, [r3]
 606 02d6 1800     		movs	r0, r3
 607 02d8 FFF7FEFF 		bl	select_controller
 150:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS);
 608              		.loc 1 150 0
 609 02dc 0120     		movs	r0, #1
 610 02de FFF7FEFF 		bl	graphic_ctrl_bit_set
 151:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RW);
 611              		.loc 1 151 0
 612 02e2 0220     		movs	r0, #2
 613 02e4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 152:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write(data, controller);
 614              		.loc 1 152 0
 615 02e8 BB1D     		adds	r3, r7, #6
 616 02ea 1A78     		ldrb	r2, [r3]
 617 02ec FB1D     		adds	r3, r7, #7
 618 02ee 1B78     		ldrb	r3, [r3]
 619 02f0 1100     		movs	r1, r2
 620 02f2 1800     		movs	r0, r3
 621 02f4 FFF7FEFF 		bl	graphic_write
 153:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 622              		.loc 1 153 0
 623 02f8 C046     		nop
 624 02fa BD46     		mov	sp, r7
 625 02fc 02B0     		add	sp, sp, #8
 626              		@ sp needed
 627 02fe 80BD     		pop	{r7, pc}
 628              		.cfi_endproc
 629              	.LFE7:
 631              		.align	1
 632              		.global	graphic_read_data
 633              		.syntax unified
 634              		.code	16
 635              		.thumb_func
 636              		.fpu softvfp
 638              	graphic_read_data:
 639              	.LFB8:
 154:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 155:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** uint8_t graphic_read_data(uint8_t controller){
 640              		.loc 1 155 0
 641              		.cfi_startproc
 642              		@ args = 0, pretend = 0, frame = 8
 643              		@ frame_needed = 1, uses_anonymous_args = 0
 644 0300 80B5     		push	{r7, lr}
 645              		.cfi_def_cfa_offset 8
 646              		.cfi_offset 7, -8
 647              		.cfi_offset 14, -4
 648 0302 82B0     		sub	sp, sp, #8
 649              		.cfi_def_cfa_offset 16
 650 0304 00AF     		add	r7, sp, #0
 651              		.cfi_def_cfa_register 7
 652 0306 0200     		movs	r2, r0
 653 0308 FB1D     		adds	r3, r7, #7
 654 030a 1A70     		strb	r2, [r3]
 156:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	(void) graphic_read(controller);
 655              		.loc 1 156 0
 656 030c FB1D     		adds	r3, r7, #7
 657 030e 1B78     		ldrb	r3, [r3]
 658 0310 1800     		movs	r0, r3
 659 0312 FFF7FEFF 		bl	graphic_read
 157:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	return graphic_read(controller);
 660              		.loc 1 157 0
 661 0316 FB1D     		adds	r3, r7, #7
 662 0318 1B78     		ldrb	r3, [r3]
 663 031a 1800     		movs	r0, r3
 664 031c FFF7FEFF 		bl	graphic_read
 665 0320 0300     		movs	r3, r0
 158:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 666              		.loc 1 158 0
 667 0322 1800     		movs	r0, r3
 668 0324 BD46     		mov	sp, r7
 669 0326 02B0     		add	sp, sp, #8
 670              		@ sp needed
 671 0328 80BD     		pop	{r7, pc}
 672              		.cfi_endproc
 673              	.LFE8:
 675              		.align	1
 676              		.global	init_app
 677              		.syntax unified
 678              		.code	16
 679              		.thumb_func
 680              		.fpu softvfp
 682              	init_app:
 683              	.LFB9:
 159:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 160:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void init_app(void){
 684              		.loc 1 160 0
 685              		.cfi_startproc
 686              		@ args = 0, pretend = 0, frame = 0
 687              		@ frame_needed = 1, uses_anonymous_args = 0
 688 032a 80B5     		push	{r7, lr}
 689              		.cfi_def_cfa_offset 8
 690              		.cfi_offset 7, -8
 691              		.cfi_offset 14, -4
 692 032c 00AF     		add	r7, sp, #0
 693              		.cfi_def_cfa_register 7
 161:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//port E is output
 162:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.moder = 0x55555555;
 694              		.loc 1 162 0
 695 032e 044B     		ldr	r3, .L39
 696 0330 044A     		ldr	r2, .L39+4
 697 0332 1A60     		str	r2, [r3]
 163:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.ospeedr = 0x55555555;
 698              		.loc 1 163 0
 699 0334 024B     		ldr	r3, .L39
 700 0336 034A     		ldr	r2, .L39+4
 701 0338 9A60     		str	r2, [r3, #8]
 164:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 702              		.loc 1 164 0
 703 033a C046     		nop
 704 033c BD46     		mov	sp, r7
 705              		@ sp needed
 706 033e 80BD     		pop	{r7, pc}
 707              	.L40:
 708              		.align	2
 709              	.L39:
 710 0340 00100240 		.word	1073876992
 711 0344 55555555 		.word	1431655765
 712              		.cfi_endproc
 713              	.LFE9:
 715              		.align	1
 716              		.global	graphic_initialize
 717              		.syntax unified
 718              		.code	16
 719              		.thumb_func
 720              		.fpu softvfp
 722              	graphic_initialize:
 723              	.LFB10:
 165:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 166:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_initialize(void){
 724              		.loc 1 166 0
 725              		.cfi_startproc
 726              		@ args = 0, pretend = 0, frame = 0
 727              		@ frame_needed = 1, uses_anonymous_args = 0
 728 0348 80B5     		push	{r7, lr}
 729              		.cfi_def_cfa_offset 8
 730              		.cfi_offset 7, -8
 731              		.cfi_offset 14, -4
 732 034a 00AF     		add	r7, sp, #0
 733              		.cfi_def_cfa_register 7
 167:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 734              		.loc 1 167 0
 735 034c 4020     		movs	r0, #64
 736 034e FFF7FEFF 		bl	graphic_ctrl_bit_set
 168:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 169:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_mikro(10);
 737              		.loc 1 169 0
 738 0352 0A20     		movs	r0, #10
 739 0354 FFF7FEFF 		bl	delay_mikro
 170:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 171:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(0);
 740              		.loc 1 171 0
 741 0358 0020     		movs	r0, #0
 742 035a FFF7FEFF 		bl	select_controller
 172:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RST);
 743              		.loc 1 172 0
 744 035e 2020     		movs	r0, #32
 745 0360 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 173:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 746              		.loc 1 173 0
 747 0364 4020     		movs	r0, #64
 748 0366 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 174:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 175:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_milli(30);
 749              		.loc 1 175 0
 750 036a 1E20     		movs	r0, #30
 751 036c FFF7FEFF 		bl	delay_milli
 176:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RST);
 752              		.loc 1 176 0
 753 0370 2020     		movs	r0, #32
 754 0372 FFF7FEFF 		bl	graphic_ctrl_bit_set
 177:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 178:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_OFF, (B_CS1 | B_CS2));
 755              		.loc 1 178 0
 756 0376 1821     		movs	r1, #24
 757 0378 3E20     		movs	r0, #62
 758 037a FFF7FEFF 		bl	graphic_write_command
 179:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_ON, (B_CS1 | B_CS2));
 759              		.loc 1 179 0
 760 037e 1821     		movs	r1, #24
 761 0380 3F20     		movs	r0, #63
 762 0382 FFF7FEFF 		bl	graphic_write_command
 180:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_DISP_START, (B_CS1 | B_CS2));
 763              		.loc 1 180 0
 764 0386 1821     		movs	r1, #24
 765 0388 C020     		movs	r0, #192
 766 038a FFF7FEFF 		bl	graphic_write_command
 181:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD, (B_CS1 | B_CS2));
 767              		.loc 1 181 0
 768 038e 1821     		movs	r1, #24
 769 0390 4020     		movs	r0, #64
 770 0392 FFF7FEFF 		bl	graphic_write_command
 182:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE, (B_CS1 | B_CS2));
 771              		.loc 1 182 0
 772 0396 1821     		movs	r1, #24
 773 0398 B820     		movs	r0, #184
 774 039a FFF7FEFF 		bl	graphic_write_command
 183:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 184:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(0);
 775              		.loc 1 184 0
 776 039e 0020     		movs	r0, #0
 777 03a0 FFF7FEFF 		bl	select_controller
 185:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 778              		.loc 1 185 0
 779 03a4 C046     		nop
 780 03a6 BD46     		mov	sp, r7
 781              		@ sp needed
 782 03a8 80BD     		pop	{r7, pc}
 783              		.cfi_endproc
 784              	.LFE10:
 786              		.align	1
 787              		.global	graphic_clear_screen
 788              		.syntax unified
 789              		.code	16
 790              		.thumb_func
 791              		.fpu softvfp
 793              	graphic_clear_screen:
 794              	.LFB11:
 186:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 187:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_clear_screen(void){
 795              		.loc 1 187 0
 796              		.cfi_startproc
 797              		@ args = 0, pretend = 0, frame = 8
 798              		@ frame_needed = 1, uses_anonymous_args = 0
 799 03aa 80B5     		push	{r7, lr}
 800              		.cfi_def_cfa_offset 8
 801              		.cfi_offset 7, -8
 802              		.cfi_offset 14, -4
 803 03ac 82B0     		sub	sp, sp, #8
 804              		.cfi_def_cfa_offset 16
 805 03ae 00AF     		add	r7, sp, #0
 806              		.cfi_def_cfa_register 7
 807              	.LBB2:
 188:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	for(uint8_t page = 0; page < 8; page++){
 808              		.loc 1 188 0
 809 03b0 FB1D     		adds	r3, r7, #7
 810 03b2 0022     		movs	r2, #0
 811 03b4 1A70     		strb	r2, [r3]
 812 03b6 23E0     		b	.L43
 813              	.L46:
 189:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command((LCD_SET_PAGE | page), (B_CS1 | B_CS2));
 814              		.loc 1 189 0
 815 03b8 FB1D     		adds	r3, r7, #7
 816 03ba 1B78     		ldrb	r3, [r3]
 817 03bc 4822     		movs	r2, #72
 818 03be 5242     		rsbs	r2, r2, #0
 819 03c0 1343     		orrs	r3, r2
 820 03c2 DBB2     		uxtb	r3, r3
 821 03c4 1821     		movs	r1, #24
 822 03c6 1800     		movs	r0, r3
 823 03c8 FFF7FEFF 		bl	graphic_write_command
 190:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD, (B_CS1 | B_CS2));
 824              		.loc 1 190 0
 825 03cc 1821     		movs	r1, #24
 826 03ce 4020     		movs	r0, #64
 827 03d0 FFF7FEFF 		bl	graphic_write_command
 828              	.LBB3:
 191:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		
 192:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		for(uint8_t add = 0; add < 64; add++){
 829              		.loc 1 192 0
 830 03d4 BB1D     		adds	r3, r7, #6
 831 03d6 0022     		movs	r2, #0
 832 03d8 1A70     		strb	r2, [r3]
 833 03da 08E0     		b	.L44
 834              	.L45:
 193:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, (B_CS1 | B_CS2));
 835              		.loc 1 193 0 discriminator 3
 836 03dc 1821     		movs	r1, #24
 837 03de 0020     		movs	r0, #0
 838 03e0 FFF7FEFF 		bl	graphic_write_data
 192:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, (B_CS1 | B_CS2));
 839              		.loc 1 192 0 discriminator 3
 840 03e4 BB1D     		adds	r3, r7, #6
 841 03e6 1A78     		ldrb	r2, [r3]
 842 03e8 BB1D     		adds	r3, r7, #6
 843 03ea 0132     		adds	r2, r2, #1
 844 03ec 1A70     		strb	r2, [r3]
 845              	.L44:
 192:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, (B_CS1 | B_CS2));
 846              		.loc 1 192 0 is_stmt 0 discriminator 1
 847 03ee BB1D     		adds	r3, r7, #6
 848 03f0 1B78     		ldrb	r3, [r3]
 849 03f2 3F2B     		cmp	r3, #63
 850 03f4 F2D9     		bls	.L45
 851              	.LBE3:
 188:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command((LCD_SET_PAGE | page), (B_CS1 | B_CS2));
 852              		.loc 1 188 0 is_stmt 1 discriminator 2
 853 03f6 FB1D     		adds	r3, r7, #7
 854 03f8 1A78     		ldrb	r2, [r3]
 855 03fa FB1D     		adds	r3, r7, #7
 856 03fc 0132     		adds	r2, r2, #1
 857 03fe 1A70     		strb	r2, [r3]
 858              	.L43:
 188:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command((LCD_SET_PAGE | page), (B_CS1 | B_CS2));
 859              		.loc 1 188 0 is_stmt 0 discriminator 1
 860 0400 FB1D     		adds	r3, r7, #7
 861 0402 1B78     		ldrb	r3, [r3]
 862 0404 072B     		cmp	r3, #7
 863 0406 D7D9     		bls	.L46
 864              	.LBE2:
 194:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		}
 195:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 196:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }...
 865              		.loc 1 196 0 is_stmt 1
 866 0408 C046     		nop
 867 040a BD46     		mov	sp, r7
 868 040c 02B0     		add	sp, sp, #8
 869              		@ sp needed
 870 040e 80BD     		pop	{r7, pc}
 871              		.cfi_endproc
 872              	.LFE11:
 874              	.Letext0:
 875              		.file 2 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay/gpio.h"
 876              		.file 3 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay/graphicdisplay.h"
