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
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register &= (~x);
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
 245              		@ args = 0, pretend = 0, frame = 8
 246              		@ frame_needed = 1, uses_anonymous_args = 0
 247 00f6 80B5     		push	{r7, lr}
 248              		.cfi_def_cfa_offset 8
 249              		.cfi_offset 7, -8
 250              		.cfi_offset 14, -4
 251 00f8 82B0     		sub	sp, sp, #8
 252              		.cfi_def_cfa_offset 16
 253 00fa 00AF     		add	r7, sp, #0
 254              		.cfi_def_cfa_register 7
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t display_busy_status;
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Enable = 0
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_clear(B_E);
 255              		.loc 1 38 0
 256 00fc 4020     		movs	r0, #64
 257 00fe FFF7FEFF 		bl	graphic_ctrl_bit_clear
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // E: 15-8 = input, 7-0 = output
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.moder = 0x00005555;
 258              		.loc 1 40 0
 259 0102 144B     		ldr	r3, .L21
 260 0104 144A     		ldr	r2, .L21+4
 261 0106 1A60     		str	r2, [r3]
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // RS = 0, RW = 1
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_clear(B_RS);
 262              		.loc 1 43 0
 263 0108 0120     		movs	r0, #1
 264 010a FFF7FEFF 		bl	graphic_ctrl_bit_clear
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_set(B_RW);
 265              		.loc 1 44 0
 266 010e 0220     		movs	r0, #2
 267 0110 FFF7FEFF 		bl	graphic_ctrl_bit_set
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     delay_500ns();
 268              		.loc 1 45 0
 269 0114 FFF7FEFF 		bl	delay_500ns
 270              	.L18:
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     while(1){
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Enable = 1
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         graphic_ctrl_bit_set(B_E);
 271              		.loc 1 49 0
 272 0118 4020     		movs	r0, #64
 273 011a FFF7FEFF 		bl	graphic_ctrl_bit_set
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 274              		.loc 1 50 0
 275 011e FFF7FEFF 		bl	delay_500ns
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Enable = 0
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         graphic_ctrl_bit_clear(B_E);
 276              		.loc 1 52 0
 277 0122 4020     		movs	r0, #64
 278 0124 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 279              		.loc 1 53 0
 280 0128 FFF7FEFF 		bl	delay_500ns
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Exit loop if not busy
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         display_busy_status = GPIO_E.idrHigh & LCD_BUSY;
 281              		.loc 1 55 0
 282 012c 094B     		ldr	r3, .L21
 283 012e 5B7C     		ldrb	r3, [r3, #17]
 284 0130 DAB2     		uxtb	r2, r3
 285 0132 FB1D     		adds	r3, r7, #7
 286 0134 7F21     		movs	r1, #127
 287 0136 8A43     		bics	r2, r1
 288 0138 1A70     		strb	r2, [r3]
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         if(display_busy_status == 0){
 289              		.loc 1 56 0
 290 013a FB1D     		adds	r3, r7, #7
 291 013c 1B78     		ldrb	r3, [r3]
 292 013e 002B     		cmp	r3, #0
 293 0140 00D0     		beq	.L20
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 294              		.loc 1 49 0
 295 0142 E9E7     		b	.L18
 296              	.L20:
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 297              		.loc 1 57 0
 298 0144 C046     		nop
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         } 
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Enable = 1
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // graphic_ctrl_bit_set(B_E); // Commented out to check if this works because it works for NaN
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // E: 15-0 = output
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.moder = 0x55555555;
 299              		.loc 1 64 0
 300 0146 034B     		ldr	r3, .L21
 301 0148 044A     		ldr	r2, .L21+8
 302 014a 1A60     		str	r2, [r3]
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 303              		.loc 1 65 0
 304 014c C046     		nop
 305 014e BD46     		mov	sp, r7
 306 0150 02B0     		add	sp, sp, #8
 307              		@ sp needed
 308 0152 80BD     		pop	{r7, pc}
 309              	.L22:
 310              		.align	2
 311              	.L21:
 312 0154 00100240 		.word	1073876992
 313 0158 55550000 		.word	21845
 314 015c 55555555 		.word	1431655765
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
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** uint8_t graphic_read(uint8_t controller){
 327              		.loc 1 67 0
 328              		.cfi_startproc
 329              		@ args = 0, pretend = 0, frame = 16
 330              		@ frame_needed = 1, uses_anonymous_args = 0
 331 0160 80B5     		push	{r7, lr}
 332              		.cfi_def_cfa_offset 8
 333              		.cfi_offset 7, -8
 334              		.cfi_offset 14, -4
 335 0162 84B0     		sub	sp, sp, #16
 336              		.cfi_def_cfa_offset 24
 337 0164 00AF     		add	r7, sp, #0
 338              		.cfi_def_cfa_register 7
 339 0166 0200     		movs	r2, r0
 340 0168 FB1D     		adds	r3, r7, #7
 341 016a 1A70     		strb	r2, [r3]
  68:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//Set enable to 0
  69:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 342              		.loc 1 69 0
 343 016c 4020     		movs	r0, #64
 344 016e FFF7FEFF 		bl	graphic_ctrl_bit_clear
  70:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//set E to input high byte / output low byte
  72:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.moder = 0x00005555;
 345              		.loc 1 72 0
 346 0172 124B     		ldr	r3, .L25
 347 0174 124A     		ldr	r2, .L25+4
 348 0176 1A60     		str	r2, [r3]
  73:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  74:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS | B_RW);
 349              		.loc 1 74 0
 350 0178 0320     		movs	r0, #3
 351 017a FFF7FEFF 		bl	graphic_ctrl_bit_set
  75:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  76:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 352              		.loc 1 76 0
 353 017e FB1D     		adds	r3, r7, #7
 354 0180 1B78     		ldrb	r3, [r3]
 355 0182 1800     		movs	r0, r3
 356 0184 FFF7FEFF 		bl	select_controller
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 357              		.loc 1 77 0
 358 0188 FFF7FEFF 		bl	delay_500ns
  78:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 359              		.loc 1 79 0
 360 018c 4020     		movs	r0, #64
 361 018e FFF7FEFF 		bl	graphic_ctrl_bit_set
  80:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 362              		.loc 1 80 0
 363 0192 FFF7FEFF 		bl	delay_500ns
  81:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  82:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	// set return value to what is on the data register
  83:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	uint8_t RV = GPIO_E.idrHigh;
 364              		.loc 1 83 0
 365 0196 094A     		ldr	r2, .L25
 366 0198 0F23     		movs	r3, #15
 367 019a FB18     		adds	r3, r7, r3
 368 019c 527C     		ldrb	r2, [r2, #17]
 369 019e 1A70     		strb	r2, [r3]
  84:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  85:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 370              		.loc 1 85 0
 371 01a0 4020     		movs	r0, #64
 372 01a2 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  86:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  87:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//set E to output
  88:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.moder = 0x55555555;
 373              		.loc 1 88 0
 374 01a6 054B     		ldr	r3, .L25
 375 01a8 064A     		ldr	r2, .L25+8
 376 01aa 1A60     		str	r2, [r3]
  89:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  90:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if((controller & B_CS1) == 1) {
  91:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS1);
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
  93:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
  94:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if((controller & B_CS2) == 1){
  95:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS2);
  96:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
  97:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
  98:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  99:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	/*switch (controller) {
 100:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case B_CS1: select_controller(B_CS1); break;
 101:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case B_CS2: select_controller(B_CS2); break;
 102:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		//case B_CS1 | B_CS2: select_controller(B_CS1 | B_CS2); break;
 103:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		//default: select_controller(0);
 104:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}*/
 105:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//graphic_wait_ready();
 106:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 107:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	return RV;
 377              		.loc 1 107 0
 378 01ac 0F23     		movs	r3, #15
 379 01ae FB18     		adds	r3, r7, r3
 380 01b0 1B78     		ldrb	r3, [r3]
 108:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 381              		.loc 1 108 0
 382 01b2 1800     		movs	r0, r3
 383 01b4 BD46     		mov	sp, r7
 384 01b6 04B0     		add	sp, sp, #16
 385              		@ sp needed
 386 01b8 80BD     		pop	{r7, pc}
 387              	.L26:
 388 01ba C046     		.align	2
 389              	.L25:
 390 01bc 00100240 		.word	1073876992
 391 01c0 55550000 		.word	21845
 392 01c4 55555555 		.word	1431655765
 393              		.cfi_endproc
 394              	.LFE4:
 396              		.align	1
 397              		.global	graphic_write
 398              		.syntax unified
 399              		.code	16
 400              		.thumb_func
 401              		.fpu softvfp
 403              	graphic_write:
 404              	.LFB5:
 109:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 110:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_write(uint8_t value, uint8_t controller){
 405              		.loc 1 110 0
 406              		.cfi_startproc
 407              		@ args = 0, pretend = 0, frame = 8
 408              		@ frame_needed = 1, uses_anonymous_args = 0
 409 01c8 80B5     		push	{r7, lr}
 410              		.cfi_def_cfa_offset 8
 411              		.cfi_offset 7, -8
 412              		.cfi_offset 14, -4
 413 01ca 82B0     		sub	sp, sp, #8
 414              		.cfi_def_cfa_offset 16
 415 01cc 00AF     		add	r7, sp, #0
 416              		.cfi_def_cfa_register 7
 417 01ce 0200     		movs	r2, r0
 418 01d0 FB1D     		adds	r3, r7, #7
 419 01d2 1A70     		strb	r2, [r3]
 420 01d4 BB1D     		adds	r3, r7, #6
 421 01d6 0A1C     		adds	r2, r1, #0
 422 01d8 1A70     		strb	r2, [r3]
 111:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//datareg to value
 112:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.odrHigh = value;
 423              		.loc 1 112 0
 424 01da 1A4A     		ldr	r2, .L30
 425 01dc FB1D     		adds	r3, r7, #7
 426 01de 1B78     		ldrb	r3, [r3]
 427 01e0 5375     		strb	r3, [r2, #21]
 113:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 428              		.loc 1 113 0
 429 01e2 BB1D     		adds	r3, r7, #6
 430 01e4 1B78     		ldrb	r3, [r3]
 431 01e6 1800     		movs	r0, r3
 432 01e8 FFF7FEFF 		bl	select_controller
 114:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 433              		.loc 1 114 0
 434 01ec FFF7FEFF 		bl	delay_500ns
 115:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 116:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 435              		.loc 1 116 0
 436 01f0 4020     		movs	r0, #64
 437 01f2 FFF7FEFF 		bl	graphic_ctrl_bit_set
 117:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 438              		.loc 1 117 0
 439 01f6 FFF7FEFF 		bl	delay_500ns
 118:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 440              		.loc 1 118 0
 441 01fa 4020     		movs	r0, #64
 442 01fc FFF7FEFF 		bl	graphic_ctrl_bit_clear
 119:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//select actual controller, wait while we read
 121:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if (controller & B_CS1){
 443              		.loc 1 121 0
 444 0200 BB1D     		adds	r3, r7, #6
 445 0202 1B78     		ldrb	r3, [r3]
 446 0204 0822     		movs	r2, #8
 447 0206 1340     		ands	r3, r2
 448 0208 04D0     		beq	.L28
 122:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS1);
 449              		.loc 1 122 0
 450 020a 0820     		movs	r0, #8
 451 020c FFF7FEFF 		bl	select_controller
 123:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 452              		.loc 1 123 0
 453 0210 FFF7FEFF 		bl	graphic_wait_ready
 454              	.L28:
 124:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 125:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if (controller & B_CS2){
 455              		.loc 1 125 0
 456 0214 BB1D     		adds	r3, r7, #6
 457 0216 1B78     		ldrb	r3, [r3]
 458 0218 1022     		movs	r2, #16
 459 021a 1340     		ands	r3, r2
 460 021c 04D0     		beq	.L29
 126:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS2);
 461              		.loc 1 126 0
 462 021e 1020     		movs	r0, #16
 463 0220 FFF7FEFF 		bl	select_controller
 127:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 464              		.loc 1 127 0
 465 0224 FFF7FEFF 		bl	graphic_wait_ready
 466              	.L29:
 128:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 129:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 130:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//datareg to 0
 131:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.odrHigh = 0;
 467              		.loc 1 131 0
 468 0228 064B     		ldr	r3, .L30
 469 022a 0022     		movs	r2, #0
 470 022c 5A75     		strb	r2, [r3, #21]
 132:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 471              		.loc 1 132 0
 472 022e 4020     		movs	r0, #64
 473 0230 FFF7FEFF 		bl	graphic_ctrl_bit_set
 133:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 134:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//set controller to 0
 135:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(0);
 474              		.loc 1 135 0
 475 0234 0020     		movs	r0, #0
 476 0236 FFF7FEFF 		bl	select_controller
 136:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 477              		.loc 1 136 0
 478 023a C046     		nop
 479 023c BD46     		mov	sp, r7
 480 023e 02B0     		add	sp, sp, #8
 481              		@ sp needed
 482 0240 80BD     		pop	{r7, pc}
 483              	.L31:
 484 0242 C046     		.align	2
 485              	.L30:
 486 0244 00100240 		.word	1073876992
 487              		.cfi_endproc
 488              	.LFE5:
 490              		.align	1
 491              		.global	graphic_write_command
 492              		.syntax unified
 493              		.code	16
 494              		.thumb_func
 495              		.fpu softvfp
 497              	graphic_write_command:
 498              	.LFB6:
 137:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 138:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_write_command(uint8_t command, uint8_t controller){
 499              		.loc 1 138 0
 500              		.cfi_startproc
 501              		@ args = 0, pretend = 0, frame = 8
 502              		@ frame_needed = 1, uses_anonymous_args = 0
 503 0248 80B5     		push	{r7, lr}
 504              		.cfi_def_cfa_offset 8
 505              		.cfi_offset 7, -8
 506              		.cfi_offset 14, -4
 507 024a 82B0     		sub	sp, sp, #8
 508              		.cfi_def_cfa_offset 16
 509 024c 00AF     		add	r7, sp, #0
 510              		.cfi_def_cfa_register 7
 511 024e 0200     		movs	r2, r0
 512 0250 FB1D     		adds	r3, r7, #7
 513 0252 1A70     		strb	r2, [r3]
 514 0254 BB1D     		adds	r3, r7, #6
 515 0256 0A1C     		adds	r2, r1, #0
 516 0258 1A70     		strb	r2, [r3]
 139:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 517              		.loc 1 139 0
 518 025a 4020     		movs	r0, #64
 519 025c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 140:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 520              		.loc 1 140 0
 521 0260 BB1D     		adds	r3, r7, #6
 522 0262 1B78     		ldrb	r3, [r3]
 523 0264 1800     		movs	r0, r3
 524 0266 FFF7FEFF 		bl	select_controller
 141:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS | B_RW);
 525              		.loc 1 141 0
 526 026a 0320     		movs	r0, #3
 527 026c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 142:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write(command, controller);
 528              		.loc 1 142 0
 529 0270 BB1D     		adds	r3, r7, #6
 530 0272 1A78     		ldrb	r2, [r3]
 531 0274 FB1D     		adds	r3, r7, #7
 532 0276 1B78     		ldrb	r3, [r3]
 533 0278 1100     		movs	r1, r2
 534 027a 1800     		movs	r0, r3
 535 027c FFF7FEFF 		bl	graphic_write
 143:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 536              		.loc 1 143 0
 537 0280 C046     		nop
 538 0282 BD46     		mov	sp, r7
 539 0284 02B0     		add	sp, sp, #8
 540              		@ sp needed
 541 0286 80BD     		pop	{r7, pc}
 542              		.cfi_endproc
 543              	.LFE6:
 545              		.align	1
 546              		.global	graphic_write_data
 547              		.syntax unified
 548              		.code	16
 549              		.thumb_func
 550              		.fpu softvfp
 552              	graphic_write_data:
 553              	.LFB7:
 144:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 145:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_write_data(uint8_t data, uint8_t controller){
 554              		.loc 1 145 0
 555              		.cfi_startproc
 556              		@ args = 0, pretend = 0, frame = 8
 557              		@ frame_needed = 1, uses_anonymous_args = 0
 558 0288 80B5     		push	{r7, lr}
 559              		.cfi_def_cfa_offset 8
 560              		.cfi_offset 7, -8
 561              		.cfi_offset 14, -4
 562 028a 82B0     		sub	sp, sp, #8
 563              		.cfi_def_cfa_offset 16
 564 028c 00AF     		add	r7, sp, #0
 565              		.cfi_def_cfa_register 7
 566 028e 0200     		movs	r2, r0
 567 0290 FB1D     		adds	r3, r7, #7
 568 0292 1A70     		strb	r2, [r3]
 569 0294 BB1D     		adds	r3, r7, #6
 570 0296 0A1C     		adds	r2, r1, #0
 571 0298 1A70     		strb	r2, [r3]
 146:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 572              		.loc 1 146 0
 573 029a 4020     		movs	r0, #64
 574 029c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 147:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 575              		.loc 1 147 0
 576 02a0 BB1D     		adds	r3, r7, #6
 577 02a2 1B78     		ldrb	r3, [r3]
 578 02a4 1800     		movs	r0, r3
 579 02a6 FFF7FEFF 		bl	select_controller
 148:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS);
 580              		.loc 1 148 0
 581 02aa 0120     		movs	r0, #1
 582 02ac FFF7FEFF 		bl	graphic_ctrl_bit_set
 149:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RW);
 583              		.loc 1 149 0
 584 02b0 0220     		movs	r0, #2
 585 02b2 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 150:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write(data, controller);
 586              		.loc 1 150 0
 587 02b6 BB1D     		adds	r3, r7, #6
 588 02b8 1A78     		ldrb	r2, [r3]
 589 02ba FB1D     		adds	r3, r7, #7
 590 02bc 1B78     		ldrb	r3, [r3]
 591 02be 1100     		movs	r1, r2
 592 02c0 1800     		movs	r0, r3
 593 02c2 FFF7FEFF 		bl	graphic_write
 151:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 594              		.loc 1 151 0
 595 02c6 C046     		nop
 596 02c8 BD46     		mov	sp, r7
 597 02ca 02B0     		add	sp, sp, #8
 598              		@ sp needed
 599 02cc 80BD     		pop	{r7, pc}
 600              		.cfi_endproc
 601              	.LFE7:
 603              		.align	1
 604              		.global	graphic_read_data
 605              		.syntax unified
 606              		.code	16
 607              		.thumb_func
 608              		.fpu softvfp
 610              	graphic_read_data:
 611              	.LFB8:
 152:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 153:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** uint8_t graphic_read_data(uint8_t controller){
 612              		.loc 1 153 0
 613              		.cfi_startproc
 614              		@ args = 0, pretend = 0, frame = 8
 615              		@ frame_needed = 1, uses_anonymous_args = 0
 616 02ce 80B5     		push	{r7, lr}
 617              		.cfi_def_cfa_offset 8
 618              		.cfi_offset 7, -8
 619              		.cfi_offset 14, -4
 620 02d0 82B0     		sub	sp, sp, #8
 621              		.cfi_def_cfa_offset 16
 622 02d2 00AF     		add	r7, sp, #0
 623              		.cfi_def_cfa_register 7
 624 02d4 0200     		movs	r2, r0
 625 02d6 FB1D     		adds	r3, r7, #7
 626 02d8 1A70     		strb	r2, [r3]
 154:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	(void) graphic_read(controller);
 627              		.loc 1 154 0
 628 02da FB1D     		adds	r3, r7, #7
 629 02dc 1B78     		ldrb	r3, [r3]
 630 02de 1800     		movs	r0, r3
 631 02e0 FFF7FEFF 		bl	graphic_read
 155:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	return graphic_read(controller);
 632              		.loc 1 155 0
 633 02e4 FB1D     		adds	r3, r7, #7
 634 02e6 1B78     		ldrb	r3, [r3]
 635 02e8 1800     		movs	r0, r3
 636 02ea FFF7FEFF 		bl	graphic_read
 637 02ee 0300     		movs	r3, r0
 156:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 638              		.loc 1 156 0
 639 02f0 1800     		movs	r0, r3
 640 02f2 BD46     		mov	sp, r7
 641 02f4 02B0     		add	sp, sp, #8
 642              		@ sp needed
 643 02f6 80BD     		pop	{r7, pc}
 644              		.cfi_endproc
 645              	.LFE8:
 647              		.align	1
 648              		.global	init_app
 649              		.syntax unified
 650              		.code	16
 651              		.thumb_func
 652              		.fpu softvfp
 654              	init_app:
 655              	.LFB9:
 157:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 158:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void init_app(void){
 656              		.loc 1 158 0
 657              		.cfi_startproc
 658              		@ args = 0, pretend = 0, frame = 0
 659              		@ frame_needed = 1, uses_anonymous_args = 0
 660 02f8 80B5     		push	{r7, lr}
 661              		.cfi_def_cfa_offset 8
 662              		.cfi_offset 7, -8
 663              		.cfi_offset 14, -4
 664 02fa 00AF     		add	r7, sp, #0
 665              		.cfi_def_cfa_register 7
 159:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//port E is output
 160:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.moder = 0x55555555;
 666              		.loc 1 160 0
 667 02fc 044B     		ldr	r3, .L37
 668 02fe 054A     		ldr	r2, .L37+4
 669 0300 1A60     		str	r2, [r3]
 161:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.ospeedr = 0x55555555;
 670              		.loc 1 161 0
 671 0302 034B     		ldr	r3, .L37
 672 0304 034A     		ldr	r2, .L37+4
 673 0306 9A60     		str	r2, [r3, #8]
 162:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 674              		.loc 1 162 0
 675 0308 C046     		nop
 676 030a BD46     		mov	sp, r7
 677              		@ sp needed
 678 030c 80BD     		pop	{r7, pc}
 679              	.L38:
 680 030e C046     		.align	2
 681              	.L37:
 682 0310 00100240 		.word	1073876992
 683 0314 55555555 		.word	1431655765
 684              		.cfi_endproc
 685              	.LFE9:
 687              		.align	1
 688              		.global	graphic_initialize
 689              		.syntax unified
 690              		.code	16
 691              		.thumb_func
 692              		.fpu softvfp
 694              	graphic_initialize:
 695              	.LFB10:
 163:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 164:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_initialize(void){
 696              		.loc 1 164 0
 697              		.cfi_startproc
 698              		@ args = 0, pretend = 0, frame = 0
 699              		@ frame_needed = 1, uses_anonymous_args = 0
 700 0318 80B5     		push	{r7, lr}
 701              		.cfi_def_cfa_offset 8
 702              		.cfi_offset 7, -8
 703              		.cfi_offset 14, -4
 704 031a 00AF     		add	r7, sp, #0
 705              		.cfi_def_cfa_register 7
 165:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 706              		.loc 1 165 0
 707 031c 4020     		movs	r0, #64
 708 031e FFF7FEFF 		bl	graphic_ctrl_bit_set
 166:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 167:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_mikro(10);
 709              		.loc 1 167 0
 710 0322 0A20     		movs	r0, #10
 711 0324 FFF7FEFF 		bl	delay_mikro
 168:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 169:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RST | B_E);
 712              		.loc 1 169 0
 713 0328 7820     		movs	r0, #120
 714 032a FFF7FEFF 		bl	graphic_ctrl_bit_clear
 170:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 171:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_milli(30);
 715              		.loc 1 171 0
 716 032e 1E20     		movs	r0, #30
 717 0330 FFF7FEFF 		bl	delay_milli
 172:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RST);
 718              		.loc 1 172 0
 719 0334 2020     		movs	r0, #32
 720 0336 FFF7FEFF 		bl	graphic_ctrl_bit_set
 173:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 174:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_milli(100); // Added because NaN has it
 721              		.loc 1 174 0
 722 033a 6420     		movs	r0, #100
 723 033c FFF7FEFF 		bl	delay_milli
 175:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 176:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
 724              		.loc 1 176 0
 725 0340 1821     		movs	r1, #24
 726 0342 3E20     		movs	r0, #62
 727 0344 FFF7FEFF 		bl	graphic_write_command
 177:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 728              		.loc 1 177 0
 729 0348 1821     		movs	r1, #24
 730 034a 3F20     		movs	r0, #63
 731 034c FFF7FEFF 		bl	graphic_write_command
 178:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 732              		.loc 1 178 0
 733 0350 1821     		movs	r1, #24
 734 0352 C020     		movs	r0, #192
 735 0354 FFF7FEFF 		bl	graphic_write_command
 179:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
 736              		.loc 1 179 0
 737 0358 1821     		movs	r1, #24
 738 035a 4020     		movs	r0, #64
 739 035c FFF7FEFF 		bl	graphic_write_command
 180:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);
 740              		.loc 1 180 0
 741 0360 1821     		movs	r1, #24
 742 0362 B820     		movs	r0, #184
 743 0364 FFF7FEFF 		bl	graphic_write_command
 181:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 182:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(0);
 744              		.loc 1 182 0
 745 0368 0020     		movs	r0, #0
 746 036a FFF7FEFF 		bl	select_controller
 183:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 747              		.loc 1 183 0
 748 036e C046     		nop
 749 0370 BD46     		mov	sp, r7
 750              		@ sp needed
 751 0372 80BD     		pop	{r7, pc}
 752              		.cfi_endproc
 753              	.LFE10:
 755              		.align	1
 756              		.global	graphic_clear_screen
 757              		.syntax unified
 758              		.code	16
 759              		.thumb_func
 760              		.fpu softvfp
 762              	graphic_clear_screen:
 763              	.LFB11:
 184:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 185:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_clear_screen(void){
 764              		.loc 1 185 0
 765              		.cfi_startproc
 766              		@ args = 0, pretend = 0, frame = 8
 767              		@ frame_needed = 1, uses_anonymous_args = 0
 768 0374 80B5     		push	{r7, lr}
 769              		.cfi_def_cfa_offset 8
 770              		.cfi_offset 7, -8
 771              		.cfi_offset 14, -4
 772 0376 82B0     		sub	sp, sp, #8
 773              		.cfi_def_cfa_offset 16
 774 0378 00AF     		add	r7, sp, #0
 775              		.cfi_def_cfa_register 7
 776              	.LBB2:
 186:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	for(uint8_t page = 0; page < 8; page++){
 777              		.loc 1 186 0
 778 037a FB1D     		adds	r3, r7, #7
 779 037c 0022     		movs	r2, #0
 780 037e 1A70     		strb	r2, [r3]
 781 0380 23E0     		b	.L41
 782              	.L44:
 187:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 783              		.loc 1 187 0
 784 0382 FB1D     		adds	r3, r7, #7
 785 0384 1B78     		ldrb	r3, [r3]
 786 0386 4822     		movs	r2, #72
 787 0388 5242     		rsbs	r2, r2, #0
 788 038a 1343     		orrs	r3, r2
 789 038c DBB2     		uxtb	r3, r3
 790 038e 1821     		movs	r1, #24
 791 0390 1800     		movs	r0, r3
 792 0392 FFF7FEFF 		bl	graphic_write_command
 188:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
 793              		.loc 1 188 0
 794 0396 1821     		movs	r1, #24
 795 0398 4020     		movs	r0, #64
 796 039a FFF7FEFF 		bl	graphic_write_command
 797              	.LBB3:
 189:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		
 190:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		for(uint8_t add = 0; add < 64; add++){
 798              		.loc 1 190 0
 799 039e BB1D     		adds	r3, r7, #6
 800 03a0 0022     		movs	r2, #0
 801 03a2 1A70     		strb	r2, [r3]
 802 03a4 08E0     		b	.L42
 803              	.L43:
 191:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 804              		.loc 1 191 0 discriminator 3
 805 03a6 1821     		movs	r1, #24
 806 03a8 0020     		movs	r0, #0
 807 03aa FFF7FEFF 		bl	graphic_write_data
 190:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 808              		.loc 1 190 0 discriminator 3
 809 03ae BB1D     		adds	r3, r7, #6
 810 03b0 1A78     		ldrb	r2, [r3]
 811 03b2 BB1D     		adds	r3, r7, #6
 812 03b4 0132     		adds	r2, r2, #1
 813 03b6 1A70     		strb	r2, [r3]
 814              	.L42:
 190:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 815              		.loc 1 190 0 is_stmt 0 discriminator 1
 816 03b8 BB1D     		adds	r3, r7, #6
 817 03ba 1B78     		ldrb	r3, [r3]
 818 03bc 3F2B     		cmp	r3, #63
 819 03be F2D9     		bls	.L43
 820              	.LBE3:
 186:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 821              		.loc 1 186 0 is_stmt 1 discriminator 2
 822 03c0 FB1D     		adds	r3, r7, #7
 823 03c2 1A78     		ldrb	r2, [r3]
 824 03c4 FB1D     		adds	r3, r7, #7
 825 03c6 0132     		adds	r2, r2, #1
 826 03c8 1A70     		strb	r2, [r3]
 827              	.L41:
 186:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 828              		.loc 1 186 0 is_stmt 0 discriminator 1
 829 03ca FB1D     		adds	r3, r7, #7
 830 03cc 1B78     		ldrb	r3, [r3]
 831 03ce 072B     		cmp	r3, #7
 832 03d0 D7D9     		bls	.L44
 833              	.LBE2:
 192:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		}
 193:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 194:C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }...
 834              		.loc 1 194 0 is_stmt 1
 835 03d2 C046     		nop
 836 03d4 BD46     		mov	sp, r7
 837 03d6 02B0     		add	sp, sp, #8
 838              		@ sp needed
 839 03d8 80BD     		pop	{r7, pc}
 840              		.cfi_endproc
 841              	.LFE11:
 843              	.Letext0:
 844              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay/gpio.h"
 845              		.file 3 "C:/School/DAT017/Mop-DAT017/Labs and exercises/graphicdisplay/graphicdisplay.h"
