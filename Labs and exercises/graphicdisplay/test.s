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
  24              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay/graphicdisplay.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** #include "graphicdisplay.h"
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_ctrl_bit_set(uint8_t x){
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
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t control_register = GPIO_E.odrLow;
  40              		.loc 1 4 0
  41 000c 0C4A     		ldr	r2, .L2
  42 000e 0F23     		movs	r3, #15
  43 0010 FB18     		adds	r3, r7, r3
  44 0012 127D     		ldrb	r2, [r2, #20]
  45 0014 1A70     		strb	r2, [r3]
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register |= (x | B_SELECT);
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
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.odrLow = control_register;
  59              		.loc 1 6 0
  60 002e 044A     		ldr	r2, .L2
  61 0030 0F23     		movs	r3, #15
  62 0032 FB18     		adds	r3, r7, r3
  63 0034 1B78     		ldrb	r3, [r3]
  64 0036 1375     		strb	r3, [r2, #20]
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
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
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_ctrl_bit_clear(uint8_t x){
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
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t control_register = GPIO_E.odrLow;
 102              		.loc 1 10 0
 103 0050 114A     		ldr	r2, .L5
 104 0052 0F23     		movs	r3, #15
 105 0054 FB18     		adds	r3, r7, r3
 106 0056 127D     		ldrb	r2, [r2, #20]
 107 0058 1A70     		strb	r2, [r3]
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register &= ~x;
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
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register |= B_SELECT;
 123              		.loc 1 12 0
 124 0076 0F23     		movs	r3, #15
 125 0078 FB18     		adds	r3, r7, r3
 126 007a 0F22     		movs	r2, #15
 127 007c BA18     		adds	r2, r7, r2
 128 007e 1278     		ldrb	r2, [r2]
 129 0080 0421     		movs	r1, #4
 130 0082 0A43     		orrs	r2, r1
 131 0084 1A70     		strb	r2, [r3]
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.odrLow = control_register;
 132              		.loc 1 13 0
 133 0086 044A     		ldr	r2, .L5
 134 0088 0F23     		movs	r3, #15
 135 008a FB18     		adds	r3, r7, r3
 136 008c 1B78     		ldrb	r3, [r3]
 137 008e 1375     		strb	r3, [r2, #20]
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
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
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void select_controller(uint8_t controller){
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
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     switch(controller){
 175              		.loc 1 17 0
 176 00a8 FB1D     		adds	r3, r7, #7
 177 00aa 1B78     		ldrb	r3, [r3]
 178 00ac 082B     		cmp	r3, #8
 179 00ae 0CD0     		beq	.L9
 180 00b0 02DC     		bgt	.L10
 181 00b2 002B     		cmp	r3, #0
 182 00b4 05D0     		beq	.L11
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case 0: 
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_clear(B_CS1 | B_CS2);
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1: 
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_clear(B_CS2);
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS1);
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS2:
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_clear(B_CS1);
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS2);
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1 | B_CS2:
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS1 | B_CS2);
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 183              		.loc 1 33 0
 184 00b6 1AE0     		b	.L14
 185              	.L10:
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     switch(controller){
 186              		.loc 1 17 0
 187 00b8 102B     		cmp	r3, #16
 188 00ba 0DD0     		beq	.L12
 189 00bc 182B     		cmp	r3, #24
 190 00be 12D0     		beq	.L13
 191              		.loc 1 33 0
 192 00c0 15E0     		b	.L14
 193              	.L11:
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 194              		.loc 1 19 0
 195 00c2 1820     		movs	r0, #24
 196 00c4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1: 
 197              		.loc 1 20 0
 198 00c8 11E0     		b	.L8
 199              	.L9:
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS1);
 200              		.loc 1 22 0
 201 00ca 1020     		movs	r0, #16
 202 00cc FFF7FEFF 		bl	graphic_ctrl_bit_clear
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 203              		.loc 1 23 0
 204 00d0 0820     		movs	r0, #8
 205 00d2 FFF7FEFF 		bl	graphic_ctrl_bit_set
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS2:
 206              		.loc 1 24 0
 207 00d6 0AE0     		b	.L8
 208              	.L12:
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS2);
 209              		.loc 1 26 0
 210 00d8 0820     		movs	r0, #8
 211 00da FFF7FEFF 		bl	graphic_ctrl_bit_clear
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 212              		.loc 1 27 0
 213 00de 1020     		movs	r0, #16
 214 00e0 FFF7FEFF 		bl	graphic_ctrl_bit_set
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1 | B_CS2:
 215              		.loc 1 28 0
 216 00e4 03E0     		b	.L8
 217              	.L13:
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 218              		.loc 1 30 0
 219 00e6 1820     		movs	r0, #24
 220 00e8 FFF7FEFF 		bl	graphic_ctrl_bit_set
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 221              		.loc 1 31 0
 222 00ec C046     		nop
 223              	.L8:
 224              	.L14:
 225              		.loc 1 33 0
 226 00ee C046     		nop
 227 00f0 BD46     		mov	sp, r7
 228 00f2 02B0     		add	sp, sp, #8
 229              		@ sp needed
 230 00f4 80BD     		pop	{r7, pc}
 231              		.cfi_endproc
 232              	.LFE2:
 234              		.align	1
 235              		.global	graphic_wait_ready
 236              		.syntax unified
 237              		.code	16
 238              		.thumb_func
 239              		.fpu softvfp
 241              	graphic_wait_ready:
 242              	.LFB3:
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_wait_ready(void){
 243              		.loc 1 35 0
 244              		.cfi_startproc
 245              		@ args = 0, pretend = 0, frame = 0
 246              		@ frame_needed = 1, uses_anonymous_args = 0
 247 00f6 80B5     		push	{r7, lr}
 248              		.cfi_def_cfa_offset 8
 249              		.cfi_offset 7, -8
 250              		.cfi_offset 14, -4
 251 00f8 00AF     		add	r7, sp, #0
 252              		.cfi_def_cfa_register 7
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Enable = 0
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_clear(B_E);
 253              		.loc 1 37 0
 254 00fa 4020     		movs	r0, #64
 255 00fc FFF7FEFF 		bl	graphic_ctrl_bit_clear
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // E: 15-8 = input, 7-0 = output
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.moder = 0x00005555;
 256              		.loc 1 39 0
 257 0100 114B     		ldr	r3, .L21
 258 0102 124A     		ldr	r2, .L21+4
 259 0104 1A60     		str	r2, [r3]
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // RS = 0, RW = 1
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_clear(B_RS);
 260              		.loc 1 42 0
 261 0106 0120     		movs	r0, #1
 262 0108 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_set(B_RW);
 263              		.loc 1 43 0
 264 010c 0220     		movs	r0, #2
 265 010e FFF7FEFF 		bl	graphic_ctrl_bit_set
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     delay_500ns();
 266              		.loc 1 44 0
 267 0112 FFF7FEFF 		bl	delay_500ns
 268              	.L18:
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     while(1){
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Enable = 1
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         graphic_ctrl_bit_set(B_E);
 269              		.loc 1 48 0
 270 0116 4020     		movs	r0, #64
 271 0118 FFF7FEFF 		bl	graphic_ctrl_bit_set
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 272              		.loc 1 49 0
 273 011c FFF7FEFF 		bl	delay_500ns
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Enable = 0
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         graphic_ctrl_bit_clear(B_E);
 274              		.loc 1 51 0
 275 0120 4020     		movs	r0, #64
 276 0122 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Exit loop if not busy
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         if((GPIO_E.idrHigh & 0x80) != 0){
 277              		.loc 1 54 0
 278 0126 084B     		ldr	r3, .L21
 279 0128 5B7C     		ldrb	r3, [r3, #17]
 280 012a DBB2     		uxtb	r3, r3
 281 012c 5BB2     		sxtb	r3, r3
 282 012e 002B     		cmp	r3, #0
 283 0130 00DB     		blt	.L20
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 284              		.loc 1 48 0
 285 0132 F0E7     		b	.L18
 286              	.L20:
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 287              		.loc 1 55 0
 288 0134 C046     		nop
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         } 
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Enable = 1
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_set(B_E);
 289              		.loc 1 60 0
 290 0136 4020     		movs	r0, #64
 291 0138 FFF7FEFF 		bl	graphic_ctrl_bit_set
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // E: 15-0 = output
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.moder = 0x55555555;
 292              		.loc 1 62 0
 293 013c 024B     		ldr	r3, .L21
 294 013e 044A     		ldr	r2, .L21+8
 295 0140 1A60     		str	r2, [r3]
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 296              		.loc 1 63 0
 297 0142 C046     		nop
 298 0144 BD46     		mov	sp, r7
 299              		@ sp needed
 300 0146 80BD     		pop	{r7, pc}
 301              	.L22:
 302              		.align	2
 303              	.L21:
 304 0148 00100240 		.word	1073876992
 305 014c 55550000 		.word	21845
 306 0150 55555555 		.word	1431655765
 307              		.cfi_endproc
 308              	.LFE3:
 310              		.align	1
 311              		.global	graphic_read
 312              		.syntax unified
 313              		.code	16
 314              		.thumb_func
 315              		.fpu softvfp
 317              	graphic_read:
 318              	.LFB4:
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** uint8_t graphic_read(uint8_t controller){
 319              		.loc 1 65 0
 320              		.cfi_startproc
 321              		@ args = 0, pretend = 0, frame = 8
 322              		@ frame_needed = 1, uses_anonymous_args = 0
 323 0154 80B5     		push	{r7, lr}
 324              		.cfi_def_cfa_offset 8
 325              		.cfi_offset 7, -8
 326              		.cfi_offset 14, -4
 327 0156 82B0     		sub	sp, sp, #8
 328              		.cfi_def_cfa_offset 16
 329 0158 00AF     		add	r7, sp, #0
 330              		.cfi_def_cfa_register 7
 331 015a 0200     		movs	r2, r0
 332 015c FB1D     		adds	r3, r7, #7
 333 015e 1A70     		strb	r2, [r3]
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 334              		.loc 1 67 0
 335 0160 C046     		nop
 336 0162 1800     		movs	r0, r3
 337 0164 BD46     		mov	sp, r7
 338 0166 02B0     		add	sp, sp, #8
 339              		@ sp needed
 340 0168 80BD     		pop	{r7, pc}
 341              		.cfi_endproc
 342              	.LFE4:
 344              	.Letext0:
 345              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay/gpio.h"
 346              		.file 3 "C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay/graphicdisplay.h"
