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
  41 000c 0F4A     		ldr	r2, .L2
  42 000e 0F23     		movs	r3, #15
  43 0010 FB18     		adds	r3, r7, r3
  44 0012 127D     		ldrb	r2, [r2, #20]
  45 0014 1A70     		strb	r2, [r3]
   5:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register |= x;
  46              		.loc 1 5 0
  47 0016 0F23     		movs	r3, #15
  48 0018 FB18     		adds	r3, r7, r3
  49 001a 0F22     		movs	r2, #15
  50 001c B918     		adds	r1, r7, r2
  51 001e FA1D     		adds	r2, r7, #7
  52 0020 0978     		ldrb	r1, [r1]
  53 0022 1278     		ldrb	r2, [r2]
  54 0024 0A43     		orrs	r2, r1
  55 0026 1A70     		strb	r2, [r3]
   6:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	control_register &= ~B_SELECT;
  56              		.loc 1 6 0
  57 0028 0F23     		movs	r3, #15
  58 002a FB18     		adds	r3, r7, r3
  59 002c 0F22     		movs	r2, #15
  60 002e BA18     		adds	r2, r7, r2
  61 0030 1278     		ldrb	r2, [r2]
  62 0032 0421     		movs	r1, #4
  63 0034 8A43     		bics	r2, r1
  64 0036 1A70     		strb	r2, [r3]
   7:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.odrLow = control_register;
  65              		.loc 1 7 0
  66 0038 044A     		ldr	r2, .L2
  67 003a 0F23     		movs	r3, #15
  68 003c FB18     		adds	r3, r7, r3
  69 003e 1B78     		ldrb	r3, [r3]
  70 0040 1375     		strb	r3, [r2, #20]
   8:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
  71              		.loc 1 8 0
  72 0042 C046     		nop
  73 0044 BD46     		mov	sp, r7
  74 0046 04B0     		add	sp, sp, #16
  75              		@ sp needed
  76 0048 80BD     		pop	{r7, pc}
  77              	.L3:
  78 004a C046     		.align	2
  79              	.L2:
  80 004c 00100240 		.word	1073876992
  81              		.cfi_endproc
  82              	.LFE0:
  84              		.align	1
  85              		.global	graphic_ctrl_bit_clear
  86              		.syntax unified
  87              		.code	16
  88              		.thumb_func
  89              		.fpu softvfp
  91              	graphic_ctrl_bit_clear:
  92              	.LFB1:
   9:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  10:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_ctrl_bit_clear(uint8_t x){
  93              		.loc 1 10 0
  94              		.cfi_startproc
  95              		@ args = 0, pretend = 0, frame = 16
  96              		@ frame_needed = 1, uses_anonymous_args = 0
  97 0050 80B5     		push	{r7, lr}
  98              		.cfi_def_cfa_offset 8
  99              		.cfi_offset 7, -8
 100              		.cfi_offset 14, -4
 101 0052 84B0     		sub	sp, sp, #16
 102              		.cfi_def_cfa_offset 24
 103 0054 00AF     		add	r7, sp, #0
 104              		.cfi_def_cfa_register 7
 105 0056 0200     		movs	r2, r0
 106 0058 FB1D     		adds	r3, r7, #7
 107 005a 1A70     		strb	r2, [r3]
  11:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t control_register = GPIO_E.odrLow;
 108              		.loc 1 11 0
 109 005c 114A     		ldr	r2, .L5
 110 005e 0F23     		movs	r3, #15
 111 0060 FB18     		adds	r3, r7, r3
 112 0062 127D     		ldrb	r2, [r2, #20]
 113 0064 1A70     		strb	r2, [r3]
  12:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register &= (~x);
 114              		.loc 1 12 0
 115 0066 FB1D     		adds	r3, r7, #7
 116 0068 1B78     		ldrb	r3, [r3]
 117 006a 5BB2     		sxtb	r3, r3
 118 006c DB43     		mvns	r3, r3
 119 006e 5BB2     		sxtb	r3, r3
 120 0070 0F22     		movs	r2, #15
 121 0072 BA18     		adds	r2, r7, r2
 122 0074 1278     		ldrb	r2, [r2]
 123 0076 52B2     		sxtb	r2, r2
 124 0078 1340     		ands	r3, r2
 125 007a 5AB2     		sxtb	r2, r3
 126 007c 0F23     		movs	r3, #15
 127 007e FB18     		adds	r3, r7, r3
 128 0080 1A70     		strb	r2, [r3]
  13:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     control_register &= ~B_SELECT;
 129              		.loc 1 13 0
 130 0082 0F23     		movs	r3, #15
 131 0084 FB18     		adds	r3, r7, r3
 132 0086 0F22     		movs	r2, #15
 133 0088 BA18     		adds	r2, r7, r2
 134 008a 1278     		ldrb	r2, [r2]
 135 008c 0421     		movs	r1, #4
 136 008e 8A43     		bics	r2, r1
 137 0090 1A70     		strb	r2, [r3]
  14:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.odrLow = control_register;
 138              		.loc 1 14 0
 139 0092 044A     		ldr	r2, .L5
 140 0094 0F23     		movs	r3, #15
 141 0096 FB18     		adds	r3, r7, r3
 142 0098 1B78     		ldrb	r3, [r3]
 143 009a 1375     		strb	r3, [r2, #20]
  15:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 144              		.loc 1 15 0
 145 009c C046     		nop
 146 009e BD46     		mov	sp, r7
 147 00a0 04B0     		add	sp, sp, #16
 148              		@ sp needed
 149 00a2 80BD     		pop	{r7, pc}
 150              	.L6:
 151              		.align	2
 152              	.L5:
 153 00a4 00100240 		.word	1073876992
 154              		.cfi_endproc
 155              	.LFE1:
 157              		.align	1
 158              		.global	select_controller
 159              		.syntax unified
 160              		.code	16
 161              		.thumb_func
 162              		.fpu softvfp
 164              	select_controller:
 165              	.LFB2:
  16:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  17:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void select_controller(uint8_t controller){
 166              		.loc 1 17 0
 167              		.cfi_startproc
 168              		@ args = 0, pretend = 0, frame = 8
 169              		@ frame_needed = 1, uses_anonymous_args = 0
 170 00a8 80B5     		push	{r7, lr}
 171              		.cfi_def_cfa_offset 8
 172              		.cfi_offset 7, -8
 173              		.cfi_offset 14, -4
 174 00aa 82B0     		sub	sp, sp, #8
 175              		.cfi_def_cfa_offset 16
 176 00ac 00AF     		add	r7, sp, #0
 177              		.cfi_def_cfa_register 7
 178 00ae 0200     		movs	r2, r0
 179 00b0 FB1D     		adds	r3, r7, #7
 180 00b2 1A70     		strb	r2, [r3]
  18:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     switch(controller){
 181              		.loc 1 18 0
 182 00b4 FB1D     		adds	r3, r7, #7
 183 00b6 1B78     		ldrb	r3, [r3]
 184 00b8 082B     		cmp	r3, #8
 185 00ba 0CD0     		beq	.L9
 186 00bc 02DC     		bgt	.L10
 187 00be 002B     		cmp	r3, #0
 188 00c0 05D0     		beq	.L11
  19:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case 0: 
  20:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_clear(B_CS1 | B_CS2);
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
  31:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS1 | B_CS2);
  32:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
  33:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
  34:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 189              		.loc 1 34 0
 190 00c2 1AE0     		b	.L14
 191              	.L10:
  18:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     switch(controller){
 192              		.loc 1 18 0
 193 00c4 102B     		cmp	r3, #16
 194 00c6 0DD0     		beq	.L12
 195 00c8 182B     		cmp	r3, #24
 196 00ca 12D0     		beq	.L13
 197              		.loc 1 34 0
 198 00cc 15E0     		b	.L14
 199              	.L11:
  20:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 200              		.loc 1 20 0
 201 00ce 1820     		movs	r0, #24
 202 00d0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  21:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1: 
 203              		.loc 1 21 0
 204 00d4 11E0     		b	.L8
 205              	.L9:
  23:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS1);
 206              		.loc 1 23 0
 207 00d6 1020     		movs	r0, #16
 208 00d8 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  24:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 209              		.loc 1 24 0
 210 00dc 0820     		movs	r0, #8
 211 00de FFF7FEFF 		bl	graphic_ctrl_bit_set
  25:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS2:
 212              		.loc 1 25 0
 213 00e2 0AE0     		b	.L8
 214              	.L12:
  27:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             graphic_ctrl_bit_set(B_CS2);
 215              		.loc 1 27 0
 216 00e4 0820     		movs	r0, #8
 217 00e6 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  28:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 218              		.loc 1 28 0
 219 00ea 1020     		movs	r0, #16
 220 00ec FFF7FEFF 		bl	graphic_ctrl_bit_set
  29:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         case B_CS1 | B_CS2:
 221              		.loc 1 29 0
 222 00f0 03E0     		b	.L8
 223              	.L13:
  31:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 224              		.loc 1 31 0
 225 00f2 1820     		movs	r0, #24
 226 00f4 FFF7FEFF 		bl	graphic_ctrl_bit_set
  32:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 227              		.loc 1 32 0
 228 00f8 C046     		nop
 229              	.L8:
 230              	.L14:
 231              		.loc 1 34 0
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
  35:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  36:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_wait_ready(void){
 249              		.loc 1 36 0
 250              		.cfi_startproc
 251              		@ args = 0, pretend = 0, frame = 8
 252              		@ frame_needed = 1, uses_anonymous_args = 0
 253 0102 80B5     		push	{r7, lr}
 254              		.cfi_def_cfa_offset 8
 255              		.cfi_offset 7, -8
 256              		.cfi_offset 14, -4
 257 0104 82B0     		sub	sp, sp, #8
 258              		.cfi_def_cfa_offset 16
 259 0106 00AF     		add	r7, sp, #0
 260              		.cfi_def_cfa_register 7
  37:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t display_busy_status;
  38:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Enable = 0
  39:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_clear(B_E);
 261              		.loc 1 39 0
 262 0108 4020     		movs	r0, #64
 263 010a FFF7FEFF 		bl	graphic_ctrl_bit_clear
  40:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // E: 15-8 = input, 7-0 = output
  41:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.moder = 0x00005555;
 264              		.loc 1 41 0
 265 010e 174B     		ldr	r3, .L21
 266 0110 174A     		ldr	r2, .L21+4
 267 0112 1A60     		str	r2, [r3]
  42:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  43:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // RS = 0, RW = 1
  44:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_clear(B_RS);
 268              		.loc 1 44 0
 269 0114 0120     		movs	r0, #1
 270 0116 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  45:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_set(B_RW);
 271              		.loc 1 45 0
 272 011a 0220     		movs	r0, #2
 273 011c FFF7FEFF 		bl	graphic_ctrl_bit_set
  46:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     delay_500ns();
 274              		.loc 1 46 0
 275 0120 FFF7FEFF 		bl	delay_500ns
 276              	.L18:
  47:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  48:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     while(1){
  49:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Enable = 1
  50:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         graphic_ctrl_bit_set(B_E);
 277              		.loc 1 50 0
 278 0124 4020     		movs	r0, #64
 279 0126 FFF7FEFF 		bl	graphic_ctrl_bit_set
  51:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 280              		.loc 1 51 0
 281 012a FFF7FEFF 		bl	delay_500ns
  52:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Enable = 0
  53:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		display_busy_status = GPIO_E.idrHigh;
 282              		.loc 1 53 0
 283 012e 0F4A     		ldr	r2, .L21
 284 0130 FB1D     		adds	r3, r7, #7
 285 0132 527C     		ldrb	r2, [r2, #17]
 286 0134 1A70     		strb	r2, [r3]
  54:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         graphic_ctrl_bit_clear(B_E);
 287              		.loc 1 54 0
 288 0136 4020     		movs	r0, #64
 289 0138 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  55:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 290              		.loc 1 55 0
 291 013c FFF7FEFF 		bl	delay_500ns
  56:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         // Exit loop if not busy
  57:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         
  58:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		display_busy_status &= LCD_BUSY;
 292              		.loc 1 58 0
 293 0140 FB1D     		adds	r3, r7, #7
 294 0142 FA1D     		adds	r2, r7, #7
 295 0144 1278     		ldrb	r2, [r2]
 296 0146 7F21     		movs	r1, #127
 297 0148 8A43     		bics	r2, r1
 298 014a 1A70     		strb	r2, [r3]
  59:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         if(display_busy_status == 0){
 299              		.loc 1 59 0
 300 014c FB1D     		adds	r3, r7, #7
 301 014e 1B78     		ldrb	r3, [r3]
 302 0150 002B     		cmp	r3, #0
 303 0152 00D0     		beq	.L20
  50:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         delay_500ns();
 304              		.loc 1 50 0
 305 0154 E6E7     		b	.L18
 306              	.L20:
  60:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****             break;
 307              		.loc 1 60 0
 308 0156 C046     		nop
  61:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         } 
  62:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
  63:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
  64:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Enable = 1
  65:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_ctrl_bit_set(B_E); // Commented out to check if this works because it works for NaN
 309              		.loc 1 65 0
 310 0158 4020     		movs	r0, #64
 311 015a FFF7FEFF 		bl	graphic_ctrl_bit_set
  66:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // E: 15-0 = output
  67:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     GPIO_E.moder = 0x55555555;
 312              		.loc 1 67 0
 313 015e 034B     		ldr	r3, .L21
 314 0160 044A     		ldr	r2, .L21+8
 315 0162 1A60     		str	r2, [r3]
  68:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 316              		.loc 1 68 0
 317 0164 C046     		nop
 318 0166 BD46     		mov	sp, r7
 319 0168 02B0     		add	sp, sp, #8
 320              		@ sp needed
 321 016a 80BD     		pop	{r7, pc}
 322              	.L22:
 323              		.align	2
 324              	.L21:
 325 016c 00100240 		.word	1073876992
 326 0170 55550000 		.word	21845
 327 0174 55555555 		.word	1431655765
 328              		.cfi_endproc
 329              	.LFE3:
 331              		.align	1
 332              		.global	graphic_read
 333              		.syntax unified
 334              		.code	16
 335              		.thumb_func
 336              		.fpu softvfp
 338              	graphic_read:
 339              	.LFB4:
  69:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
  70:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** uint8_t graphic_read(uint8_t controller){
 340              		.loc 1 70 0
 341              		.cfi_startproc
 342              		@ args = 0, pretend = 0, frame = 16
 343              		@ frame_needed = 1, uses_anonymous_args = 0
 344 0178 80B5     		push	{r7, lr}
 345              		.cfi_def_cfa_offset 8
 346              		.cfi_offset 7, -8
 347              		.cfi_offset 14, -4
 348 017a 84B0     		sub	sp, sp, #16
 349              		.cfi_def_cfa_offset 24
 350 017c 00AF     		add	r7, sp, #0
 351              		.cfi_def_cfa_register 7
 352 017e 0200     		movs	r2, r0
 353 0180 FB1D     		adds	r3, r7, #7
 354 0182 1A70     		strb	r2, [r3]
  71:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//Set enable to 0
  72:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 355              		.loc 1 72 0
 356 0184 4020     		movs	r0, #64
 357 0186 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  73:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  74:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//set E to input high byte / output low byte
  75:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.moder = 0x00005555;
 358              		.loc 1 75 0
 359 018a 1C4B     		ldr	r3, .L27
 360 018c 1C4A     		ldr	r2, .L27+4
 361 018e 1A60     		str	r2, [r3]
  76:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  77:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS | B_RW);
 362              		.loc 1 77 0
 363 0190 0320     		movs	r0, #3
 364 0192 FFF7FEFF 		bl	graphic_ctrl_bit_set
  78:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  79:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 365              		.loc 1 79 0
 366 0196 FB1D     		adds	r3, r7, #7
 367 0198 1B78     		ldrb	r3, [r3]
 368 019a 1800     		movs	r0, r3
 369 019c FFF7FEFF 		bl	select_controller
  80:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 370              		.loc 1 80 0
 371 01a0 FFF7FEFF 		bl	delay_500ns
  81:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  82:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 372              		.loc 1 82 0
 373 01a4 4020     		movs	r0, #64
 374 01a6 FFF7FEFF 		bl	graphic_ctrl_bit_set
  83:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 375              		.loc 1 83 0
 376 01aa FFF7FEFF 		bl	delay_500ns
  84:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  85:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	// set return value to what is on the data register
  86:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	uint8_t RV = GPIO_E.idrHigh;
 377              		.loc 1 86 0
 378 01ae 134A     		ldr	r2, .L27
 379 01b0 0F23     		movs	r3, #15
 380 01b2 FB18     		adds	r3, r7, r3
 381 01b4 527C     		ldrb	r2, [r2, #17]
 382 01b6 1A70     		strb	r2, [r3]
  87:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  88:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 383              		.loc 1 88 0
 384 01b8 4020     		movs	r0, #64
 385 01ba FFF7FEFF 		bl	graphic_ctrl_bit_clear
  89:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  90:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//set E to output
  91:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.moder = 0x55555555;
 386              		.loc 1 91 0
 387 01be 0F4B     		ldr	r3, .L27
 388 01c0 104A     		ldr	r2, .L27+8
 389 01c2 1A60     		str	r2, [r3]
  92:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
  93:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if((controller & B_CS1) != 0) {
 390              		.loc 1 93 0
 391 01c4 FB1D     		adds	r3, r7, #7
 392 01c6 1B78     		ldrb	r3, [r3]
 393 01c8 0822     		movs	r2, #8
 394 01ca 1340     		ands	r3, r2
 395 01cc 04D0     		beq	.L24
  94:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS1);
 396              		.loc 1 94 0
 397 01ce 0820     		movs	r0, #8
 398 01d0 FFF7FEFF 		bl	select_controller
  95:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 399              		.loc 1 95 0
 400 01d4 FFF7FEFF 		bl	graphic_wait_ready
 401              	.L24:
  96:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
  97:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if((controller & B_CS2) != 0){
 402              		.loc 1 97 0
 403 01d8 FB1D     		adds	r3, r7, #7
 404 01da 1B78     		ldrb	r3, [r3]
 405 01dc 1022     		movs	r2, #16
 406 01de 1340     		ands	r3, r2
 407 01e0 04D0     		beq	.L25
  98:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS2);
 408              		.loc 1 98 0
 409 01e2 1020     		movs	r0, #16
 410 01e4 FFF7FEFF 		bl	select_controller
  99:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 411              		.loc 1 99 0
 412 01e8 FFF7FEFF 		bl	graphic_wait_ready
 413              	.L25:
 100:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 101:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 102:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	/*switch (controller) {
 103:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case B_CS1: select_controller(B_CS1); break;
 104:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case B_CS2: select_controller(B_CS2); break;
 105:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		//case B_CS1 | B_CS2: select_controller(B_CS1 | B_CS2); break;
 106:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		//default: select_controller(0);
 107:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}*/
 108:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//graphic_wait_ready();
 109:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 110:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	return RV;
 414              		.loc 1 110 0
 415 01ec 0F23     		movs	r3, #15
 416 01ee FB18     		adds	r3, r7, r3
 417 01f0 1B78     		ldrb	r3, [r3]
 111:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 418              		.loc 1 111 0
 419 01f2 1800     		movs	r0, r3
 420 01f4 BD46     		mov	sp, r7
 421 01f6 04B0     		add	sp, sp, #16
 422              		@ sp needed
 423 01f8 80BD     		pop	{r7, pc}
 424              	.L28:
 425 01fa C046     		.align	2
 426              	.L27:
 427 01fc 00100240 		.word	1073876992
 428 0200 55550000 		.word	21845
 429 0204 55555555 		.word	1431655765
 430              		.cfi_endproc
 431              	.LFE4:
 433              		.align	1
 434              		.global	graphic_write
 435              		.syntax unified
 436              		.code	16
 437              		.thumb_func
 438              		.fpu softvfp
 440              	graphic_write:
 441              	.LFB5:
 112:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 113:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_write(uint8_t value, uint8_t controller){
 442              		.loc 1 113 0
 443              		.cfi_startproc
 444              		@ args = 0, pretend = 0, frame = 8
 445              		@ frame_needed = 1, uses_anonymous_args = 0
 446 0208 80B5     		push	{r7, lr}
 447              		.cfi_def_cfa_offset 8
 448              		.cfi_offset 7, -8
 449              		.cfi_offset 14, -4
 450 020a 82B0     		sub	sp, sp, #8
 451              		.cfi_def_cfa_offset 16
 452 020c 00AF     		add	r7, sp, #0
 453              		.cfi_def_cfa_register 7
 454 020e 0200     		movs	r2, r0
 455 0210 FB1D     		adds	r3, r7, #7
 456 0212 1A70     		strb	r2, [r3]
 457 0214 BB1D     		adds	r3, r7, #6
 458 0216 0A1C     		adds	r2, r1, #0
 459 0218 1A70     		strb	r2, [r3]
 114:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//datareg to value
 115:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.odrHigh = value;
 460              		.loc 1 115 0
 461 021a 1A4A     		ldr	r2, .L32
 462 021c FB1D     		adds	r3, r7, #7
 463 021e 1B78     		ldrb	r3, [r3]
 464 0220 5375     		strb	r3, [r2, #21]
 116:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 465              		.loc 1 116 0
 466 0222 BB1D     		adds	r3, r7, #6
 467 0224 1B78     		ldrb	r3, [r3]
 468 0226 1800     		movs	r0, r3
 469 0228 FFF7FEFF 		bl	select_controller
 117:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 470              		.loc 1 117 0
 471 022c FFF7FEFF 		bl	delay_500ns
 118:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 119:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 472              		.loc 1 119 0
 473 0230 4020     		movs	r0, #64
 474 0232 FFF7FEFF 		bl	graphic_ctrl_bit_set
 120:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 475              		.loc 1 120 0
 476 0236 FFF7FEFF 		bl	delay_500ns
 121:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 477              		.loc 1 121 0
 478 023a 4020     		movs	r0, #64
 479 023c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 122:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 123:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//select actual controller, wait while we read
 124:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if (controller & B_CS1){
 480              		.loc 1 124 0
 481 0240 BB1D     		adds	r3, r7, #6
 482 0242 1B78     		ldrb	r3, [r3]
 483 0244 0822     		movs	r2, #8
 484 0246 1340     		ands	r3, r2
 485 0248 04D0     		beq	.L30
 125:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS1);
 486              		.loc 1 125 0
 487 024a 0820     		movs	r0, #8
 488 024c FFF7FEFF 		bl	select_controller
 126:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 489              		.loc 1 126 0
 490 0250 FFF7FEFF 		bl	graphic_wait_ready
 491              	.L30:
 127:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 128:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if (controller & B_CS2){
 492              		.loc 1 128 0
 493 0254 BB1D     		adds	r3, r7, #6
 494 0256 1B78     		ldrb	r3, [r3]
 495 0258 1022     		movs	r2, #16
 496 025a 1340     		ands	r3, r2
 497 025c 04D0     		beq	.L31
 129:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS2);
 498              		.loc 1 129 0
 499 025e 1020     		movs	r0, #16
 500 0260 FFF7FEFF 		bl	select_controller
 130:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 501              		.loc 1 130 0
 502 0264 FFF7FEFF 		bl	graphic_wait_ready
 503              	.L31:
 131:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 132:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 133:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//datareg to 0
 134:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.odrHigh = 0;
 504              		.loc 1 134 0
 505 0268 064B     		ldr	r3, .L32
 506 026a 0022     		movs	r2, #0
 507 026c 5A75     		strb	r2, [r3, #21]
 135:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 508              		.loc 1 135 0
 509 026e 4020     		movs	r0, #64
 510 0270 FFF7FEFF 		bl	graphic_ctrl_bit_set
 136:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 137:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//set controller to 0
 138:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(0);
 511              		.loc 1 138 0
 512 0274 0020     		movs	r0, #0
 513 0276 FFF7FEFF 		bl	select_controller
 139:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 514              		.loc 1 139 0
 515 027a C046     		nop
 516 027c BD46     		mov	sp, r7
 517 027e 02B0     		add	sp, sp, #8
 518              		@ sp needed
 519 0280 80BD     		pop	{r7, pc}
 520              	.L33:
 521 0282 C046     		.align	2
 522              	.L32:
 523 0284 00100240 		.word	1073876992
 524              		.cfi_endproc
 525              	.LFE5:
 527              		.align	1
 528              		.global	graphic_write_command
 529              		.syntax unified
 530              		.code	16
 531              		.thumb_func
 532              		.fpu softvfp
 534              	graphic_write_command:
 535              	.LFB6:
 140:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 141:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_write_command(uint8_t command, uint8_t controller){
 536              		.loc 1 141 0
 537              		.cfi_startproc
 538              		@ args = 0, pretend = 0, frame = 8
 539              		@ frame_needed = 1, uses_anonymous_args = 0
 540 0288 80B5     		push	{r7, lr}
 541              		.cfi_def_cfa_offset 8
 542              		.cfi_offset 7, -8
 543              		.cfi_offset 14, -4
 544 028a 82B0     		sub	sp, sp, #8
 545              		.cfi_def_cfa_offset 16
 546 028c 00AF     		add	r7, sp, #0
 547              		.cfi_def_cfa_register 7
 548 028e 0200     		movs	r2, r0
 549 0290 FB1D     		adds	r3, r7, #7
 550 0292 1A70     		strb	r2, [r3]
 551 0294 BB1D     		adds	r3, r7, #6
 552 0296 0A1C     		adds	r2, r1, #0
 553 0298 1A70     		strb	r2, [r3]
 142:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 554              		.loc 1 142 0
 555 029a 4020     		movs	r0, #64
 556 029c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 143:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 557              		.loc 1 143 0
 558 02a0 BB1D     		adds	r3, r7, #6
 559 02a2 1B78     		ldrb	r3, [r3]
 560 02a4 1800     		movs	r0, r3
 561 02a6 FFF7FEFF 		bl	select_controller
 144:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS | B_RW);
 562              		.loc 1 144 0
 563 02aa 0320     		movs	r0, #3
 564 02ac FFF7FEFF 		bl	graphic_ctrl_bit_clear
 145:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write(command, controller);
 565              		.loc 1 145 0
 566 02b0 BB1D     		adds	r3, r7, #6
 567 02b2 1A78     		ldrb	r2, [r3]
 568 02b4 FB1D     		adds	r3, r7, #7
 569 02b6 1B78     		ldrb	r3, [r3]
 570 02b8 1100     		movs	r1, r2
 571 02ba 1800     		movs	r0, r3
 572 02bc FFF7FEFF 		bl	graphic_write
 146:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 573              		.loc 1 146 0
 574 02c0 C046     		nop
 575 02c2 BD46     		mov	sp, r7
 576 02c4 02B0     		add	sp, sp, #8
 577              		@ sp needed
 578 02c6 80BD     		pop	{r7, pc}
 579              		.cfi_endproc
 580              	.LFE6:
 582              		.align	1
 583              		.global	graphic_write_data
 584              		.syntax unified
 585              		.code	16
 586              		.thumb_func
 587              		.fpu softvfp
 589              	graphic_write_data:
 590              	.LFB7:
 147:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 148:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_write_data(uint8_t data, uint8_t controller){
 591              		.loc 1 148 0
 592              		.cfi_startproc
 593              		@ args = 0, pretend = 0, frame = 8
 594              		@ frame_needed = 1, uses_anonymous_args = 0
 595 02c8 80B5     		push	{r7, lr}
 596              		.cfi_def_cfa_offset 8
 597              		.cfi_offset 7, -8
 598              		.cfi_offset 14, -4
 599 02ca 82B0     		sub	sp, sp, #8
 600              		.cfi_def_cfa_offset 16
 601 02cc 00AF     		add	r7, sp, #0
 602              		.cfi_def_cfa_register 7
 603 02ce 0200     		movs	r2, r0
 604 02d0 FB1D     		adds	r3, r7, #7
 605 02d2 1A70     		strb	r2, [r3]
 606 02d4 BB1D     		adds	r3, r7, #6
 607 02d6 0A1C     		adds	r2, r1, #0
 608 02d8 1A70     		strb	r2, [r3]
 149:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 609              		.loc 1 149 0
 610 02da 4020     		movs	r0, #64
 611 02dc FFF7FEFF 		bl	graphic_ctrl_bit_clear
 150:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 612              		.loc 1 150 0
 613 02e0 BB1D     		adds	r3, r7, #6
 614 02e2 1B78     		ldrb	r3, [r3]
 615 02e4 1800     		movs	r0, r3
 616 02e6 FFF7FEFF 		bl	select_controller
 151:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS);
 617              		.loc 1 151 0
 618 02ea 0120     		movs	r0, #1
 619 02ec FFF7FEFF 		bl	graphic_ctrl_bit_set
 152:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RW);
 620              		.loc 1 152 0
 621 02f0 0220     		movs	r0, #2
 622 02f2 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 153:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write(data, controller);
 623              		.loc 1 153 0
 624 02f6 BB1D     		adds	r3, r7, #6
 625 02f8 1A78     		ldrb	r2, [r3]
 626 02fa FB1D     		adds	r3, r7, #7
 627 02fc 1B78     		ldrb	r3, [r3]
 628 02fe 1100     		movs	r1, r2
 629 0300 1800     		movs	r0, r3
 630 0302 FFF7FEFF 		bl	graphic_write
 154:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 631              		.loc 1 154 0
 632 0306 C046     		nop
 633 0308 BD46     		mov	sp, r7
 634 030a 02B0     		add	sp, sp, #8
 635              		@ sp needed
 636 030c 80BD     		pop	{r7, pc}
 637              		.cfi_endproc
 638              	.LFE7:
 640              		.align	1
 641              		.global	graphic_read_data
 642              		.syntax unified
 643              		.code	16
 644              		.thumb_func
 645              		.fpu softvfp
 647              	graphic_read_data:
 648              	.LFB8:
 155:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 156:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** uint8_t graphic_read_data(uint8_t controller){
 649              		.loc 1 156 0
 650              		.cfi_startproc
 651              		@ args = 0, pretend = 0, frame = 8
 652              		@ frame_needed = 1, uses_anonymous_args = 0
 653 030e 80B5     		push	{r7, lr}
 654              		.cfi_def_cfa_offset 8
 655              		.cfi_offset 7, -8
 656              		.cfi_offset 14, -4
 657 0310 82B0     		sub	sp, sp, #8
 658              		.cfi_def_cfa_offset 16
 659 0312 00AF     		add	r7, sp, #0
 660              		.cfi_def_cfa_register 7
 661 0314 0200     		movs	r2, r0
 662 0316 FB1D     		adds	r3, r7, #7
 663 0318 1A70     		strb	r2, [r3]
 157:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	(void) graphic_read(controller);
 664              		.loc 1 157 0
 665 031a FB1D     		adds	r3, r7, #7
 666 031c 1B78     		ldrb	r3, [r3]
 667 031e 1800     		movs	r0, r3
 668 0320 FFF7FEFF 		bl	graphic_read
 158:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	return graphic_read(controller);
 669              		.loc 1 158 0
 670 0324 FB1D     		adds	r3, r7, #7
 671 0326 1B78     		ldrb	r3, [r3]
 672 0328 1800     		movs	r0, r3
 673 032a FFF7FEFF 		bl	graphic_read
 674 032e 0300     		movs	r3, r0
 159:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 675              		.loc 1 159 0
 676 0330 1800     		movs	r0, r3
 677 0332 BD46     		mov	sp, r7
 678 0334 02B0     		add	sp, sp, #8
 679              		@ sp needed
 680 0336 80BD     		pop	{r7, pc}
 681              		.cfi_endproc
 682              	.LFE8:
 684              		.align	1
 685              		.global	graphic_initialize
 686              		.syntax unified
 687              		.code	16
 688              		.thumb_func
 689              		.fpu softvfp
 691              	graphic_initialize:
 692              	.LFB9:
 160:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 161:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_initialize(void){
 693              		.loc 1 161 0
 694              		.cfi_startproc
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 1, uses_anonymous_args = 0
 697 0338 80B5     		push	{r7, lr}
 698              		.cfi_def_cfa_offset 8
 699              		.cfi_offset 7, -8
 700              		.cfi_offset 14, -4
 701 033a 00AF     		add	r7, sp, #0
 702              		.cfi_def_cfa_register 7
 162:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 703              		.loc 1 162 0
 704 033c 4020     		movs	r0, #64
 705 033e FFF7FEFF 		bl	graphic_ctrl_bit_set
 163:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 164:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_mikro(10);
 706              		.loc 1 164 0
 707 0342 0A20     		movs	r0, #10
 708 0344 FFF7FEFF 		bl	delay_mikro
 165:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 166:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RST | B_E);
 709              		.loc 1 166 0
 710 0348 7820     		movs	r0, #120
 711 034a FFF7FEFF 		bl	graphic_ctrl_bit_clear
 167:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 168:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_milli(30);
 712              		.loc 1 168 0
 713 034e 1E20     		movs	r0, #30
 714 0350 FFF7FEFF 		bl	delay_milli
 169:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RST);
 715              		.loc 1 169 0
 716 0354 2020     		movs	r0, #32
 717 0356 FFF7FEFF 		bl	graphic_ctrl_bit_set
 170:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 171:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_milli(100); // Added because NaN has it
 718              		.loc 1 171 0
 719 035a 6420     		movs	r0, #100
 720 035c FFF7FEFF 		bl	delay_milli
 172:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 173:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
 721              		.loc 1 173 0
 722 0360 1821     		movs	r1, #24
 723 0362 3E20     		movs	r0, #62
 724 0364 FFF7FEFF 		bl	graphic_write_command
 174:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 725              		.loc 1 174 0
 726 0368 1821     		movs	r1, #24
 727 036a 3F20     		movs	r0, #63
 728 036c FFF7FEFF 		bl	graphic_write_command
 175:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 729              		.loc 1 175 0
 730 0370 1821     		movs	r1, #24
 731 0372 C020     		movs	r0, #192
 732 0374 FFF7FEFF 		bl	graphic_write_command
 176:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
 733              		.loc 1 176 0
 734 0378 1821     		movs	r1, #24
 735 037a 4020     		movs	r0, #64
 736 037c FFF7FEFF 		bl	graphic_write_command
 177:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);
 737              		.loc 1 177 0
 738 0380 1821     		movs	r1, #24
 739 0382 B820     		movs	r0, #184
 740 0384 FFF7FEFF 		bl	graphic_write_command
 178:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 179:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	select_controller(0);
 741              		.loc 1 179 0
 742 0388 0020     		movs	r0, #0
 743 038a FFF7FEFF 		bl	select_controller
 180:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 744              		.loc 1 180 0
 745 038e C046     		nop
 746 0390 BD46     		mov	sp, r7
 747              		@ sp needed
 748 0392 80BD     		pop	{r7, pc}
 749              		.cfi_endproc
 750              	.LFE9:
 752              		.align	1
 753              		.global	graphic_clear_screen
 754              		.syntax unified
 755              		.code	16
 756              		.thumb_func
 757              		.fpu softvfp
 759              	graphic_clear_screen:
 760              	.LFB10:
 181:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 182:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void graphic_clear_screen(void){
 761              		.loc 1 182 0
 762              		.cfi_startproc
 763              		@ args = 0, pretend = 0, frame = 8
 764              		@ frame_needed = 1, uses_anonymous_args = 0
 765 0394 80B5     		push	{r7, lr}
 766              		.cfi_def_cfa_offset 8
 767              		.cfi_offset 7, -8
 768              		.cfi_offset 14, -4
 769 0396 82B0     		sub	sp, sp, #8
 770              		.cfi_def_cfa_offset 16
 771 0398 00AF     		add	r7, sp, #0
 772              		.cfi_def_cfa_register 7
 773              	.LBB2:
 183:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	for(uint8_t page = 0; page < 8; page++){
 774              		.loc 1 183 0
 775 039a FB1D     		adds	r3, r7, #7
 776 039c 0022     		movs	r2, #0
 777 039e 1A70     		strb	r2, [r3]
 778 03a0 23E0     		b	.L40
 779              	.L43:
 184:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 780              		.loc 1 184 0
 781 03a2 FB1D     		adds	r3, r7, #7
 782 03a4 1B78     		ldrb	r3, [r3]
 783 03a6 4822     		movs	r2, #72
 784 03a8 5242     		rsbs	r2, r2, #0
 785 03aa 1343     		orrs	r3, r2
 786 03ac DBB2     		uxtb	r3, r3
 787 03ae 1821     		movs	r1, #24
 788 03b0 1800     		movs	r0, r3
 789 03b2 FFF7FEFF 		bl	graphic_write_command
 185:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
 790              		.loc 1 185 0
 791 03b6 1821     		movs	r1, #24
 792 03b8 4020     		movs	r0, #64
 793 03ba FFF7FEFF 		bl	graphic_write_command
 794              	.LBB3:
 186:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		
 187:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		for(uint8_t add = 0; add < 64; add++){
 795              		.loc 1 187 0
 796 03be BB1D     		adds	r3, r7, #6
 797 03c0 0022     		movs	r2, #0
 798 03c2 1A70     		strb	r2, [r3]
 799 03c4 08E0     		b	.L41
 800              	.L42:
 188:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 801              		.loc 1 188 0 discriminator 3
 802 03c6 1821     		movs	r1, #24
 803 03c8 0020     		movs	r0, #0
 804 03ca FFF7FEFF 		bl	graphic_write_data
 187:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 805              		.loc 1 187 0 discriminator 3
 806 03ce BB1D     		adds	r3, r7, #6
 807 03d0 1A78     		ldrb	r2, [r3]
 808 03d2 BB1D     		adds	r3, r7, #6
 809 03d4 0132     		adds	r2, r2, #1
 810 03d6 1A70     		strb	r2, [r3]
 811              	.L41:
 187:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 812              		.loc 1 187 0 is_stmt 0 discriminator 1
 813 03d8 BB1D     		adds	r3, r7, #6
 814 03da 1B78     		ldrb	r3, [r3]
 815 03dc 3F2B     		cmp	r3, #63
 816 03de F2D9     		bls	.L42
 817              	.LBE3:
 183:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 818              		.loc 1 183 0 is_stmt 1 discriminator 2
 819 03e0 FB1D     		adds	r3, r7, #7
 820 03e2 1A78     		ldrb	r2, [r3]
 821 03e4 FB1D     		adds	r3, r7, #7
 822 03e6 0132     		adds	r2, r2, #1
 823 03e8 1A70     		strb	r2, [r3]
 824              	.L40:
 183:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 825              		.loc 1 183 0 is_stmt 0 discriminator 1
 826 03ea FB1D     		adds	r3, r7, #7
 827 03ec 1B78     		ldrb	r3, [r3]
 828 03ee 072B     		cmp	r3, #7
 829 03f0 D7D9     		bls	.L43
 830              	.LBE2:
 189:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		}
 190:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 191:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 831              		.loc 1 191 0 is_stmt 1
 832 03f2 C046     		nop
 833 03f4 BD46     		mov	sp, r7
 834 03f6 02B0     		add	sp, sp, #8
 835              		@ sp needed
 836 03f8 80BD     		pop	{r7, pc}
 837              		.cfi_endproc
 838              	.LFE10:
 840              		.align	1
 841              		.global	pixel
 842              		.syntax unified
 843              		.code	16
 844              		.thumb_func
 845              		.fpu softvfp
 847              	pixel:
 848              	.LFB11:
 192:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 193:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void pixel(uint8_t x, uint8_t y, uint8_t set){
 849              		.loc 1 193 0
 850              		.cfi_startproc
 851              		@ args = 0, pretend = 0, frame = 16
 852              		@ frame_needed = 1, uses_anonymous_args = 0
 853 03fa 90B5     		push	{r4, r7, lr}
 854              		.cfi_def_cfa_offset 12
 855              		.cfi_offset 4, -12
 856              		.cfi_offset 7, -8
 857              		.cfi_offset 14, -4
 858 03fc 85B0     		sub	sp, sp, #20
 859              		.cfi_def_cfa_offset 32
 860 03fe 00AF     		add	r7, sp, #0
 861              		.cfi_def_cfa_register 7
 862 0400 0400     		movs	r4, r0
 863 0402 0800     		movs	r0, r1
 864 0404 1100     		movs	r1, r2
 865 0406 FB1D     		adds	r3, r7, #7
 866 0408 221C     		adds	r2, r4, #0
 867 040a 1A70     		strb	r2, [r3]
 868 040c BB1D     		adds	r3, r7, #6
 869 040e 021C     		adds	r2, r0, #0
 870 0410 1A70     		strb	r2, [r3]
 871 0412 7B1D     		adds	r3, r7, #5
 872 0414 0A1C     		adds	r2, r1, #0
 873 0416 1A70     		strb	r2, [r3]
 194:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Validate values for input variables
 195:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     if(x < 1 || x > 128){
 874              		.loc 1 195 0
 875 0418 FB1D     		adds	r3, r7, #7
 876 041a 1B78     		ldrb	r3, [r3]
 877 041c 002B     		cmp	r3, #0
 878 041e 00D1     		bne	.LCB705
 879 0420 B4E0     		b	.L58	@long jump
 880              	.LCB705:
 881              		.loc 1 195 0 is_stmt 0 discriminator 1
 882 0422 FB1D     		adds	r3, r7, #7
 883 0424 1B78     		ldrb	r3, [r3]
 884 0426 802B     		cmp	r3, #128
 885 0428 00D9     		bls	.LCB709
 886 042a AFE0     		b	.L58	@long jump
 887              	.LCB709:
 196:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         return;
 197:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 198:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     if(y < 1 || y > 64){
 888              		.loc 1 198 0 is_stmt 1
 889 042c BB1D     		adds	r3, r7, #6
 890 042e 1B78     		ldrb	r3, [r3]
 891 0430 002B     		cmp	r3, #0
 892 0432 00D1     		bne	.LCB713
 893 0434 ACE0     		b	.L59	@long jump
 894              	.LCB713:
 895              		.loc 1 198 0 is_stmt 0 discriminator 1
 896 0436 BB1D     		adds	r3, r7, #6
 897 0438 1B78     		ldrb	r3, [r3]
 898 043a 402B     		cmp	r3, #64
 899 043c 00D9     		bls	.LCB717
 900 043e A7E0     		b	.L59	@long jump
 901              	.LCB717:
 199:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         return;
 200:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 201:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     if(set != 1 && set != 0){
 902              		.loc 1 201 0 is_stmt 1
 903 0440 7B1D     		adds	r3, r7, #5
 904 0442 1B78     		ldrb	r3, [r3]
 905 0444 012B     		cmp	r3, #1
 906 0446 04D0     		beq	.L50
 907              		.loc 1 201 0 is_stmt 0 discriminator 1
 908 0448 7B1D     		adds	r3, r7, #5
 909 044a 1B78     		ldrb	r3, [r3]
 910 044c 002B     		cmp	r3, #0
 911 044e 00D0     		beq	.LCB725
 912 0450 A0E0     		b	.L60	@long jump
 913              	.LCB725:
 914              	.L50:
 202:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         return;
 203:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 204:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
 205:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t index = (y-1)/8;
 915              		.loc 1 205 0 is_stmt 1
 916 0452 BB1D     		adds	r3, r7, #6
 917 0454 1B78     		ldrb	r3, [r3]
 918 0456 013B     		subs	r3, r3, #1
 919 0458 002B     		cmp	r3, #0
 920 045a 00DA     		bge	.L51
 921 045c 0733     		adds	r3, r3, #7
 922              	.L51:
 923 045e DB10     		asrs	r3, r3, #3
 924 0460 1A00     		movs	r2, r3
 925 0462 0C23     		movs	r3, #12
 926 0464 FB18     		adds	r3, r7, r3
 927 0466 1A70     		strb	r2, [r3]
 206:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Create mask for y, works as well as switch from book, but with less code
 207:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t mask = 1;
 928              		.loc 1 207 0
 929 0468 0F23     		movs	r3, #15
 930 046a FB18     		adds	r3, r7, r3
 931 046c 0122     		movs	r2, #1
 932 046e 1A70     		strb	r2, [r3]
 208:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     mask = mask << ((y-1)%8);
 933              		.loc 1 208 0
 934 0470 0F23     		movs	r3, #15
 935 0472 FB18     		adds	r3, r7, r3
 936 0474 1A78     		ldrb	r2, [r3]
 937 0476 BB1D     		adds	r3, r7, #6
 938 0478 1B78     		ldrb	r3, [r3]
 939 047a 013B     		subs	r3, r3, #1
 940 047c 4749     		ldr	r1, .L61
 941 047e 0B40     		ands	r3, r1
 942 0480 04D5     		bpl	.L52
 943 0482 013B     		subs	r3, r3, #1
 944 0484 0821     		movs	r1, #8
 945 0486 4942     		rsbs	r1, r1, #0
 946 0488 0B43     		orrs	r3, r1
 947 048a 0133     		adds	r3, r3, #1
 948              	.L52:
 949 048c 9A40     		lsls	r2, r2, r3
 950 048e 0F23     		movs	r3, #15
 951 0490 FB18     		adds	r3, r7, r3
 952 0492 1A70     		strb	r2, [r3]
 209:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	/*switch((y-1)%8){
 210:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case 0: mask = 1; break;
 211:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case 1: mask = 2; break;
 212:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case 2: mask = 4; break;
 213:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case 3: mask = 8; break;
 214:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case 4: mask = 0x10; break;
 215:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case 5: mask = 0x20; break;
 216:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case 6: mask = 0x40; break;
 217:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		case 7: mask = 0x80; break;
 218:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}*/
 219:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
 220:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Invert mask if the bit is going to get cleared
 221:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     if(set == 0){
 953              		.loc 1 221 0
 954 0494 7B1D     		adds	r3, r7, #5
 955 0496 1B78     		ldrb	r3, [r3]
 956 0498 002B     		cmp	r3, #0
 957 049a 06D1     		bne	.L53
 222:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         mask = ~mask;
 958              		.loc 1 222 0
 959 049c 0F23     		movs	r3, #15
 960 049e FB18     		adds	r3, r7, r3
 961 04a0 0F22     		movs	r2, #15
 962 04a2 BA18     		adds	r2, r7, r2
 963 04a4 1278     		ldrb	r2, [r2]
 964 04a6 D243     		mvns	r2, r2
 965 04a8 1A70     		strb	r2, [r3]
 966              	.L53:
 223:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 224:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
 225:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t x_actual;
 226:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t controller;
 227:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     // Select applicable chip (screen half), and store the actual value of x
 228:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     if(x > 64){
 967              		.loc 1 228 0
 968 04aa FB1D     		adds	r3, r7, #7
 969 04ac 1B78     		ldrb	r3, [r3]
 970 04ae 402B     		cmp	r3, #64
 971 04b0 0AD9     		bls	.L54
 229:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         controller = B_CS2;
 972              		.loc 1 229 0
 973 04b2 0D23     		movs	r3, #13
 974 04b4 FB18     		adds	r3, r7, r3
 975 04b6 1022     		movs	r2, #16
 976 04b8 1A70     		strb	r2, [r3]
 230:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         x_actual = x - 65;
 977              		.loc 1 230 0
 978 04ba 0E23     		movs	r3, #14
 979 04bc FB18     		adds	r3, r7, r3
 980 04be FA1D     		adds	r2, r7, #7
 981 04c0 1278     		ldrb	r2, [r2]
 982 04c2 413A     		subs	r2, r2, #65
 983 04c4 1A70     		strb	r2, [r3]
 984 04c6 09E0     		b	.L55
 985              	.L54:
 231:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     } else {
 232:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         controller = B_CS1;
 986              		.loc 1 232 0
 987 04c8 0D23     		movs	r3, #13
 988 04ca FB18     		adds	r3, r7, r3
 989 04cc 0822     		movs	r2, #8
 990 04ce 1A70     		strb	r2, [r3]
 233:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         x_actual = x - 1;
 991              		.loc 1 233 0
 992 04d0 0E23     		movs	r3, #14
 993 04d2 FB18     		adds	r3, r7, r3
 994 04d4 FA1D     		adds	r2, r7, #7
 995 04d6 1278     		ldrb	r2, [r2]
 996 04d8 013A     		subs	r2, r2, #1
 997 04da 1A70     		strb	r2, [r3]
 998              	.L55:
 234:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 235:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     
 236:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_write_command(LCD_SET_ADD | x_actual, controller);
 999              		.loc 1 236 0
 1000 04dc 0E23     		movs	r3, #14
 1001 04de FB18     		adds	r3, r7, r3
 1002 04e0 1B78     		ldrb	r3, [r3]
 1003 04e2 4022     		movs	r2, #64
 1004 04e4 1343     		orrs	r3, r2
 1005 04e6 DAB2     		uxtb	r2, r3
 1006 04e8 0D23     		movs	r3, #13
 1007 04ea FB18     		adds	r3, r7, r3
 1008 04ec 1B78     		ldrb	r3, [r3]
 1009 04ee 1900     		movs	r1, r3
 1010 04f0 1000     		movs	r0, r2
 1011 04f2 FFF7FEFF 		bl	graphic_write_command
 237:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_write_command(LCD_SET_PAGE | index, controller);
 1012              		.loc 1 237 0
 1013 04f6 0C23     		movs	r3, #12
 1014 04f8 FB18     		adds	r3, r7, r3
 1015 04fa 1B78     		ldrb	r3, [r3]
 1016 04fc 4822     		movs	r2, #72
 1017 04fe 5242     		rsbs	r2, r2, #0
 1018 0500 1343     		orrs	r3, r2
 1019 0502 DAB2     		uxtb	r2, r3
 1020 0504 0D23     		movs	r3, #13
 1021 0506 FB18     		adds	r3, r7, r3
 1022 0508 1B78     		ldrb	r3, [r3]
 1023 050a 1900     		movs	r1, r3
 1024 050c 1000     		movs	r0, r2
 1025 050e FFF7FEFF 		bl	graphic_write_command
 238:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     uint8_t temp = graphic_read_data(controller);
 1026              		.loc 1 238 0
 1027 0512 0B23     		movs	r3, #11
 1028 0514 FC18     		adds	r4, r7, r3
 1029 0516 0D23     		movs	r3, #13
 1030 0518 FB18     		adds	r3, r7, r3
 1031 051a 1B78     		ldrb	r3, [r3]
 1032 051c 1800     		movs	r0, r3
 1033 051e FFF7FEFF 		bl	graphic_read_data
 1034 0522 0300     		movs	r3, r0
 1035 0524 2370     		strb	r3, [r4]
 239:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_write_command(LCD_SET_ADD | x_actual, controller);
 1036              		.loc 1 239 0
 1037 0526 0E23     		movs	r3, #14
 1038 0528 FB18     		adds	r3, r7, r3
 1039 052a 1B78     		ldrb	r3, [r3]
 1040 052c 4022     		movs	r2, #64
 1041 052e 1343     		orrs	r3, r2
 1042 0530 DAB2     		uxtb	r2, r3
 1043 0532 0D23     		movs	r3, #13
 1044 0534 FB18     		adds	r3, r7, r3
 1045 0536 1B78     		ldrb	r3, [r3]
 1046 0538 1900     		movs	r1, r3
 1047 053a 1000     		movs	r0, r2
 1048 053c FFF7FEFF 		bl	graphic_write_command
 240:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     if(set == 1){
 1049              		.loc 1 240 0
 1050 0540 7B1D     		adds	r3, r7, #5
 1051 0542 1B78     		ldrb	r3, [r3]
 1052 0544 012B     		cmp	r3, #1
 1053 0546 0AD1     		bne	.L56
 241:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         mask |= temp;
 1054              		.loc 1 241 0
 1055 0548 0F23     		movs	r3, #15
 1056 054a FB18     		adds	r3, r7, r3
 1057 054c 0F22     		movs	r2, #15
 1058 054e B918     		adds	r1, r7, r2
 1059 0550 0B22     		movs	r2, #11
 1060 0552 BA18     		adds	r2, r7, r2
 1061 0554 0978     		ldrb	r1, [r1]
 1062 0556 1278     		ldrb	r2, [r2]
 1063 0558 0A43     		orrs	r2, r1
 1064 055a 1A70     		strb	r2, [r3]
 1065 055c 09E0     		b	.L57
 1066              	.L56:
 242:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     } else {
 243:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****         mask &= temp;
 1067              		.loc 1 243 0
 1068 055e 0F23     		movs	r3, #15
 1069 0560 FB18     		adds	r3, r7, r3
 1070 0562 0F22     		movs	r2, #15
 1071 0564 BA18     		adds	r2, r7, r2
 1072 0566 0B21     		movs	r1, #11
 1073 0568 7918     		adds	r1, r7, r1
 1074 056a 1278     		ldrb	r2, [r2]
 1075 056c 0978     		ldrb	r1, [r1]
 1076 056e 0A40     		ands	r2, r1
 1077 0570 1A70     		strb	r2, [r3]
 1078              	.L57:
 244:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 245:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     graphic_write_data(mask, controller);
 1079              		.loc 1 245 0
 1080 0572 0D23     		movs	r3, #13
 1081 0574 FB18     		adds	r3, r7, r3
 1082 0576 1A78     		ldrb	r2, [r3]
 1083 0578 0F23     		movs	r3, #15
 1084 057a FB18     		adds	r3, r7, r3
 1085 057c 1B78     		ldrb	r3, [r3]
 1086 057e 1100     		movs	r1, r2
 1087 0580 1800     		movs	r0, r3
 1088 0582 FFF7FEFF 		bl	graphic_write_data
 246:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 1089              		.loc 1 246 0
 1090 0586 FFF7FEFF 		bl	delay_500ns
 1091 058a 04E0     		b	.L44
 1092              	.L58:
 196:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 1093              		.loc 1 196 0
 1094 058c C046     		nop
 1095 058e 02E0     		b	.L44
 1096              	.L59:
 199:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 1097              		.loc 1 199 0
 1098 0590 C046     		nop
 1099 0592 00E0     		b	.L44
 1100              	.L60:
 202:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c ****     }
 1101              		.loc 1 202 0
 1102 0594 C046     		nop
 1103              	.L44:
 247:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 1104              		.loc 1 247 0
 1105 0596 BD46     		mov	sp, r7
 1106 0598 05B0     		add	sp, sp, #20
 1107              		@ sp needed
 1108 059a 90BD     		pop	{r4, r7, pc}
 1109              	.L62:
 1110              		.align	2
 1111              	.L61:
 1112 059c 07000080 		.word	-2147483641
 1113              		.cfi_endproc
 1114              	.LFE11:
 1116              		.align	1
 1117              		.global	draw_object
 1118              		.syntax unified
 1119              		.code	16
 1120              		.thumb_func
 1121              		.fpu softvfp
 1123              	draw_object:
 1124              	.LFB12:
 248:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 249:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void draw_object(POBJECT object){
 1125              		.loc 1 249 0
 1126              		.cfi_startproc
 1127              		@ args = 0, pretend = 0, frame = 16
 1128              		@ frame_needed = 1, uses_anonymous_args = 0
 1129 05a0 80B5     		push	{r7, lr}
 1130              		.cfi_def_cfa_offset 8
 1131              		.cfi_offset 7, -8
 1132              		.cfi_offset 14, -4
 1133 05a2 84B0     		sub	sp, sp, #16
 1134              		.cfi_def_cfa_offset 24
 1135 05a4 00AF     		add	r7, sp, #0
 1136              		.cfi_def_cfa_register 7
 1137 05a6 7860     		str	r0, [r7, #4]
 1138              	.LBB4:
 250:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	for(int i = 0; i < object->geo->numpoints; i++){
 1139              		.loc 1 250 0
 1140 05a8 0023     		movs	r3, #0
 1141 05aa FB60     		str	r3, [r7, #12]
 1142 05ac 20E0     		b	.L64
 1143              	.L65:
 251:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		pixel(object->geo->px[i].x + object->pos_x, object->geo->px[i].y + object->pos_y, 1);
 1144              		.loc 1 251 0 discriminator 3
 1145 05ae 7B68     		ldr	r3, [r7, #4]
 1146 05b0 1A68     		ldr	r2, [r3]
 1147 05b2 FB68     		ldr	r3, [r7, #12]
 1148 05b4 0433     		adds	r3, r3, #4
 1149 05b6 5B00     		lsls	r3, r3, #1
 1150 05b8 D318     		adds	r3, r2, r3
 1151 05ba 0433     		adds	r3, r3, #4
 1152 05bc 1A78     		ldrb	r2, [r3]
 1153 05be 7B68     		ldr	r3, [r7, #4]
 1154 05c0 DB68     		ldr	r3, [r3, #12]
 1155 05c2 DBB2     		uxtb	r3, r3
 1156 05c4 D318     		adds	r3, r2, r3
 1157 05c6 D8B2     		uxtb	r0, r3
 1158 05c8 7B68     		ldr	r3, [r7, #4]
 1159 05ca 1A68     		ldr	r2, [r3]
 1160 05cc FB68     		ldr	r3, [r7, #12]
 1161 05ce 0433     		adds	r3, r3, #4
 1162 05d0 5B00     		lsls	r3, r3, #1
 1163 05d2 D318     		adds	r3, r2, r3
 1164 05d4 0533     		adds	r3, r3, #5
 1165 05d6 1A78     		ldrb	r2, [r3]
 1166 05d8 7B68     		ldr	r3, [r7, #4]
 1167 05da 1B69     		ldr	r3, [r3, #16]
 1168 05dc DBB2     		uxtb	r3, r3
 1169 05de D318     		adds	r3, r2, r3
 1170 05e0 DBB2     		uxtb	r3, r3
 1171 05e2 0122     		movs	r2, #1
 1172 05e4 1900     		movs	r1, r3
 1173 05e6 FFF7FEFF 		bl	pixel
 250:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	for(int i = 0; i < object->geo->numpoints; i++){
 1174              		.loc 1 250 0 discriminator 3
 1175 05ea FB68     		ldr	r3, [r7, #12]
 1176 05ec 0133     		adds	r3, r3, #1
 1177 05ee FB60     		str	r3, [r7, #12]
 1178              	.L64:
 250:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	for(int i = 0; i < object->geo->numpoints; i++){
 1179              		.loc 1 250 0 is_stmt 0 discriminator 1
 1180 05f0 7B68     		ldr	r3, [r7, #4]
 1181 05f2 1B68     		ldr	r3, [r3]
 1182 05f4 1A68     		ldr	r2, [r3]
 1183 05f6 FB68     		ldr	r3, [r7, #12]
 1184 05f8 9A42     		cmp	r2, r3
 1185 05fa D8DC     		bgt	.L65
 1186              	.LBE4:
 252:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 253:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 1187              		.loc 1 253 0 is_stmt 1
 1188 05fc C046     		nop
 1189 05fe BD46     		mov	sp, r7
 1190 0600 04B0     		add	sp, sp, #16
 1191              		@ sp needed
 1192 0602 80BD     		pop	{r7, pc}
 1193              		.cfi_endproc
 1194              	.LFE12:
 1196              		.align	1
 1197              		.global	clear_object
 1198              		.syntax unified
 1199              		.code	16
 1200              		.thumb_func
 1201              		.fpu softvfp
 1203              	clear_object:
 1204              	.LFB13:
 254:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 255:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void clear_object(POBJECT object){
 1205              		.loc 1 255 0
 1206              		.cfi_startproc
 1207              		@ args = 0, pretend = 0, frame = 16
 1208              		@ frame_needed = 1, uses_anonymous_args = 0
 1209 0604 80B5     		push	{r7, lr}
 1210              		.cfi_def_cfa_offset 8
 1211              		.cfi_offset 7, -8
 1212              		.cfi_offset 14, -4
 1213 0606 84B0     		sub	sp, sp, #16
 1214              		.cfi_def_cfa_offset 24
 1215 0608 00AF     		add	r7, sp, #0
 1216              		.cfi_def_cfa_register 7
 1217 060a 7860     		str	r0, [r7, #4]
 1218              	.LBB5:
 256:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	for(int i = 0; i < object->geo->numpoints; i++){
 1219              		.loc 1 256 0
 1220 060c 0023     		movs	r3, #0
 1221 060e FB60     		str	r3, [r7, #12]
 1222 0610 20E0     		b	.L67
 1223              	.L68:
 257:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		pixel(object->geo->px[i].x + object->pos_x, object->geo->px[i].y + object->pos_y, 0);
 1224              		.loc 1 257 0 discriminator 3
 1225 0612 7B68     		ldr	r3, [r7, #4]
 1226 0614 1A68     		ldr	r2, [r3]
 1227 0616 FB68     		ldr	r3, [r7, #12]
 1228 0618 0433     		adds	r3, r3, #4
 1229 061a 5B00     		lsls	r3, r3, #1
 1230 061c D318     		adds	r3, r2, r3
 1231 061e 0433     		adds	r3, r3, #4
 1232 0620 1A78     		ldrb	r2, [r3]
 1233 0622 7B68     		ldr	r3, [r7, #4]
 1234 0624 DB68     		ldr	r3, [r3, #12]
 1235 0626 DBB2     		uxtb	r3, r3
 1236 0628 D318     		adds	r3, r2, r3
 1237 062a D8B2     		uxtb	r0, r3
 1238 062c 7B68     		ldr	r3, [r7, #4]
 1239 062e 1A68     		ldr	r2, [r3]
 1240 0630 FB68     		ldr	r3, [r7, #12]
 1241 0632 0433     		adds	r3, r3, #4
 1242 0634 5B00     		lsls	r3, r3, #1
 1243 0636 D318     		adds	r3, r2, r3
 1244 0638 0533     		adds	r3, r3, #5
 1245 063a 1A78     		ldrb	r2, [r3]
 1246 063c 7B68     		ldr	r3, [r7, #4]
 1247 063e 1B69     		ldr	r3, [r3, #16]
 1248 0640 DBB2     		uxtb	r3, r3
 1249 0642 D318     		adds	r3, r2, r3
 1250 0644 DBB2     		uxtb	r3, r3
 1251 0646 0022     		movs	r2, #0
 1252 0648 1900     		movs	r1, r3
 1253 064a FFF7FEFF 		bl	pixel
 256:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	for(int i = 0; i < object->geo->numpoints; i++){
 1254              		.loc 1 256 0 discriminator 3
 1255 064e FB68     		ldr	r3, [r7, #12]
 1256 0650 0133     		adds	r3, r3, #1
 1257 0652 FB60     		str	r3, [r7, #12]
 1258              	.L67:
 256:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	for(int i = 0; i < object->geo->numpoints; i++){
 1259              		.loc 1 256 0 is_stmt 0 discriminator 1
 1260 0654 7B68     		ldr	r3, [r7, #4]
 1261 0656 1B68     		ldr	r3, [r3]
 1262 0658 1A68     		ldr	r2, [r3]
 1263 065a FB68     		ldr	r3, [r7, #12]
 1264 065c 9A42     		cmp	r2, r3
 1265 065e D8DC     		bgt	.L68
 1266              	.LBE5:
 258:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 259:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 1267              		.loc 1 259 0 is_stmt 1
 1268 0660 C046     		nop
 1269 0662 BD46     		mov	sp, r7
 1270 0664 04B0     		add	sp, sp, #16
 1271              		@ sp needed
 1272 0666 80BD     		pop	{r7, pc}
 1273              		.cfi_endproc
 1274              	.LFE13:
 1276              		.align	1
 1277              		.global	move_object
 1278              		.syntax unified
 1279              		.code	16
 1280              		.thumb_func
 1281              		.fpu softvfp
 1283              	move_object:
 1284              	.LFB14:
 260:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 261:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void move_object(POBJECT object){
 1285              		.loc 1 261 0
 1286              		.cfi_startproc
 1287              		@ args = 0, pretend = 0, frame = 8
 1288              		@ frame_needed = 1, uses_anonymous_args = 0
 1289 0668 80B5     		push	{r7, lr}
 1290              		.cfi_def_cfa_offset 8
 1291              		.cfi_offset 7, -8
 1292              		.cfi_offset 14, -4
 1293 066a 82B0     		sub	sp, sp, #8
 1294              		.cfi_def_cfa_offset 16
 1295 066c 00AF     		add	r7, sp, #0
 1296              		.cfi_def_cfa_register 7
 1297 066e 7860     		str	r0, [r7, #4]
 262:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	clear_object(object);
 1298              		.loc 1 262 0
 1299 0670 7B68     		ldr	r3, [r7, #4]
 1300 0672 1800     		movs	r0, r3
 1301 0674 FFF7FEFF 		bl	clear_object
 263:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	object->pos_x += object->dir_x;
 1302              		.loc 1 263 0
 1303 0678 7B68     		ldr	r3, [r7, #4]
 1304 067a DA68     		ldr	r2, [r3, #12]
 1305 067c 7B68     		ldr	r3, [r7, #4]
 1306 067e 5B68     		ldr	r3, [r3, #4]
 1307 0680 D218     		adds	r2, r2, r3
 1308 0682 7B68     		ldr	r3, [r7, #4]
 1309 0684 DA60     		str	r2, [r3, #12]
 264:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	object->pos_y += object->dir_y;
 1310              		.loc 1 264 0
 1311 0686 7B68     		ldr	r3, [r7, #4]
 1312 0688 1A69     		ldr	r2, [r3, #16]
 1313 068a 7B68     		ldr	r3, [r7, #4]
 1314 068c 9B68     		ldr	r3, [r3, #8]
 1315 068e D218     		adds	r2, r2, r3
 1316 0690 7B68     		ldr	r3, [r7, #4]
 1317 0692 1A61     		str	r2, [r3, #16]
 265:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 266:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//bounce if object reaches edges of screen
 267:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if (object->pos_x < 1 || (object->pos_x + object->geo->size_x) > 128){
 1318              		.loc 1 267 0
 1319 0694 7B68     		ldr	r3, [r7, #4]
 1320 0696 DB68     		ldr	r3, [r3, #12]
 1321 0698 002B     		cmp	r3, #0
 1322 069a 07DD     		ble	.L70
 1323              		.loc 1 267 0 is_stmt 0 discriminator 1
 1324 069c 7B68     		ldr	r3, [r7, #4]
 1325 069e DA68     		ldr	r2, [r3, #12]
 1326 06a0 7B68     		ldr	r3, [r7, #4]
 1327 06a2 1B68     		ldr	r3, [r3]
 1328 06a4 5B68     		ldr	r3, [r3, #4]
 1329 06a6 D318     		adds	r3, r2, r3
 1330 06a8 802B     		cmp	r3, #128
 1331 06aa 04DD     		ble	.L71
 1332              	.L70:
 268:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		object->dir_x = -object->dir_x;
 1333              		.loc 1 268 0 is_stmt 1
 1334 06ac 7B68     		ldr	r3, [r7, #4]
 1335 06ae 5B68     		ldr	r3, [r3, #4]
 1336 06b0 5A42     		rsbs	r2, r3, #0
 1337 06b2 7B68     		ldr	r3, [r7, #4]
 1338 06b4 5A60     		str	r2, [r3, #4]
 1339              	.L71:
 269:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 270:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	if (object->pos_y < 1 || (object->pos_y + object->geo->size_y) > 64){
 1340              		.loc 1 270 0
 1341 06b6 7B68     		ldr	r3, [r7, #4]
 1342 06b8 1B69     		ldr	r3, [r3, #16]
 1343 06ba 002B     		cmp	r3, #0
 1344 06bc 07DD     		ble	.L72
 1345              		.loc 1 270 0 is_stmt 0 discriminator 1
 1346 06be 7B68     		ldr	r3, [r7, #4]
 1347 06c0 1A69     		ldr	r2, [r3, #16]
 1348 06c2 7B68     		ldr	r3, [r7, #4]
 1349 06c4 1B68     		ldr	r3, [r3]
 1350 06c6 9B68     		ldr	r3, [r3, #8]
 1351 06c8 D318     		adds	r3, r2, r3
 1352 06ca 402B     		cmp	r3, #64
 1353 06cc 04DD     		ble	.L73
 1354              	.L72:
 271:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		object->dir_y = -object->dir_y;
 1355              		.loc 1 271 0 is_stmt 1
 1356 06ce 7B68     		ldr	r3, [r7, #4]
 1357 06d0 9B68     		ldr	r3, [r3, #8]
 1358 06d2 5A42     		rsbs	r2, r3, #0
 1359 06d4 7B68     		ldr	r3, [r7, #4]
 1360 06d6 9A60     		str	r2, [r3, #8]
 1361              	.L73:
 272:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	}
 273:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	
 274:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	draw_object(object);
 1362              		.loc 1 274 0
 1363 06d8 7B68     		ldr	r3, [r7, #4]
 1364 06da 1800     		movs	r0, r3
 1365 06dc FFF7FEFF 		bl	draw_object
 275:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 1366              		.loc 1 275 0
 1367 06e0 C046     		nop
 1368 06e2 BD46     		mov	sp, r7
 1369 06e4 02B0     		add	sp, sp, #8
 1370              		@ sp needed
 1371 06e6 80BD     		pop	{r7, pc}
 1372              		.cfi_endproc
 1373              	.LFE14:
 1375              		.align	1
 1376              		.global	set_object_speed
 1377              		.syntax unified
 1378              		.code	16
 1379              		.thumb_func
 1380              		.fpu softvfp
 1382              	set_object_speed:
 1383              	.LFB15:
 276:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 277:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void set_object_speed(POBJECT object, int x, int y){
 1384              		.loc 1 277 0
 1385              		.cfi_startproc
 1386              		@ args = 0, pretend = 0, frame = 16
 1387              		@ frame_needed = 1, uses_anonymous_args = 0
 1388 06e8 80B5     		push	{r7, lr}
 1389              		.cfi_def_cfa_offset 8
 1390              		.cfi_offset 7, -8
 1391              		.cfi_offset 14, -4
 1392 06ea 84B0     		sub	sp, sp, #16
 1393              		.cfi_def_cfa_offset 24
 1394 06ec 00AF     		add	r7, sp, #0
 1395              		.cfi_def_cfa_register 7
 1396 06ee F860     		str	r0, [r7, #12]
 1397 06f0 B960     		str	r1, [r7, #8]
 1398 06f2 7A60     		str	r2, [r7, #4]
 278:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	object->dir_x = x;
 1399              		.loc 1 278 0
 1400 06f4 FB68     		ldr	r3, [r7, #12]
 1401 06f6 BA68     		ldr	r2, [r7, #8]
 1402 06f8 5A60     		str	r2, [r3, #4]
 279:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	object->dir_y = y;
 1403              		.loc 1 279 0
 1404 06fa FB68     		ldr	r3, [r7, #12]
 1405 06fc 7A68     		ldr	r2, [r7, #4]
 1406 06fe 9A60     		str	r2, [r3, #8]
 280:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }
 1407              		.loc 1 280 0
 1408 0700 C046     		nop
 1409 0702 BD46     		mov	sp, r7
 1410 0704 04B0     		add	sp, sp, #16
 1411              		@ sp needed
 1412 0706 80BD     		pop	{r7, pc}
 1413              		.cfi_endproc
 1414              	.LFE15:
 1416              		.align	1
 1417              		.global	init_app
 1418              		.syntax unified
 1419              		.code	16
 1420              		.thumb_func
 1421              		.fpu softvfp
 1423              	init_app:
 1424              	.LFB16:
 281:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 
 282:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** void init_app(void){
 1425              		.loc 1 282 0
 1426              		.cfi_startproc
 1427              		@ args = 0, pretend = 0, frame = 0
 1428              		@ frame_needed = 1, uses_anonymous_args = 0
 1429 0708 80B5     		push	{r7, lr}
 1430              		.cfi_def_cfa_offset 8
 1431              		.cfi_offset 7, -8
 1432              		.cfi_offset 14, -4
 1433 070a 00AF     		add	r7, sp, #0
 1434              		.cfi_def_cfa_register 7
 283:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	#ifdef USBDM
 284:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	*((unsigned long*) 0x40023830) = 0x18;
 1435              		.loc 1 284 0
 1436 070c 064B     		ldr	r3, .L76
 1437 070e 1822     		movs	r2, #24
 1438 0710 1A60     		str	r2, [r3]
 285:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	__asm volatile( 
 1439              		.loc 1 285 0
 1440              		.syntax divided
 1441              	@ 285 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay/graphicdisplay.c" 1
 1442 0712 0848     		 LDR R0, =0x08000209
 1443 0714 8047     	 BLX R0
 1444              	
 1445              	@ 0 "" 2
 286:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		" LDR R0, =0x08000209\n"
 287:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		" BLX R0\n"
 288:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 		);
 289:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** #endif
 290:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	//port E is output
 291:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.moder = 0x55555555;
 1446              		.loc 1 291 0
 1447              		.thumb
 1448              		.syntax unified
 1449 0716 054B     		ldr	r3, .L76+4
 1450 0718 054A     		ldr	r2, .L76+8
 1451 071a 1A60     		str	r2, [r3]
 292:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** 	GPIO_E.ospeedr = 0x55555555;
 1452              		.loc 1 292 0
 1453 071c 034B     		ldr	r3, .L76+4
 1454 071e 044A     		ldr	r2, .L76+8
 1455 0720 9A60     		str	r2, [r3, #8]
 293:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay\graphicdisplay.c **** }...
 1456              		.loc 1 293 0
 1457 0722 C046     		nop
 1458 0724 BD46     		mov	sp, r7
 1459              		@ sp needed
 1460 0726 80BD     		pop	{r7, pc}
 1461              	.L77:
 1462              		.align	2
 1463              	.L76:
 1464 0728 30380240 		.word	1073887280
 1465 072c 00100240 		.word	1073876992
 1466 0730 55555555 		.word	1431655765
 1467              		.cfi_endproc
 1468              	.LFE16:
 1470              	.Letext0:
 1471              		.file 2 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay/gpio.h"
 1472              		.file 3 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/graphicdisplay/graphicdisplay.h"
