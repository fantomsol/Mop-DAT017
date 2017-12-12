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
  11              		.file	"gpio.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	setup_for_keypad
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	setup_for_keypad:
  23              	.LFB0:
  24              		.file 1 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v
   1:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** #include "gpio.h"
   2:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** #include "delay_interrupt.h"
   3:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** #include <stdint.h>
   4:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
   5:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void setup_for_keypad(GPIO* _gpio) {
  25              		.loc 1 5 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 8
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 82B0     		sub	sp, sp, #8
  34              		.cfi_def_cfa_offset 16
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
  37 0006 7860     		str	r0, [r7, #4]
   6:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt pinnar 15-12 till utportar
   7:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// och pinnar 11-8 till inportar.
   8:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     _gpio->moder &= 0x0000FFFF;
  38              		.loc 1 8 0
  39 0008 7B68     		ldr	r3, [r7, #4]
  40 000a 1B68     		ldr	r3, [r3]
  41 000c 1B04     		lsls	r3, r3, #16
  42 000e 1A0C     		lsrs	r2, r3, #16
  43 0010 7B68     		ldr	r3, [r7, #4]
  44 0012 1A60     		str	r2, [r3]
   9:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     _gpio->moder |= 0x5500FFFF;
  45              		.loc 1 9 0
  46 0014 7B68     		ldr	r3, [r7, #4]
  47 0016 1B68     		ldr	r3, [r3]
  48 0018 114A     		ldr	r2, .L2
  49 001a 1A43     		orrs	r2, r3
  50 001c 7B68     		ldr	r3, [r7, #4]
  51 001e 1A60     		str	r2, [r3]
  10:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  11:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt pinnar 15-12 till "push-pull"
  12:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// och pinnar 11-8 till "open drain".
  13:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     _gpio->otyper &= 0xFFFF00FF;
  52              		.loc 1 13 0
  53 0020 7B68     		ldr	r3, [r7, #4]
  54 0022 9B88     		ldrh	r3, [r3, #4]
  55 0024 FF22     		movs	r2, #255
  56 0026 1340     		ands	r3, r2
  57 0028 9AB2     		uxth	r2, r3
  58 002a 7B68     		ldr	r3, [r7, #4]
  59 002c 9A80     		strh	r2, [r3, #4]
  14:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     _gpio->otyper |= 0x00000F00;
  60              		.loc 1 14 0
  61 002e 7B68     		ldr	r3, [r7, #4]
  62 0030 9B88     		ldrh	r3, [r3, #4]
  63 0032 F022     		movs	r2, #240
  64 0034 1201     		lsls	r2, r2, #4
  65 0036 1343     		orrs	r3, r2
  66 0038 9AB2     		uxth	r2, r3
  67 003a 7B68     		ldr	r3, [r7, #4]
  68 003c 9A80     		strh	r2, [r3, #4]
  15:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  16:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt pinnar 15-12 till "floating"
  17:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// och pinnar 11-8 till "pull-down"
  18:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     _gpio->pupdr &= 0x0000FFFF;
  69              		.loc 1 18 0
  70 003e 7B68     		ldr	r3, [r7, #4]
  71 0040 DB68     		ldr	r3, [r3, #12]
  72 0042 1B04     		lsls	r3, r3, #16
  73 0044 1A0C     		lsrs	r2, r3, #16
  74 0046 7B68     		ldr	r3, [r7, #4]
  75 0048 DA60     		str	r2, [r3, #12]
  19:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     _gpio->pupdr |= 0x00AA0000;
  76              		.loc 1 19 0
  77 004a 7B68     		ldr	r3, [r7, #4]
  78 004c DB68     		ldr	r3, [r3, #12]
  79 004e AA22     		movs	r2, #170
  80 0050 1204     		lsls	r2, r2, #16
  81 0052 1A43     		orrs	r2, r3
  82 0054 7B68     		ldr	r3, [r7, #4]
  83 0056 DA60     		str	r2, [r3, #12]
  20:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
  84              		.loc 1 20 0
  85 0058 C046     		nop
  86 005a BD46     		mov	sp, r7
  87 005c 02B0     		add	sp, sp, #8
  88              		@ sp needed
  89 005e 80BD     		pop	{r7, pc}
  90              	.L3:
  91              		.align	2
  92              	.L2:
  93 0060 FFFF0055 		.word	1426128895
  94              		.cfi_endproc
  95              	.LFE0:
  97              		.align	1
  98              		.global	setup_for_seg_disp
  99              		.syntax unified
 100              		.code	16
 101              		.thumb_func
 102              		.fpu softvfp
 104              	setup_for_seg_disp:
 105              	.LFB1:
  21:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  22:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void setup_for_seg_disp(GPIO* _gpio) {
 106              		.loc 1 22 0
 107              		.cfi_startproc
 108              		@ args = 0, pretend = 0, frame = 8
 109              		@ frame_needed = 1, uses_anonymous_args = 0
 110 0064 80B5     		push	{r7, lr}
 111              		.cfi_def_cfa_offset 8
 112              		.cfi_offset 7, -8
 113              		.cfi_offset 14, -4
 114 0066 82B0     		sub	sp, sp, #8
 115              		.cfi_def_cfa_offset 16
 116 0068 00AF     		add	r7, sp, #0
 117              		.cfi_def_cfa_register 7
 118 006a 7860     		str	r0, [r7, #4]
  23:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt pinnar 7-0 till utportar
  24:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	_gpio->moder &= 0xFFFF0000;
 119              		.loc 1 24 0
 120 006c 7B68     		ldr	r3, [r7, #4]
 121 006e 1B68     		ldr	r3, [r3]
 122 0070 1B0C     		lsrs	r3, r3, #16
 123 0072 1A04     		lsls	r2, r3, #16
 124 0074 7B68     		ldr	r3, [r7, #4]
 125 0076 1A60     		str	r2, [r3]
  25:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	_gpio->moder |= 0x00005555;
 126              		.loc 1 25 0
 127 0078 7B68     		ldr	r3, [r7, #4]
 128 007a 1B68     		ldr	r3, [r3]
 129 007c 114A     		ldr	r2, .L5
 130 007e 1A43     		orrs	r2, r3
 131 0080 7B68     		ldr	r3, [r7, #4]
 132 0082 1A60     		str	r2, [r3]
  26:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  27:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt pinnar 7-0 till "push-pull"
  28:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	_gpio->otyper &= 0xFFFFFF00;
 133              		.loc 1 28 0
 134 0084 7B68     		ldr	r3, [r7, #4]
 135 0086 9B88     		ldrh	r3, [r3, #4]
 136 0088 FF22     		movs	r2, #255
 137 008a 9343     		bics	r3, r2
 138 008c 9AB2     		uxth	r2, r3
 139 008e 7B68     		ldr	r3, [r7, #4]
 140 0090 9A80     		strh	r2, [r3, #4]
  29:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	_gpio->otyper |= 0x000000FF;
 141              		.loc 1 29 0
 142 0092 7B68     		ldr	r3, [r7, #4]
 143 0094 9B88     		ldrh	r3, [r3, #4]
 144 0096 FF22     		movs	r2, #255
 145 0098 1343     		orrs	r3, r2
 146 009a 9AB2     		uxth	r2, r3
 147 009c 7B68     		ldr	r3, [r7, #4]
 148 009e 9A80     		strh	r2, [r3, #4]
  30:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  31:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätter pinnar 4-0 till "pull-down"
  32:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	_gpio->pupdr &= 0xFFFFFF00;
 149              		.loc 1 32 0
 150 00a0 7B68     		ldr	r3, [r7, #4]
 151 00a2 DB68     		ldr	r3, [r3, #12]
 152 00a4 FF22     		movs	r2, #255
 153 00a6 9343     		bics	r3, r2
 154 00a8 1A00     		movs	r2, r3
 155 00aa 7B68     		ldr	r3, [r7, #4]
 156 00ac DA60     		str	r2, [r3, #12]
  33:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	_gpio->pupdr |= 0x000000AA;
 157              		.loc 1 33 0
 158 00ae 7B68     		ldr	r3, [r7, #4]
 159 00b0 DB68     		ldr	r3, [r3, #12]
 160 00b2 AA22     		movs	r2, #170
 161 00b4 1A43     		orrs	r2, r3
 162 00b6 7B68     		ldr	r3, [r7, #4]
 163 00b8 DA60     		str	r2, [r3, #12]
  34:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 164              		.loc 1 34 0
 165 00ba C046     		nop
 166 00bc BD46     		mov	sp, r7
 167 00be 02B0     		add	sp, sp, #8
 168              		@ sp needed
 169 00c0 80BD     		pop	{r7, pc}
 170              	.L6:
 171 00c2 C046     		.align	2
 172              	.L5:
 173 00c4 55550000 		.word	21845
 174              		.cfi_endproc
 175              	.LFE1:
 177              		.section	.rodata
 178              		.align	2
 179              	.LC0:
 180 0000 01       		.byte	1
 181 0001 02       		.byte	2
 182 0002 03       		.byte	3
 183 0003 0A       		.byte	10
 184 0004 04       		.byte	4
 185 0005 05       		.byte	5
 186 0006 06       		.byte	6
 187 0007 0B       		.byte	11
 188 0008 07       		.byte	7
 189 0009 08       		.byte	8
 190 000a 09       		.byte	9
 191 000b 0C       		.byte	12
 192 000c 0E       		.byte	14
 193 000d 00       		.byte	0
 194 000e 0F       		.byte	15
 195 000f 0D       		.byte	13
 196              		.text
 197              		.align	1
 198              		.global	keyb
 199              		.syntax unified
 200              		.code	16
 201              		.thumb_func
 202              		.fpu softvfp
 204              	keyb:
 205              	.LFB2:
  35:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  36:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** unsigned char keyb(void) {
 206              		.loc 1 36 0
 207              		.cfi_startproc
 208              		@ args = 0, pretend = 0, frame = 24
 209              		@ frame_needed = 1, uses_anonymous_args = 0
 210 00c8 90B5     		push	{r4, r7, lr}
 211              		.cfi_def_cfa_offset 12
 212              		.cfi_offset 4, -12
 213              		.cfi_offset 7, -8
 214              		.cfi_offset 14, -4
 215 00ca 87B0     		sub	sp, sp, #28
 216              		.cfi_def_cfa_offset 40
 217 00cc 00AF     		add	r7, sp, #0
 218              		.cfi_def_cfa_register 7
  37:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	unsigned char keys[] = {
 219              		.loc 1 37 0
 220 00ce 3B1D     		adds	r3, r7, #4
 221 00d0 1F4A     		ldr	r2, .L13
 222 00d2 13CA     		ldmia	r2!, {r0, r1, r4}
 223 00d4 13C3     		stmia	r3!, {r0, r1, r4}
 224 00d6 1268     		ldr	r2, [r2]
 225 00d8 1A60     		str	r2, [r3]
  38:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		1,  2,  3,  10,
  39:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		4,  5,  6,  11,
  40:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		7,  8,  9,  12,
  41:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		14, 0,  15, 13
  42:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	};
  43:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	unsigned char row, col;
  44:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	for(row = 0; row < 4; row++) {
 226              		.loc 1 44 0
 227 00da 1723     		movs	r3, #23
 228 00dc FB18     		adds	r3, r7, r3
 229 00de 0022     		movs	r2, #0
 230 00e0 1A70     		strb	r2, [r3]
 231 00e2 2AE0     		b	.L8
 232              	.L11:
  45:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		deactivate_rows(GPIO_D);
 233              		.loc 1 45 0
 234 00e4 1B4B     		ldr	r3, .L13+4
 235 00e6 1800     		movs	r0, r3
 236 00e8 FFF7FEFF 		bl	deactivate_rows
  46:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		activate_row(GPIO_D, row);
 237              		.loc 1 46 0
 238 00ec 1723     		movs	r3, #23
 239 00ee FB18     		adds	r3, r7, r3
 240 00f0 1B78     		ldrb	r3, [r3]
 241 00f2 184A     		ldr	r2, .L13+4
 242 00f4 1900     		movs	r1, r3
 243 00f6 1000     		movs	r0, r2
 244 00f8 FFF7FEFF 		bl	activate_row
  47:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		col = read_col(GPIO_D);
 245              		.loc 1 47 0
 246 00fc 1623     		movs	r3, #22
 247 00fe FC18     		adds	r4, r7, r3
 248 0100 144B     		ldr	r3, .L13+4
 249 0102 1800     		movs	r0, r3
 250 0104 FFF7FEFF 		bl	read_col
 251 0108 0300     		movs	r3, r0
 252 010a 2370     		strb	r3, [r4]
  48:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		if(col != 0xFF) {
 253              		.loc 1 48 0
 254 010c 1623     		movs	r3, #22
 255 010e FB18     		adds	r3, r7, r3
 256 0110 1B78     		ldrb	r3, [r3]
 257 0112 FF2B     		cmp	r3, #255
 258 0114 0AD0     		beq	.L9
  49:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			return keys[ 4 * row + col];
 259              		.loc 1 49 0
 260 0116 1723     		movs	r3, #23
 261 0118 FB18     		adds	r3, r7, r3
 262 011a 1B78     		ldrb	r3, [r3]
 263 011c 9A00     		lsls	r2, r3, #2
 264 011e 1623     		movs	r3, #22
 265 0120 FB18     		adds	r3, r7, r3
 266 0122 1B78     		ldrb	r3, [r3]
 267 0124 D318     		adds	r3, r2, r3
 268 0126 3A1D     		adds	r2, r7, #4
 269 0128 D35C     		ldrb	r3, [r2, r3]
 270 012a 0CE0     		b	.L12
 271              	.L9:
  44:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		deactivate_rows(GPIO_D);
 272              		.loc 1 44 0 discriminator 2
 273 012c 1723     		movs	r3, #23
 274 012e FB18     		adds	r3, r7, r3
 275 0130 1A78     		ldrb	r2, [r3]
 276 0132 1723     		movs	r3, #23
 277 0134 FB18     		adds	r3, r7, r3
 278 0136 0132     		adds	r2, r2, #1
 279 0138 1A70     		strb	r2, [r3]
 280              	.L8:
  44:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		deactivate_rows(GPIO_D);
 281              		.loc 1 44 0 is_stmt 0 discriminator 1
 282 013a 1723     		movs	r3, #23
 283 013c FB18     		adds	r3, r7, r3
 284 013e 1B78     		ldrb	r3, [r3]
 285 0140 032B     		cmp	r3, #3
 286 0142 CFD9     		bls	.L11
  50:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		}
  51:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
  52:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	return 0xFF;
 287              		.loc 1 52 0 is_stmt 1
 288 0144 FF23     		movs	r3, #255
 289              	.L12:
  53:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 290              		.loc 1 53 0 discriminator 1
 291 0146 1800     		movs	r0, r3
 292 0148 BD46     		mov	sp, r7
 293 014a 07B0     		add	sp, sp, #28
 294              		@ sp needed
 295 014c 90BD     		pop	{r4, r7, pc}
 296              	.L14:
 297 014e C046     		.align	2
 298              	.L13:
 299 0150 00000000 		.word	.LC0
 300 0154 000C0240 		.word	1073875968
 301              		.cfi_endproc
 302              	.LFE2:
 304              		.section	.rodata
 305              		.align	2
 306              	.LC1:
 307 0010 3F00     		.short	63
 308 0012 0600     		.short	6
 309 0014 5B00     		.short	91
 310 0016 4F00     		.short	79
 311 0018 6600     		.short	102
 312 001a 6D00     		.short	109
 313 001c 7D00     		.short	125
 314 001e 0700     		.short	7
 315 0020 7F00     		.short	127
 316 0022 6F00     		.short	111
 317 0024 7700     		.short	119
 318 0026 7C00     		.short	124
 319 0028 5800     		.short	88
 320 002a 5E00     		.short	94
 321 002c 8000     		.short	128
 322 002e 7600     		.short	118
 323              		.text
 324              		.align	1
 325              		.global	out7seg
 326              		.syntax unified
 327              		.code	16
 328              		.thumb_func
 329              		.fpu softvfp
 331              	out7seg:
 332              	.LFB3:
  54:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  55:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void out7seg(GPIO* _gpio, unsigned char c) {
 333              		.loc 1 55 0
 334              		.cfi_startproc
 335              		@ args = 0, pretend = 0, frame = 40
 336              		@ frame_needed = 1, uses_anonymous_args = 0
 337 0158 90B5     		push	{r4, r7, lr}
 338              		.cfi_def_cfa_offset 12
 339              		.cfi_offset 4, -12
 340              		.cfi_offset 7, -8
 341              		.cfi_offset 14, -4
 342 015a 8BB0     		sub	sp, sp, #44
 343              		.cfi_def_cfa_offset 56
 344 015c 00AF     		add	r7, sp, #0
 345              		.cfi_def_cfa_register 7
 346 015e 7860     		str	r0, [r7, #4]
 347 0160 0A00     		movs	r2, r1
 348 0162 FB1C     		adds	r3, r7, #3
 349 0164 1A70     		strb	r2, [r3]
  56:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     unsigned short result[] = {
 350              		.loc 1 56 0
 351 0166 0823     		movs	r3, #8
 352 0168 FB18     		adds	r3, r7, r3
 353 016a 0E4A     		ldr	r2, .L19
 354 016c 13CA     		ldmia	r2!, {r0, r1, r4}
 355 016e 13C3     		stmia	r3!, {r0, r1, r4}
 356 0170 13CA     		ldmia	r2!, {r0, r1, r4}
 357 0172 13C3     		stmia	r3!, {r0, r1, r4}
 358 0174 03CA     		ldmia	r2!, {r0, r1}
 359 0176 03C3     		stmia	r3!, {r0, r1}
  57:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x3F, // 0
  58:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x06, // 1
  59:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x5B, // 2
  60:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x4F, // 3
  61:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x66, // 4
  62:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x6D, // 5
  63:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x7D, // 6
  64:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x07, // 7
  65:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x7F, // 8
  66:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x6F, // 9
  67:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x77, // A
  68:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x7C, // B
  69:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x58, // C
  70:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x5E, // D
  71:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x80, // E
  72:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		0x76  // F
  73:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	};
  74:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  75:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     if(c > 0xF) {
 360              		.loc 1 75 0
 361 0178 FB1C     		adds	r3, r7, #3
 362 017a 1B78     		ldrb	r3, [r3]
 363 017c 0F2B     		cmp	r3, #15
 364 017e 03D9     		bls	.L16
  76:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		_gpio->odrLow = 0x00;
 365              		.loc 1 76 0
 366 0180 7B68     		ldr	r3, [r7, #4]
 367 0182 0022     		movs	r2, #0
 368 0184 1A75     		strb	r2, [r3, #20]
  77:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     } else {
  78:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		_gpio->odrLow = result[c];
  79:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     }
  80:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 369              		.loc 1 80 0
 370 0186 08E0     		b	.L18
 371              	.L16:
  78:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c ****     }
 372              		.loc 1 78 0
 373 0188 FB1C     		adds	r3, r7, #3
 374 018a 1A78     		ldrb	r2, [r3]
 375 018c 0823     		movs	r3, #8
 376 018e FB18     		adds	r3, r7, r3
 377 0190 5200     		lsls	r2, r2, #1
 378 0192 D35A     		ldrh	r3, [r2, r3]
 379 0194 DAB2     		uxtb	r2, r3
 380 0196 7B68     		ldr	r3, [r7, #4]
 381 0198 1A75     		strb	r2, [r3, #20]
 382              	.L18:
 383              		.loc 1 80 0
 384 019a C046     		nop
 385 019c BD46     		mov	sp, r7
 386 019e 0BB0     		add	sp, sp, #44
 387              		@ sp needed
 388 01a0 90BD     		pop	{r4, r7, pc}
 389              	.L20:
 390 01a2 C046     		.align	2
 391              	.L19:
 392 01a4 10000000 		.word	.LC1
 393              		.cfi_endproc
 394              	.LFE3:
 396              		.align	1
 397              		.global	activate_row
 398              		.syntax unified
 399              		.code	16
 400              		.thumb_func
 401              		.fpu softvfp
 403              	activate_row:
 404              	.LFB4:
  81:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  82:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void activate_row(GPIO* _gpio, unsigned char row) {
 405              		.loc 1 82 0
 406              		.cfi_startproc
 407              		@ args = 0, pretend = 0, frame = 8
 408              		@ frame_needed = 1, uses_anonymous_args = 0
 409 01a8 80B5     		push	{r7, lr}
 410              		.cfi_def_cfa_offset 8
 411              		.cfi_offset 7, -8
 412              		.cfi_offset 14, -4
 413 01aa 82B0     		sub	sp, sp, #8
 414              		.cfi_def_cfa_offset 16
 415 01ac 00AF     		add	r7, sp, #0
 416              		.cfi_def_cfa_register 7
 417 01ae 7860     		str	r0, [r7, #4]
 418 01b0 0A00     		movs	r2, r1
 419 01b2 FB1C     		adds	r3, r7, #3
 420 01b4 1A70     		strb	r2, [r3]
  83:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	switch(row){
 421              		.loc 1 83 0
 422 01b6 FB1C     		adds	r3, r7, #3
 423 01b8 1B78     		ldrb	r3, [r3]
 424 01ba 012B     		cmp	r3, #1
 425 01bc 0CD0     		beq	.L23
 426 01be 02DC     		bgt	.L24
 427 01c0 002B     		cmp	r3, #0
 428 01c2 05D0     		beq	.L25
  84:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case 0: _gpio->odrHigh = 0x10; break;
  85:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case 1: _gpio->odrHigh = 0x20; break;
  86:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case 2: _gpio->odrHigh = 0x40; break;
  87:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case 3: _gpio->odrHigh = 0x80; break;
  88:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
  89:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 429              		.loc 1 89 0
 430 01c4 14E0     		b	.L28
 431              	.L24:
  83:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	switch(row){
 432              		.loc 1 83 0
 433 01c6 022B     		cmp	r3, #2
 434 01c8 0AD0     		beq	.L26
 435 01ca 032B     		cmp	r3, #3
 436 01cc 0CD0     		beq	.L27
 437              		.loc 1 89 0
 438 01ce 0FE0     		b	.L28
 439              	.L25:
  84:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case 0: _gpio->odrHigh = 0x10; break;
 440              		.loc 1 84 0
 441 01d0 7B68     		ldr	r3, [r7, #4]
 442 01d2 1022     		movs	r2, #16
 443 01d4 5A75     		strb	r2, [r3, #21]
 444 01d6 0BE0     		b	.L22
 445              	.L23:
  85:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case 2: _gpio->odrHigh = 0x40; break;
 446              		.loc 1 85 0
 447 01d8 7B68     		ldr	r3, [r7, #4]
 448 01da 2022     		movs	r2, #32
 449 01dc 5A75     		strb	r2, [r3, #21]
 450 01de 07E0     		b	.L22
 451              	.L26:
  86:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case 3: _gpio->odrHigh = 0x80; break;
 452              		.loc 1 86 0
 453 01e0 7B68     		ldr	r3, [r7, #4]
 454 01e2 4022     		movs	r2, #64
 455 01e4 5A75     		strb	r2, [r3, #21]
 456 01e6 03E0     		b	.L22
 457              	.L27:
  87:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 458              		.loc 1 87 0
 459 01e8 7B68     		ldr	r3, [r7, #4]
 460 01ea 8022     		movs	r2, #128
 461 01ec 5A75     		strb	r2, [r3, #21]
 462 01ee C046     		nop
 463              	.L22:
 464              	.L28:
 465              		.loc 1 89 0
 466 01f0 C046     		nop
 467 01f2 BD46     		mov	sp, r7
 468 01f4 02B0     		add	sp, sp, #8
 469              		@ sp needed
 470 01f6 80BD     		pop	{r7, pc}
 471              		.cfi_endproc
 472              	.LFE4:
 474              		.align	1
 475              		.global	deactivate_rows
 476              		.syntax unified
 477              		.code	16
 478              		.thumb_func
 479              		.fpu softvfp
 481              	deactivate_rows:
 482              	.LFB5:
  90:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  91:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void deactivate_rows(GPIO* _gpio) {
 483              		.loc 1 91 0
 484              		.cfi_startproc
 485              		@ args = 0, pretend = 0, frame = 8
 486              		@ frame_needed = 1, uses_anonymous_args = 0
 487 01f8 80B5     		push	{r7, lr}
 488              		.cfi_def_cfa_offset 8
 489              		.cfi_offset 7, -8
 490              		.cfi_offset 14, -4
 491 01fa 82B0     		sub	sp, sp, #8
 492              		.cfi_def_cfa_offset 16
 493 01fc 00AF     		add	r7, sp, #0
 494              		.cfi_def_cfa_register 7
 495 01fe 7860     		str	r0, [r7, #4]
  92:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	_gpio->odrHigh = 0x00;
 496              		.loc 1 92 0
 497 0200 7B68     		ldr	r3, [r7, #4]
 498 0202 0022     		movs	r2, #0
 499 0204 5A75     		strb	r2, [r3, #21]
  93:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 500              		.loc 1 93 0
 501 0206 C046     		nop
 502 0208 BD46     		mov	sp, r7
 503 020a 02B0     		add	sp, sp, #8
 504              		@ sp needed
 505 020c 80BD     		pop	{r7, pc}
 506              		.cfi_endproc
 507              	.LFE5:
 509              		.align	1
 510              		.global	read_col
 511              		.syntax unified
 512              		.code	16
 513              		.thumb_func
 514              		.fpu softvfp
 516              	read_col:
 517              	.LFB6:
  94:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
  95:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** unsigned char read_col(GPIO* _gpio) {
 518              		.loc 1 95 0
 519              		.cfi_startproc
 520              		@ args = 0, pretend = 0, frame = 8
 521              		@ frame_needed = 1, uses_anonymous_args = 0
 522 020e 80B5     		push	{r7, lr}
 523              		.cfi_def_cfa_offset 8
 524              		.cfi_offset 7, -8
 525              		.cfi_offset 14, -4
 526 0210 82B0     		sub	sp, sp, #8
 527              		.cfi_def_cfa_offset 16
 528 0212 00AF     		add	r7, sp, #0
 529              		.cfi_def_cfa_register 7
 530 0214 7860     		str	r0, [r7, #4]
  96:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(_gpio->idrHigh & 0x01) return 0;
 531              		.loc 1 96 0
 532 0216 7B68     		ldr	r3, [r7, #4]
 533 0218 5B7C     		ldrb	r3, [r3, #17]
 534 021a 1A00     		movs	r2, r3
 535 021c 0123     		movs	r3, #1
 536 021e 1340     		ands	r3, r2
 537 0220 01D0     		beq	.L31
 538              		.loc 1 96 0 is_stmt 0 discriminator 1
 539 0222 0023     		movs	r3, #0
 540 0224 18E0     		b	.L32
 541              	.L31:
  97:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(_gpio->idrHigh & 0x02) return 1;
 542              		.loc 1 97 0 is_stmt 1
 543 0226 7B68     		ldr	r3, [r7, #4]
 544 0228 5B7C     		ldrb	r3, [r3, #17]
 545 022a 1A00     		movs	r2, r3
 546 022c 0223     		movs	r3, #2
 547 022e 1340     		ands	r3, r2
 548 0230 01D0     		beq	.L33
 549              		.loc 1 97 0 is_stmt 0 discriminator 1
 550 0232 0123     		movs	r3, #1
 551 0234 10E0     		b	.L32
 552              	.L33:
  98:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(_gpio->idrHigh & 0x04) return 2;
 553              		.loc 1 98 0 is_stmt 1
 554 0236 7B68     		ldr	r3, [r7, #4]
 555 0238 5B7C     		ldrb	r3, [r3, #17]
 556 023a 1A00     		movs	r2, r3
 557 023c 0423     		movs	r3, #4
 558 023e 1340     		ands	r3, r2
 559 0240 01D0     		beq	.L34
 560              		.loc 1 98 0 is_stmt 0 discriminator 1
 561 0242 0223     		movs	r3, #2
 562 0244 08E0     		b	.L32
 563              	.L34:
  99:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(_gpio->idrHigh & 0x08) return 3;
 564              		.loc 1 99 0 is_stmt 1
 565 0246 7B68     		ldr	r3, [r7, #4]
 566 0248 5B7C     		ldrb	r3, [r3, #17]
 567 024a 1A00     		movs	r2, r3
 568 024c 0823     		movs	r3, #8
 569 024e 1340     		ands	r3, r2
 570 0250 01D0     		beq	.L35
 571              		.loc 1 99 0 is_stmt 0 discriminator 1
 572 0252 0323     		movs	r3, #3
 573 0254 00E0     		b	.L32
 574              	.L35:
 100:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	return 0xFF;
 575              		.loc 1 100 0 is_stmt 1
 576 0256 FF23     		movs	r3, #255
 577              	.L32:
 101:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 578              		.loc 1 101 0
 579 0258 1800     		movs	r0, r3
 580 025a BD46     		mov	sp, r7
 581 025c 02B0     		add	sp, sp, #8
 582              		@ sp needed
 583 025e 80BD     		pop	{r7, pc}
 584              		.cfi_endproc
 585              	.LFE6:
 587              		.align	1
 588              		.global	setup_for_ascii_display
 589              		.syntax unified
 590              		.code	16
 591              		.thumb_func
 592              		.fpu softvfp
 594              	setup_for_ascii_display:
 595              	.LFB7:
 102:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 103:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void setup_for_ascii_display() {
 596              		.loc 1 103 0
 597              		.cfi_startproc
 598              		@ args = 0, pretend = 0, frame = 0
 599              		@ frame_needed = 1, uses_anonymous_args = 0
 600 0260 80B5     		push	{r7, lr}
 601              		.cfi_def_cfa_offset 8
 602              		.cfi_offset 7, -8
 603              		.cfi_offset 14, -4
 604 0262 00AF     		add	r7, sp, #0
 605              		.cfi_def_cfa_register 7
 104:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt alla pinnar till utportar.
 105:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder = 0x55555555;
 606              		.loc 1 105 0
 607 0264 054B     		ldr	r3, .L37
 608 0266 064A     		ldr	r2, .L37+4
 609 0268 1A60     		str	r2, [r3]
 106:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 107:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt utportar till "push/pull".
 108:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	//GPIO_E->otyper = 0x00000000;
 109:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 110:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt utportars hastighet till medium.
 111:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->ospeedr = 0x55555555;
 610              		.loc 1 111 0
 611 026a 044B     		ldr	r3, .L37
 612 026c 044A     		ldr	r2, .L37+4
 613 026e 9A60     		str	r2, [r3, #8]
 112:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 113:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt utportart hastighet till low.
 114:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	//GPIO_E->ospeedr = 0x00000000;
 115:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 116:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// inportar är "pull-up"
 117:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	//GPIO_E->pupdr = 0x55550000;
 118:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 119:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_init();
 614              		.loc 1 119 0
 615 0270 FFF7FEFF 		bl	ascii_init
 120:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 616              		.loc 1 120 0
 617 0274 C046     		nop
 618 0276 BD46     		mov	sp, r7
 619              		@ sp needed
 620 0278 80BD     		pop	{r7, pc}
 621              	.L38:
 622 027a C046     		.align	2
 623              	.L37:
 624 027c 00100240 		.word	1073876992
 625 0280 55555555 		.word	1431655765
 626              		.cfi_endproc
 627              	.LFE7:
 629              		.align	1
 630              		.global	ascii_init
 631              		.syntax unified
 632              		.code	16
 633              		.thumb_func
 634              		.fpu softvfp
 636              	ascii_init:
 637              	.LFB8:
 121:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 122:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void ascii_init(void) {
 638              		.loc 1 122 0
 639              		.cfi_startproc
 640              		@ args = 0, pretend = 0, frame = 0
 641              		@ frame_needed = 1, uses_anonymous_args = 0
 642 0284 80B5     		push	{r7, lr}
 643              		.cfi_def_cfa_offset 8
 644              		.cfi_offset 7, -8
 645              		.cfi_offset 14, -4
 646 0286 00AF     		add	r7, sp, #0
 647              		.cfi_def_cfa_register 7
 123:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	while((ascii_read_status() & 0x80) == 0x80)
 648              		.loc 1 123 0
 649 0288 C046     		nop
 650              	.L40:
 651              		.loc 1 123 0 is_stmt 0 discriminator 1
 652 028a FFF7FEFF 		bl	ascii_read_status
 653 028e 0300     		movs	r3, r0
 654 0290 1A00     		movs	r2, r3
 655 0292 8023     		movs	r3, #128
 656 0294 1340     		ands	r3, r2
 657 0296 802B     		cmp	r3, #128
 658 0298 F7D0     		beq	.L40
 124:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	{} // vänta tills display är klar att ta emot komando.
 125:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(20);
 659              		.loc 1 125 0 is_stmt 1
 660 029a 1420     		movs	r0, #20
 661 029c FFF7FEFF 		bl	delay_mikro
 126:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Function Set - 2 rader, 5x8 punkters tecken.
 127:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_write_cmd(0x38);
 662              		.loc 1 127 0
 663 02a0 3820     		movs	r0, #56
 664 02a2 FFF7FEFF 		bl	ascii_write_cmd
 128:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(39);
 665              		.loc 1 128 0
 666 02a6 2720     		movs	r0, #39
 667 02a8 FFF7FEFF 		bl	delay_mikro
 129:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 130:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 131:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	while((ascii_read_status() & 0x80) == 0x80)
 668              		.loc 1 131 0
 669 02ac C046     		nop
 670              	.L41:
 671              		.loc 1 131 0 is_stmt 0 discriminator 1
 672 02ae FFF7FEFF 		bl	ascii_read_status
 673 02b2 0300     		movs	r3, r0
 674 02b4 1A00     		movs	r2, r3
 675 02b6 8023     		movs	r3, #128
 676 02b8 1340     		ands	r3, r2
 677 02ba 802B     		cmp	r3, #128
 678 02bc F7D0     		beq	.L41
 132:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	{} // vänta tills display är klar att ta emot komando.
 133:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(20);
 679              		.loc 1 133 0 is_stmt 1
 680 02be 1420     		movs	r0, #20
 681 02c0 FFF7FEFF 		bl	delay_mikro
 134:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Tänd display, tänd markör ("cursor"), konstant visning.
 135:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_write_cmd(0x0E);
 682              		.loc 1 135 0
 683 02c4 0E20     		movs	r0, #14
 684 02c6 FFF7FEFF 		bl	ascii_write_cmd
 136:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(39);
 685              		.loc 1 136 0
 686 02ca 2720     		movs	r0, #39
 687 02cc FFF7FEFF 		bl	delay_mikro
 137:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 138:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	while((ascii_read_status() & 0x80) == 0x80)
 688              		.loc 1 138 0
 689 02d0 C046     		nop
 690              	.L42:
 691              		.loc 1 138 0 is_stmt 0 discriminator 1
 692 02d2 FFF7FEFF 		bl	ascii_read_status
 693 02d6 0300     		movs	r3, r0
 694 02d8 1A00     		movs	r2, r3
 695 02da 8023     		movs	r3, #128
 696 02dc 1340     		ands	r3, r2
 697 02de 802B     		cmp	r3, #128
 698 02e0 F7D0     		beq	.L42
 139:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	{} // vänta tills display är klar att ta emot komando.
 140:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(20);
 699              		.loc 1 140 0 is_stmt 1
 700 02e2 1420     		movs	r0, #20
 701 02e4 FFF7FEFF 		bl	delay_mikro
 141:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Clear display.
 142:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_write_cmd(0x01);
 702              		.loc 1 142 0
 703 02e8 0120     		movs	r0, #1
 704 02ea FFF7FEFF 		bl	ascii_write_cmd
 143:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(39);
 705              		.loc 1 143 0
 706 02ee 2720     		movs	r0, #39
 707 02f0 FFF7FEFF 		bl	delay_mikro
 144:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 145:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	while((ascii_read_status() & 0x80) == 0x80)
 708              		.loc 1 145 0
 709 02f4 C046     		nop
 710              	.L43:
 711              		.loc 1 145 0 is_stmt 0 discriminator 1
 712 02f6 FFF7FEFF 		bl	ascii_read_status
 713 02fa 0300     		movs	r3, r0
 714 02fc 1A00     		movs	r2, r3
 715 02fe 8023     		movs	r3, #128
 716 0300 1340     		ands	r3, r2
 717 0302 802B     		cmp	r3, #128
 718 0304 F7D0     		beq	.L43
 146:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	{} // vänta tills display är klar att ta emot komando.
 147:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(20);
 719              		.loc 1 147 0 is_stmt 1
 720 0306 1420     		movs	r0, #20
 721 0308 FFF7FEFF 		bl	delay_mikro
 148:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Adressering med "increment", inget skift av adressbuffern.
 149:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_write_cmd(0x04);
 722              		.loc 1 149 0
 723 030c 0420     		movs	r0, #4
 724 030e FFF7FEFF 		bl	ascii_write_cmd
 150:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(39);
 725              		.loc 1 150 0
 726 0312 2720     		movs	r0, #39
 727 0314 FFF7FEFF 		bl	delay_mikro
 151:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 728              		.loc 1 151 0
 729 0318 C046     		nop
 730 031a BD46     		mov	sp, r7
 731              		@ sp needed
 732 031c 80BD     		pop	{r7, pc}
 733              		.cfi_endproc
 734              	.LFE8:
 736              		.align	1
 737              		.global	ascii_ctrl_bit_set
 738              		.syntax unified
 739              		.code	16
 740              		.thumb_func
 741              		.fpu softvfp
 743              	ascii_ctrl_bit_set:
 744              	.LFB9:
 152:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 153:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void ascii_ctrl_bit_set(unsigned char x) {
 745              		.loc 1 153 0
 746              		.cfi_startproc
 747              		@ args = 0, pretend = 0, frame = 16
 748              		@ frame_needed = 1, uses_anonymous_args = 0
 749 031e 80B5     		push	{r7, lr}
 750              		.cfi_def_cfa_offset 8
 751              		.cfi_offset 7, -8
 752              		.cfi_offset 14, -4
 753 0320 84B0     		sub	sp, sp, #16
 754              		.cfi_def_cfa_offset 24
 755 0322 00AF     		add	r7, sp, #0
 756              		.cfi_def_cfa_register 7
 757 0324 0200     		movs	r2, r0
 758 0326 FB1D     		adds	r3, r7, #7
 759 0328 1A70     		strb	r2, [r3]
 154:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	//GPIO_E->odrLow |= x;
 155:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 156:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	unsigned char c;
 157:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c = GPIO_E->odrLow;
 760              		.loc 1 157 0
 761 032a 0D4A     		ldr	r2, .L45
 762 032c 0F23     		movs	r3, #15
 763 032e FB18     		adds	r3, r7, r3
 764 0330 127D     		ldrb	r2, [r2, #20]
 765 0332 1A70     		strb	r2, [r3]
 158:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c |= (B_SELECT | x);
 766              		.loc 1 158 0
 767 0334 FA1D     		adds	r2, r7, #7
 768 0336 0F23     		movs	r3, #15
 769 0338 FB18     		adds	r3, r7, r3
 770 033a 1278     		ldrb	r2, [r2]
 771 033c 1B78     		ldrb	r3, [r3]
 772 033e 1343     		orrs	r3, r2
 773 0340 DAB2     		uxtb	r2, r3
 774 0342 0F23     		movs	r3, #15
 775 0344 FB18     		adds	r3, r7, r3
 776 0346 0421     		movs	r1, #4
 777 0348 0A43     		orrs	r2, r1
 778 034a 1A70     		strb	r2, [r3]
 159:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->odrLow = c;
 779              		.loc 1 159 0
 780 034c 044A     		ldr	r2, .L45
 781 034e 0F23     		movs	r3, #15
 782 0350 FB18     		adds	r3, r7, r3
 783 0352 1B78     		ldrb	r3, [r3]
 784 0354 1375     		strb	r3, [r2, #20]
 160:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 785              		.loc 1 160 0
 786 0356 C046     		nop
 787 0358 BD46     		mov	sp, r7
 788 035a 04B0     		add	sp, sp, #16
 789              		@ sp needed
 790 035c 80BD     		pop	{r7, pc}
 791              	.L46:
 792 035e C046     		.align	2
 793              	.L45:
 794 0360 00100240 		.word	1073876992
 795              		.cfi_endproc
 796              	.LFE9:
 798              		.align	1
 799              		.global	ascii_ctrl_bit_clear
 800              		.syntax unified
 801              		.code	16
 802              		.thumb_func
 803              		.fpu softvfp
 805              	ascii_ctrl_bit_clear:
 806              	.LFB10:
 161:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 162:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void ascii_ctrl_bit_clear(unsigned char x) {
 807              		.loc 1 162 0
 808              		.cfi_startproc
 809              		@ args = 0, pretend = 0, frame = 16
 810              		@ frame_needed = 1, uses_anonymous_args = 0
 811 0364 80B5     		push	{r7, lr}
 812              		.cfi_def_cfa_offset 8
 813              		.cfi_offset 7, -8
 814              		.cfi_offset 14, -4
 815 0366 84B0     		sub	sp, sp, #16
 816              		.cfi_def_cfa_offset 24
 817 0368 00AF     		add	r7, sp, #0
 818              		.cfi_def_cfa_register 7
 819 036a 0200     		movs	r2, r0
 820 036c FB1D     		adds	r3, r7, #7
 821 036e 1A70     		strb	r2, [r3]
 163:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	//GPIO_E->odrLow &= (~x);
 164:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 165:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	unsigned char c;
 166:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c = GPIO_E->odrLow;
 822              		.loc 1 166 0
 823 0370 0F4A     		ldr	r2, .L48
 824 0372 0F23     		movs	r3, #15
 825 0374 FB18     		adds	r3, r7, r3
 826 0376 127D     		ldrb	r2, [r2, #20]
 827 0378 1A70     		strb	r2, [r3]
 167:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c = (B_SELECT | c & ~x);
 828              		.loc 1 167 0
 829 037a FB1D     		adds	r3, r7, #7
 830 037c 1B78     		ldrb	r3, [r3]
 831 037e 5BB2     		sxtb	r3, r3
 832 0380 DB43     		mvns	r3, r3
 833 0382 5BB2     		sxtb	r3, r3
 834 0384 0F22     		movs	r2, #15
 835 0386 BA18     		adds	r2, r7, r2
 836 0388 1278     		ldrb	r2, [r2]
 837 038a 52B2     		sxtb	r2, r2
 838 038c 1340     		ands	r3, r2
 839 038e 5BB2     		sxtb	r3, r3
 840 0390 0422     		movs	r2, #4
 841 0392 1343     		orrs	r3, r2
 842 0394 5AB2     		sxtb	r2, r3
 843 0396 0F23     		movs	r3, #15
 844 0398 FB18     		adds	r3, r7, r3
 845 039a 1A70     		strb	r2, [r3]
 168:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->odrLow = c;
 846              		.loc 1 168 0
 847 039c 044A     		ldr	r2, .L48
 848 039e 0F23     		movs	r3, #15
 849 03a0 FB18     		adds	r3, r7, r3
 850 03a2 1B78     		ldrb	r3, [r3]
 851 03a4 1375     		strb	r3, [r2, #20]
 169:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 852              		.loc 1 169 0
 853 03a6 C046     		nop
 854 03a8 BD46     		mov	sp, r7
 855 03aa 04B0     		add	sp, sp, #16
 856              		@ sp needed
 857 03ac 80BD     		pop	{r7, pc}
 858              	.L49:
 859 03ae C046     		.align	2
 860              	.L48:
 861 03b0 00100240 		.word	1073876992
 862              		.cfi_endproc
 863              	.LFE10:
 865              		.align	1
 866              		.global	ascii_write_cmd
 867              		.syntax unified
 868              		.code	16
 869              		.thumb_func
 870              		.fpu softvfp
 872              	ascii_write_cmd:
 873              	.LFB11:
 170:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 171:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void ascii_write_cmd(unsigned char command) {
 874              		.loc 1 171 0
 875              		.cfi_startproc
 876              		@ args = 0, pretend = 0, frame = 8
 877              		@ frame_needed = 1, uses_anonymous_args = 0
 878 03b4 80B5     		push	{r7, lr}
 879              		.cfi_def_cfa_offset 8
 880              		.cfi_offset 7, -8
 881              		.cfi_offset 14, -4
 882 03b6 82B0     		sub	sp, sp, #8
 883              		.cfi_def_cfa_offset 16
 884 03b8 00AF     		add	r7, sp, #0
 885              		.cfi_def_cfa_register 7
 886 03ba 0200     		movs	r2, r0
 887 03bc FB1D     		adds	r3, r7, #7
 888 03be 1A70     		strb	r2, [r3]
 172:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Doesn't wait or check for the status flag...
 173:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_clear(B_RS);
 889              		.loc 1 173 0
 890 03c0 0120     		movs	r0, #1
 891 03c2 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 174:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_clear(B_RW);
 892              		.loc 1 174 0
 893 03c6 0220     		movs	r0, #2
 894 03c8 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 175:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_write_controller(command);
 895              		.loc 1 175 0
 896 03cc FB1D     		adds	r3, r7, #7
 897 03ce 1B78     		ldrb	r3, [r3]
 898 03d0 1800     		movs	r0, r3
 899 03d2 FFF7FEFF 		bl	ascii_write_controller
 176:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 900              		.loc 1 176 0
 901 03d6 C046     		nop
 902 03d8 BD46     		mov	sp, r7
 903 03da 02B0     		add	sp, sp, #8
 904              		@ sp needed
 905 03dc 80BD     		pop	{r7, pc}
 906              		.cfi_endproc
 907              	.LFE11:
 909              		.align	1
 910              		.global	ascii_write_data
 911              		.syntax unified
 912              		.code	16
 913              		.thumb_func
 914              		.fpu softvfp
 916              	ascii_write_data:
 917              	.LFB12:
 177:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 178:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void ascii_write_data(unsigned char data) {
 918              		.loc 1 178 0
 919              		.cfi_startproc
 920              		@ args = 0, pretend = 0, frame = 8
 921              		@ frame_needed = 1, uses_anonymous_args = 0
 922 03de 80B5     		push	{r7, lr}
 923              		.cfi_def_cfa_offset 8
 924              		.cfi_offset 7, -8
 925              		.cfi_offset 14, -4
 926 03e0 82B0     		sub	sp, sp, #8
 927              		.cfi_def_cfa_offset 16
 928 03e2 00AF     		add	r7, sp, #0
 929              		.cfi_def_cfa_register 7
 930 03e4 0200     		movs	r2, r0
 931 03e6 FB1D     		adds	r3, r7, #7
 932 03e8 1A70     		strb	r2, [r3]
 179:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_set(B_RS);
 933              		.loc 1 179 0
 934 03ea 0120     		movs	r0, #1
 935 03ec FFF7FEFF 		bl	ascii_ctrl_bit_set
 180:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_clear(B_RW);
 936              		.loc 1 180 0
 937 03f0 0220     		movs	r0, #2
 938 03f2 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 181:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_write_controller(data);
 939              		.loc 1 181 0
 940 03f6 FB1D     		adds	r3, r7, #7
 941 03f8 1B78     		ldrb	r3, [r3]
 942 03fa 1800     		movs	r0, r3
 943 03fc FFF7FEFF 		bl	ascii_write_controller
 182:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 944              		.loc 1 182 0
 945 0400 C046     		nop
 946 0402 BD46     		mov	sp, r7
 947 0404 02B0     		add	sp, sp, #8
 948              		@ sp needed
 949 0406 80BD     		pop	{r7, pc}
 950              		.cfi_endproc
 951              	.LFE12:
 953              		.align	1
 954              		.global	ascii_read_status
 955              		.syntax unified
 956              		.code	16
 957              		.thumb_func
 958              		.fpu softvfp
 960              	ascii_read_status:
 961              	.LFB13:
 183:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 184:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** unsigned char ascii_read_status(void) {
 962              		.loc 1 184 0
 963              		.cfi_startproc
 964              		@ args = 0, pretend = 0, frame = 8
 965              		@ frame_needed = 1, uses_anonymous_args = 0
 966 0408 90B5     		push	{r4, r7, lr}
 967              		.cfi_def_cfa_offset 12
 968              		.cfi_offset 4, -12
 969              		.cfi_offset 7, -8
 970              		.cfi_offset 14, -4
 971 040a 83B0     		sub	sp, sp, #12
 972              		.cfi_def_cfa_offset 24
 973 040c 00AF     		add	r7, sp, #0
 974              		.cfi_def_cfa_register 7
 185:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	unsigned char read_value;
 186:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 187:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt pinnar 15-8 till ingångar.
 188:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder &= 0x0000FFFF;
 975              		.loc 1 188 0
 976 040e 0E4B     		ldr	r3, .L54
 977 0410 0D4A     		ldr	r2, .L54
 978 0412 1268     		ldr	r2, [r2]
 979 0414 1204     		lsls	r2, r2, #16
 980 0416 120C     		lsrs	r2, r2, #16
 981 0418 1A60     		str	r2, [r3]
 189:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 190:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_clear(B_RS);
 982              		.loc 1 190 0
 983 041a 0120     		movs	r0, #1
 984 041c FFF7FEFF 		bl	ascii_ctrl_bit_clear
 191:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_set(B_RW);
 985              		.loc 1 191 0
 986 0420 0220     		movs	r0, #2
 987 0422 FFF7FEFF 		bl	ascii_ctrl_bit_set
 192:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	read_value = ascii_read_controller();
 988              		.loc 1 192 0
 989 0426 FC1D     		adds	r4, r7, #7
 990 0428 FFF7FEFF 		bl	ascii_read_controller
 991 042c 0300     		movs	r3, r0
 992 042e 2370     		strb	r3, [r4]
 193:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 194:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt pinnar 15-8 till utgångar igen.
 195:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder |= 0x55550000;
 993              		.loc 1 195 0
 994 0430 054B     		ldr	r3, .L54
 995 0432 054A     		ldr	r2, .L54
 996 0434 1268     		ldr	r2, [r2]
 997 0436 0549     		ldr	r1, .L54+4
 998 0438 0A43     		orrs	r2, r1
 999 043a 1A60     		str	r2, [r3]
 196:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 197:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	return read_value;
 1000              		.loc 1 197 0
 1001 043c FB1D     		adds	r3, r7, #7
 1002 043e 1B78     		ldrb	r3, [r3]
 198:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1003              		.loc 1 198 0
 1004 0440 1800     		movs	r0, r3
 1005 0442 BD46     		mov	sp, r7
 1006 0444 03B0     		add	sp, sp, #12
 1007              		@ sp needed
 1008 0446 90BD     		pop	{r4, r7, pc}
 1009              	.L55:
 1010              		.align	2
 1011              	.L54:
 1012 0448 00100240 		.word	1073876992
 1013 044c 00005555 		.word	1431633920
 1014              		.cfi_endproc
 1015              	.LFE13:
 1017              		.align	1
 1018              		.global	ascii_read_data
 1019              		.syntax unified
 1020              		.code	16
 1021              		.thumb_func
 1022              		.fpu softvfp
 1024              	ascii_read_data:
 1025              	.LFB14:
 199:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 200:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** unsigned char ascii_read_data(void) {
 1026              		.loc 1 200 0
 1027              		.cfi_startproc
 1028              		@ args = 0, pretend = 0, frame = 8
 1029              		@ frame_needed = 1, uses_anonymous_args = 0
 1030 0450 90B5     		push	{r4, r7, lr}
 1031              		.cfi_def_cfa_offset 12
 1032              		.cfi_offset 4, -12
 1033              		.cfi_offset 7, -8
 1034              		.cfi_offset 14, -4
 1035 0452 83B0     		sub	sp, sp, #12
 1036              		.cfi_def_cfa_offset 24
 1037 0454 00AF     		add	r7, sp, #0
 1038              		.cfi_def_cfa_register 7
 201:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	unsigned char read_value;
 202:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 203:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt pinnar 15-8 till ingångar.
 204:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder &= 0x0000FFFF;
 1039              		.loc 1 204 0
 1040 0456 0E4B     		ldr	r3, .L58
 1041 0458 0D4A     		ldr	r2, .L58
 1042 045a 1268     		ldr	r2, [r2]
 1043 045c 1204     		lsls	r2, r2, #16
 1044 045e 120C     		lsrs	r2, r2, #16
 1045 0460 1A60     		str	r2, [r3]
 205:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 206:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_set(B_RS);
 1046              		.loc 1 206 0
 1047 0462 0120     		movs	r0, #1
 1048 0464 FFF7FEFF 		bl	ascii_ctrl_bit_set
 207:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_set(B_RW);
 1049              		.loc 1 207 0
 1050 0468 0220     		movs	r0, #2
 1051 046a FFF7FEFF 		bl	ascii_ctrl_bit_set
 208:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	read_value = ascii_read_controller();
 1052              		.loc 1 208 0
 1053 046e FC1D     		adds	r4, r7, #7
 1054 0470 FFF7FEFF 		bl	ascii_read_controller
 1055 0474 0300     		movs	r3, r0
 1056 0476 2370     		strb	r3, [r4]
 209:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 210:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Sätt pinnar 15-8 till utgångar igen.
 211:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder |= 0xFFFF0000;
 1057              		.loc 1 211 0
 1058 0478 054B     		ldr	r3, .L58
 1059 047a 054A     		ldr	r2, .L58
 1060 047c 1268     		ldr	r2, [r2]
 1061 047e 0549     		ldr	r1, .L58+4
 1062 0480 0A43     		orrs	r2, r1
 1063 0482 1A60     		str	r2, [r3]
 212:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 213:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	return read_value;
 1064              		.loc 1 213 0
 1065 0484 FB1D     		adds	r3, r7, #7
 1066 0486 1B78     		ldrb	r3, [r3]
 214:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1067              		.loc 1 214 0
 1068 0488 1800     		movs	r0, r3
 1069 048a BD46     		mov	sp, r7
 1070 048c 03B0     		add	sp, sp, #12
 1071              		@ sp needed
 1072 048e 90BD     		pop	{r4, r7, pc}
 1073              	.L59:
 1074              		.align	2
 1075              	.L58:
 1076 0490 00100240 		.word	1073876992
 1077 0494 0000FFFF 		.word	-65536
 1078              		.cfi_endproc
 1079              	.LFE14:
 1081              		.align	1
 1082              		.global	ascii_write_controller
 1083              		.syntax unified
 1084              		.code	16
 1085              		.thumb_func
 1086              		.fpu softvfp
 1088              	ascii_write_controller:
 1089              	.LFB15:
 215:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 216:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void ascii_write_controller(unsigned char byte) {
 1090              		.loc 1 216 0
 1091              		.cfi_startproc
 1092              		@ args = 0, pretend = 0, frame = 8
 1093              		@ frame_needed = 1, uses_anonymous_args = 0
 1094 0498 80B5     		push	{r7, lr}
 1095              		.cfi_def_cfa_offset 8
 1096              		.cfi_offset 7, -8
 1097              		.cfi_offset 14, -4
 1098 049a 82B0     		sub	sp, sp, #8
 1099              		.cfi_def_cfa_offset 16
 1100 049c 00AF     		add	r7, sp, #0
 1101              		.cfi_def_cfa_register 7
 1102 049e 0200     		movs	r2, r0
 1103 04a0 FB1D     		adds	r3, r7, #7
 1104 04a2 1A70     		strb	r2, [r3]
 217:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Delay40ns is redundant
 218:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_set(B_E);
 1105              		.loc 1 218 0
 1106 04a4 4020     		movs	r0, #64
 1107 04a6 FFF7FEFF 		bl	ascii_ctrl_bit_set
 219:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->odrHigh = byte;
 1108              		.loc 1 219 0
 1109 04aa 064A     		ldr	r2, .L61
 1110 04ac FB1D     		adds	r3, r7, #7
 1111 04ae 1B78     		ldrb	r3, [r3]
 1112 04b0 5375     		strb	r3, [r2, #21]
 220:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_250ns();
 1113              		.loc 1 220 0
 1114 04b2 FFF7FEFF 		bl	delay_250ns
 221:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_clear(B_E);
 1115              		.loc 1 221 0
 1116 04b6 4020     		movs	r0, #64
 1117 04b8 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 222:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Delay10ns is redundant
 223:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1118              		.loc 1 223 0
 1119 04bc C046     		nop
 1120 04be BD46     		mov	sp, r7
 1121 04c0 02B0     		add	sp, sp, #8
 1122              		@ sp needed
 1123 04c2 80BD     		pop	{r7, pc}
 1124              	.L62:
 1125              		.align	2
 1126              	.L61:
 1127 04c4 00100240 		.word	1073876992
 1128              		.cfi_endproc
 1129              	.LFE15:
 1131              		.align	1
 1132              		.global	ascii_read_controller
 1133              		.syntax unified
 1134              		.code	16
 1135              		.thumb_func
 1136              		.fpu softvfp
 1138              	ascii_read_controller:
 1139              	.LFB16:
 224:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 225:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** unsigned char ascii_read_controller(void) {
 1140              		.loc 1 225 0
 1141              		.cfi_startproc
 1142              		@ args = 0, pretend = 0, frame = 8
 1143              		@ frame_needed = 1, uses_anonymous_args = 0
 1144 04c8 80B5     		push	{r7, lr}
 1145              		.cfi_def_cfa_offset 8
 1146              		.cfi_offset 7, -8
 1147              		.cfi_offset 14, -4
 1148 04ca 82B0     		sub	sp, sp, #8
 1149              		.cfi_def_cfa_offset 16
 1150 04cc 00AF     		add	r7, sp, #0
 1151              		.cfi_def_cfa_register 7
 226:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	unsigned char read_value;
 227:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_set(B_E);
 1152              		.loc 1 227 0
 1153 04ce 4020     		movs	r0, #64
 1154 04d0 FFF7FEFF 		bl	ascii_ctrl_bit_set
 228:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_500ns();
 1155              		.loc 1 228 0
 1156 04d4 FFF7FEFF 		bl	delay_500ns
 229:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	read_value = GPIO_E->idrHigh;
 1157              		.loc 1 229 0
 1158 04d8 064A     		ldr	r2, .L65
 1159 04da FB1D     		adds	r3, r7, #7
 1160 04dc 527C     		ldrb	r2, [r2, #17]
 1161 04de 1A70     		strb	r2, [r3]
 230:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_ctrl_bit_clear(B_E);
 1162              		.loc 1 230 0
 1163 04e0 4020     		movs	r0, #64
 1164 04e2 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 231:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	return read_value;
 1165              		.loc 1 231 0
 1166 04e6 FB1D     		adds	r3, r7, #7
 1167 04e8 1B78     		ldrb	r3, [r3]
 232:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1168              		.loc 1 232 0
 1169 04ea 1800     		movs	r0, r3
 1170 04ec BD46     		mov	sp, r7
 1171 04ee 02B0     		add	sp, sp, #8
 1172              		@ sp needed
 1173 04f0 80BD     		pop	{r7, pc}
 1174              	.L66:
 1175 04f2 C046     		.align	2
 1176              	.L65:
 1177 04f4 00100240 		.word	1073876992
 1178              		.cfi_endproc
 1179              	.LFE16:
 1181              		.align	1
 1182              		.global	ascii_gotoxy
 1183              		.syntax unified
 1184              		.code	16
 1185              		.thumb_func
 1186              		.fpu softvfp
 1188              	ascii_gotoxy:
 1189              	.LFB17:
 233:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 234:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void ascii_gotoxy(int x, int y) {
 1190              		.loc 1 234 0
 1191              		.cfi_startproc
 1192              		@ args = 0, pretend = 0, frame = 16
 1193              		@ frame_needed = 1, uses_anonymous_args = 0
 1194 04f8 80B5     		push	{r7, lr}
 1195              		.cfi_def_cfa_offset 8
 1196              		.cfi_offset 7, -8
 1197              		.cfi_offset 14, -4
 1198 04fa 84B0     		sub	sp, sp, #16
 1199              		.cfi_def_cfa_offset 24
 1200 04fc 00AF     		add	r7, sp, #0
 1201              		.cfi_def_cfa_register 7
 1202 04fe 7860     		str	r0, [r7, #4]
 1203 0500 3960     		str	r1, [r7]
 235:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(!(y == 1 || y == 2)) return;
 1204              		.loc 1 235 0
 1205 0502 3B68     		ldr	r3, [r7]
 1206 0504 012B     		cmp	r3, #1
 1207 0506 02D0     		beq	.L68
 1208              		.loc 1 235 0 is_stmt 0 discriminator 1
 1209 0508 3B68     		ldr	r3, [r7]
 1210 050a 022B     		cmp	r3, #2
 1211 050c 1AD1     		bne	.L71
 1212              	.L68:
 236:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	unsigned char address = x - 1;
 1213              		.loc 1 236 0 is_stmt 1
 1214 050e 7B68     		ldr	r3, [r7, #4]
 1215 0510 DAB2     		uxtb	r2, r3
 1216 0512 0F23     		movs	r3, #15
 1217 0514 FB18     		adds	r3, r7, r3
 1218 0516 013A     		subs	r2, r2, #1
 1219 0518 1A70     		strb	r2, [r3]
 237:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(y == 2){
 1220              		.loc 1 237 0
 1221 051a 3B68     		ldr	r3, [r7]
 1222 051c 022B     		cmp	r3, #2
 1223 051e 06D1     		bne	.L70
 238:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		address += 0x40;
 1224              		.loc 1 238 0
 1225 0520 0F23     		movs	r3, #15
 1226 0522 FB18     		adds	r3, r7, r3
 1227 0524 0F22     		movs	r2, #15
 1228 0526 BA18     		adds	r2, r7, r2
 1229 0528 1278     		ldrb	r2, [r2]
 1230 052a 4032     		adds	r2, r2, #64
 1231 052c 1A70     		strb	r2, [r3]
 1232              	.L70:
 239:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 240:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_write_cmd(0x80 | address);
 1233              		.loc 1 240 0
 1234 052e 0F23     		movs	r3, #15
 1235 0530 FB18     		adds	r3, r7, r3
 1236 0532 1B78     		ldrb	r3, [r3]
 1237 0534 8022     		movs	r2, #128
 1238 0536 5242     		rsbs	r2, r2, #0
 1239 0538 1343     		orrs	r3, r2
 1240 053a DBB2     		uxtb	r3, r3
 1241 053c 1800     		movs	r0, r3
 1242 053e FFF7FEFF 		bl	ascii_write_cmd
 1243 0542 00E0     		b	.L67
 1244              	.L71:
 235:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	unsigned char address = x - 1;
 1245              		.loc 1 235 0
 1246 0544 C046     		nop
 1247              	.L67:
 241:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1248              		.loc 1 241 0
 1249 0546 BD46     		mov	sp, r7
 1250 0548 04B0     		add	sp, sp, #16
 1251              		@ sp needed
 1252 054a 80BD     		pop	{r7, pc}
 1253              		.cfi_endproc
 1254              	.LFE17:
 1256              		.align	1
 1257              		.global	ascii_write_char
 1258              		.syntax unified
 1259              		.code	16
 1260              		.thumb_func
 1261              		.fpu softvfp
 1263              	ascii_write_char:
 1264              	.LFB18:
 242:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 243:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void ascii_write_char(unsigned char c) {
 1265              		.loc 1 243 0
 1266              		.cfi_startproc
 1267              		@ args = 0, pretend = 0, frame = 8
 1268              		@ frame_needed = 1, uses_anonymous_args = 0
 1269 054c 80B5     		push	{r7, lr}
 1270              		.cfi_def_cfa_offset 8
 1271              		.cfi_offset 7, -8
 1272              		.cfi_offset 14, -4
 1273 054e 82B0     		sub	sp, sp, #8
 1274              		.cfi_def_cfa_offset 16
 1275 0550 00AF     		add	r7, sp, #0
 1276              		.cfi_def_cfa_register 7
 1277 0552 0200     		movs	r2, r0
 1278 0554 FB1D     		adds	r3, r7, #7
 1279 0556 1A70     		strb	r2, [r3]
 244:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	while((ascii_read_status() & 0x80) == 0x80)
 1280              		.loc 1 244 0
 1281 0558 C046     		nop
 1282              	.L73:
 1283              		.loc 1 244 0 is_stmt 0 discriminator 1
 1284 055a FFF7FEFF 		bl	ascii_read_status
 1285 055e 0300     		movs	r3, r0
 1286 0560 1A00     		movs	r2, r3
 1287 0562 8023     		movs	r3, #128
 1288 0564 1340     		ands	r3, r2
 1289 0566 802B     		cmp	r3, #128
 1290 0568 F7D0     		beq	.L73
 245:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	{} // vänta tills display är klar att ta emot komando.
 246:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(8);
 1291              		.loc 1 246 0 is_stmt 1
 1292 056a 0820     		movs	r0, #8
 1293 056c FFF7FEFF 		bl	delay_mikro
 247:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	ascii_write_data(c);
 1294              		.loc 1 247 0
 1295 0570 FB1D     		adds	r3, r7, #7
 1296 0572 1B78     		ldrb	r3, [r3]
 1297 0574 1800     		movs	r0, r3
 1298 0576 FFF7FEFF 		bl	ascii_write_data
 248:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(43);
 1299              		.loc 1 248 0
 1300 057a 2B20     		movs	r0, #43
 1301 057c FFF7FEFF 		bl	delay_mikro
 249:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	//delay_mikro(100000);
 250:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1302              		.loc 1 250 0
 1303 0580 C046     		nop
 1304 0582 BD46     		mov	sp, r7
 1305 0584 02B0     		add	sp, sp, #8
 1306              		@ sp needed
 1307 0586 80BD     		pop	{r7, pc}
 1308              		.cfi_endproc
 1309              	.LFE18:
 1311              		.align	1
 1312              		.global	graphic_ctrl_bit_set
 1313              		.syntax unified
 1314              		.code	16
 1315              		.thumb_func
 1316              		.fpu softvfp
 1318              	graphic_ctrl_bit_set:
 1319              	.LFB19:
 251:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 252:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void graphic_ctrl_bit_set(uint8_t x) {
 1320              		.loc 1 252 0
 1321              		.cfi_startproc
 1322              		@ args = 0, pretend = 0, frame = 16
 1323              		@ frame_needed = 1, uses_anonymous_args = 0
 1324 0588 80B5     		push	{r7, lr}
 1325              		.cfi_def_cfa_offset 8
 1326              		.cfi_offset 7, -8
 1327              		.cfi_offset 14, -4
 1328 058a 84B0     		sub	sp, sp, #16
 1329              		.cfi_def_cfa_offset 24
 1330 058c 00AF     		add	r7, sp, #0
 1331              		.cfi_def_cfa_register 7
 1332 058e 0200     		movs	r2, r0
 1333 0590 FB1D     		adds	r3, r7, #7
 1334 0592 1A70     		strb	r2, [r3]
 253:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	uint8_t c;
 254:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c = GPIO_E->odrLow;
 1335              		.loc 1 254 0
 1336 0594 124A     		ldr	r2, .L75
 1337 0596 0F23     		movs	r3, #15
 1338 0598 FB18     		adds	r3, r7, r3
 1339 059a 127D     		ldrb	r2, [r2, #20]
 1340 059c 1A70     		strb	r2, [r3]
 255:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c &= ~B_SELECT;
 1341              		.loc 1 255 0
 1342 059e 0F23     		movs	r3, #15
 1343 05a0 FB18     		adds	r3, r7, r3
 1344 05a2 0F22     		movs	r2, #15
 1345 05a4 BA18     		adds	r2, r7, r2
 1346 05a6 1278     		ldrb	r2, [r2]
 1347 05a8 0421     		movs	r1, #4
 1348 05aa 8A43     		bics	r2, r1
 1349 05ac 1A70     		strb	r2, [r3]
 256:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c |= (~B_SELECT & x);
 1350              		.loc 1 256 0
 1351 05ae FB1D     		adds	r3, r7, #7
 1352 05b0 1B78     		ldrb	r3, [r3]
 1353 05b2 5BB2     		sxtb	r3, r3
 1354 05b4 0422     		movs	r2, #4
 1355 05b6 9343     		bics	r3, r2
 1356 05b8 5AB2     		sxtb	r2, r3
 1357 05ba 0F23     		movs	r3, #15
 1358 05bc FB18     		adds	r3, r7, r3
 1359 05be 1B78     		ldrb	r3, [r3]
 1360 05c0 5BB2     		sxtb	r3, r3
 1361 05c2 1343     		orrs	r3, r2
 1362 05c4 5AB2     		sxtb	r2, r3
 1363 05c6 0F23     		movs	r3, #15
 1364 05c8 FB18     		adds	r3, r7, r3
 1365 05ca 1A70     		strb	r2, [r3]
 257:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->odrLow = c;
 1366              		.loc 1 257 0
 1367 05cc 044A     		ldr	r2, .L75
 1368 05ce 0F23     		movs	r3, #15
 1369 05d0 FB18     		adds	r3, r7, r3
 1370 05d2 1B78     		ldrb	r3, [r3]
 1371 05d4 1375     		strb	r3, [r2, #20]
 258:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1372              		.loc 1 258 0
 1373 05d6 C046     		nop
 1374 05d8 BD46     		mov	sp, r7
 1375 05da 04B0     		add	sp, sp, #16
 1376              		@ sp needed
 1377 05dc 80BD     		pop	{r7, pc}
 1378              	.L76:
 1379 05de C046     		.align	2
 1380              	.L75:
 1381 05e0 00100240 		.word	1073876992
 1382              		.cfi_endproc
 1383              	.LFE19:
 1385              		.align	1
 1386              		.global	graphic_ctrl_bit_clear
 1387              		.syntax unified
 1388              		.code	16
 1389              		.thumb_func
 1390              		.fpu softvfp
 1392              	graphic_ctrl_bit_clear:
 1393              	.LFB20:
 259:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 260:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void graphic_ctrl_bit_clear(uint8_t x) {
 1394              		.loc 1 260 0
 1395              		.cfi_startproc
 1396              		@ args = 0, pretend = 0, frame = 16
 1397              		@ frame_needed = 1, uses_anonymous_args = 0
 1398 05e4 80B5     		push	{r7, lr}
 1399              		.cfi_def_cfa_offset 8
 1400              		.cfi_offset 7, -8
 1401              		.cfi_offset 14, -4
 1402 05e6 84B0     		sub	sp, sp, #16
 1403              		.cfi_def_cfa_offset 24
 1404 05e8 00AF     		add	r7, sp, #0
 1405              		.cfi_def_cfa_register 7
 1406 05ea 0200     		movs	r2, r0
 1407 05ec FB1D     		adds	r3, r7, #7
 1408 05ee 1A70     		strb	r2, [r3]
 261:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	uint8_t c;
 262:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c = GPIO_E->odrLow;
 1409              		.loc 1 262 0
 1410 05f0 114A     		ldr	r2, .L78
 1411 05f2 0F23     		movs	r3, #15
 1412 05f4 FB18     		adds	r3, r7, r3
 1413 05f6 127D     		ldrb	r2, [r2, #20]
 1414 05f8 1A70     		strb	r2, [r3]
 263:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c &= ~B_SELECT;
 1415              		.loc 1 263 0
 1416 05fa 0F23     		movs	r3, #15
 1417 05fc FB18     		adds	r3, r7, r3
 1418 05fe 0F22     		movs	r2, #15
 1419 0600 BA18     		adds	r2, r7, r2
 1420 0602 1278     		ldrb	r2, [r2]
 1421 0604 0421     		movs	r1, #4
 1422 0606 8A43     		bics	r2, r1
 1423 0608 1A70     		strb	r2, [r3]
 264:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	c &= ~x;
 1424              		.loc 1 264 0
 1425 060a FB1D     		adds	r3, r7, #7
 1426 060c 1B78     		ldrb	r3, [r3]
 1427 060e 5BB2     		sxtb	r3, r3
 1428 0610 DB43     		mvns	r3, r3
 1429 0612 5BB2     		sxtb	r3, r3
 1430 0614 0F22     		movs	r2, #15
 1431 0616 BA18     		adds	r2, r7, r2
 1432 0618 1278     		ldrb	r2, [r2]
 1433 061a 52B2     		sxtb	r2, r2
 1434 061c 1340     		ands	r3, r2
 1435 061e 5AB2     		sxtb	r2, r3
 1436 0620 0F23     		movs	r3, #15
 1437 0622 FB18     		adds	r3, r7, r3
 1438 0624 1A70     		strb	r2, [r3]
 265:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->odrLow = c;
 1439              		.loc 1 265 0
 1440 0626 044A     		ldr	r2, .L78
 1441 0628 0F23     		movs	r3, #15
 1442 062a FB18     		adds	r3, r7, r3
 1443 062c 1B78     		ldrb	r3, [r3]
 1444 062e 1375     		strb	r3, [r2, #20]
 266:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1445              		.loc 1 266 0
 1446 0630 C046     		nop
 1447 0632 BD46     		mov	sp, r7
 1448 0634 04B0     		add	sp, sp, #16
 1449              		@ sp needed
 1450 0636 80BD     		pop	{r7, pc}
 1451              	.L79:
 1452              		.align	2
 1453              	.L78:
 1454 0638 00100240 		.word	1073876992
 1455              		.cfi_endproc
 1456              	.LFE20:
 1458              		.align	1
 1459              		.global	select_controller
 1460              		.syntax unified
 1461              		.code	16
 1462              		.thumb_func
 1463              		.fpu softvfp
 1465              	select_controller:
 1466              	.LFB21:
 267:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 268:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void select_controller(uint8_t controller) {
 1467              		.loc 1 268 0
 1468              		.cfi_startproc
 1469              		@ args = 0, pretend = 0, frame = 8
 1470              		@ frame_needed = 1, uses_anonymous_args = 0
 1471 063c 80B5     		push	{r7, lr}
 1472              		.cfi_def_cfa_offset 8
 1473              		.cfi_offset 7, -8
 1474              		.cfi_offset 14, -4
 1475 063e 82B0     		sub	sp, sp, #8
 1476              		.cfi_def_cfa_offset 16
 1477 0640 00AF     		add	r7, sp, #0
 1478              		.cfi_def_cfa_register 7
 1479 0642 0200     		movs	r2, r0
 1480 0644 FB1D     		adds	r3, r7, #7
 1481 0646 1A70     		strb	r2, [r3]
 269:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	switch(controller){
 1482              		.loc 1 269 0
 1483 0648 FB1D     		adds	r3, r7, #7
 1484 064a 1B78     		ldrb	r3, [r3]
 1485 064c 082B     		cmp	r3, #8
 1486 064e 0CD0     		beq	.L82
 1487 0650 02DC     		bgt	.L83
 1488 0652 002B     		cmp	r3, #0
 1489 0654 05D0     		beq	.L84
 270:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case 0:
 271:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
 272:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			break;
 273:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case B_CS1 :
 274:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			graphic_ctrl_bit_set(B_CS1);
 275:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			graphic_ctrl_bit_clear(B_CS2);
 276:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			break;
 277:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case B_CS2 :
 278:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			graphic_ctrl_bit_set(B_CS2);
 279:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			graphic_ctrl_bit_clear(B_CS1);
 280:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			break;
 281:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case B_CS1|B_CS2 :
 282:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
 283:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			break;
 284:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 285:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1490              		.loc 1 285 0
 1491 0656 1AE0     		b	.L87
 1492              	.L83:
 269:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	switch(controller){
 1493              		.loc 1 269 0
 1494 0658 102B     		cmp	r3, #16
 1495 065a 0DD0     		beq	.L85
 1496 065c 182B     		cmp	r3, #24
 1497 065e 12D0     		beq	.L86
 1498              		.loc 1 285 0
 1499 0660 15E0     		b	.L87
 1500              	.L84:
 271:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			break;
 1501              		.loc 1 271 0
 1502 0662 1820     		movs	r0, #24
 1503 0664 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 272:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case B_CS1 :
 1504              		.loc 1 272 0
 1505 0668 11E0     		b	.L81
 1506              	.L82:
 274:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			graphic_ctrl_bit_clear(B_CS2);
 1507              		.loc 1 274 0
 1508 066a 0820     		movs	r0, #8
 1509 066c FFF7FEFF 		bl	graphic_ctrl_bit_set
 275:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			break;
 1510              		.loc 1 275 0
 1511 0670 1020     		movs	r0, #16
 1512 0672 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 276:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case B_CS2 :
 1513              		.loc 1 276 0
 1514 0676 0AE0     		b	.L81
 1515              	.L85:
 278:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			graphic_ctrl_bit_clear(B_CS1);
 1516              		.loc 1 278 0
 1517 0678 1020     		movs	r0, #16
 1518 067a FFF7FEFF 		bl	graphic_ctrl_bit_set
 279:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			break;
 1519              		.loc 1 279 0
 1520 067e 0820     		movs	r0, #8
 1521 0680 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 280:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		case B_CS1|B_CS2 :
 1522              		.loc 1 280 0
 1523 0684 03E0     		b	.L81
 1524              	.L86:
 282:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			break;
 1525              		.loc 1 282 0
 1526 0686 1820     		movs	r0, #24
 1527 0688 FFF7FEFF 		bl	graphic_ctrl_bit_set
 283:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 1528              		.loc 1 283 0
 1529 068c C046     		nop
 1530              	.L81:
 1531              	.L87:
 1532              		.loc 1 285 0
 1533 068e C046     		nop
 1534 0690 BD46     		mov	sp, r7
 1535 0692 02B0     		add	sp, sp, #8
 1536              		@ sp needed
 1537 0694 80BD     		pop	{r7, pc}
 1538              		.cfi_endproc
 1539              	.LFE21:
 1541              		.align	1
 1542              		.global	graphic_initialize
 1543              		.syntax unified
 1544              		.code	16
 1545              		.thumb_func
 1546              		.fpu softvfp
 1548              	graphic_initialize:
 1549              	.LFB22:
 286:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 287:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void graphic_initialize(void) {
 1550              		.loc 1 287 0
 1551              		.cfi_startproc
 1552              		@ args = 0, pretend = 0, frame = 0
 1553              		@ frame_needed = 1, uses_anonymous_args = 0
 1554 0696 80B5     		push	{r7, lr}
 1555              		.cfi_def_cfa_offset 8
 1556              		.cfi_offset 7, -8
 1557              		.cfi_offset 14, -4
 1558 0698 00AF     		add	r7, sp, #0
 1559              		.cfi_def_cfa_register 7
 288:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_set(B_E);
 1560              		.loc 1 288 0
 1561 069a 4020     		movs	r0, #64
 1562 069c FFF7FEFF 		bl	graphic_ctrl_bit_set
 289:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(10);
 1563              		.loc 1 289 0
 1564 06a0 0A20     		movs	r0, #10
 1565 06a2 FFF7FEFF 		bl	delay_mikro
 290:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 1566              		.loc 1 290 0
 1567 06a6 7820     		movs	r0, #120
 1568 06a8 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 291:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(30);
 1569              		.loc 1 291 0
 1570 06ac 1E20     		movs	r0, #30
 1571 06ae FFF7FEFF 		bl	delay_mikro
 292:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_set(B_RST);
 1572              		.loc 1 292 0
 1573 06b2 2020     		movs	r0, #32
 1574 06b4 FFF7FEFF 		bl	graphic_ctrl_bit_set
 293:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_mikro(100);
 1575              		.loc 1 293 0
 1576 06b8 6420     		movs	r0, #100
 1577 06ba FFF7FEFF 		bl	delay_mikro
 294:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 1578              		.loc 1 294 0
 1579 06be 1821     		movs	r1, #24
 1580 06c0 3E20     		movs	r0, #62
 1581 06c2 FFF7FEFF 		bl	graphic_write_command
 295:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write_command(LCD_ON, B_CS1|B_CS2);
 1582              		.loc 1 295 0
 1583 06c6 1821     		movs	r1, #24
 1584 06c8 3F20     		movs	r0, #63
 1585 06ca FFF7FEFF 		bl	graphic_write_command
 296:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 1586              		.loc 1 296 0
 1587 06ce 1821     		movs	r1, #24
 1588 06d0 C020     		movs	r0, #192
 1589 06d2 FFF7FEFF 		bl	graphic_write_command
 297:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 1590              		.loc 1 297 0
 1591 06d6 1821     		movs	r1, #24
 1592 06d8 4020     		movs	r0, #64
 1593 06da FFF7FEFF 		bl	graphic_write_command
 298:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 1594              		.loc 1 298 0
 1595 06de 1821     		movs	r1, #24
 1596 06e0 B820     		movs	r0, #184
 1597 06e2 FFF7FEFF 		bl	graphic_write_command
 299:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	select_controller(0);
 1598              		.loc 1 299 0
 1599 06e6 0020     		movs	r0, #0
 1600 06e8 FFF7FEFF 		bl	select_controller
 300:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1601              		.loc 1 300 0
 1602 06ec C046     		nop
 1603 06ee BD46     		mov	sp, r7
 1604              		@ sp needed
 1605 06f0 80BD     		pop	{r7, pc}
 1606              		.cfi_endproc
 1607              	.LFE22:
 1609              		.align	1
 1610              		.global	graphic_wait_ready
 1611              		.syntax unified
 1612              		.code	16
 1613              		.thumb_func
 1614              		.fpu softvfp
 1616              	graphic_wait_ready:
 1617              	.LFB23:
 301:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 302:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void graphic_wait_ready(void) {
 1618              		.loc 1 302 0
 1619              		.cfi_startproc
 1620              		@ args = 0, pretend = 0, frame = 8
 1621              		@ frame_needed = 1, uses_anonymous_args = 0
 1622 06f2 80B5     		push	{r7, lr}
 1623              		.cfi_def_cfa_offset 8
 1624              		.cfi_offset 7, -8
 1625              		.cfi_offset 14, -4
 1626 06f4 82B0     		sub	sp, sp, #8
 1627              		.cfi_def_cfa_offset 16
 1628 06f6 00AF     		add	r7, sp, #0
 1629              		.cfi_def_cfa_register 7
 303:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	uint8_t c;
 304:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_E);
 1630              		.loc 1 304 0
 1631 06f8 4020     		movs	r0, #64
 1632 06fa FFF7FEFF 		bl	graphic_ctrl_bit_clear
 305:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 1633              		.loc 1 305 0
 1634 06fe 144B     		ldr	r3, .L95
 1635 0700 144A     		ldr	r2, .L95+4
 1636 0702 1A60     		str	r2, [r3]
 306:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_RS);
 1637              		.loc 1 306 0
 1638 0704 0120     		movs	r0, #1
 1639 0706 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 307:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_set(B_RW);
 1640              		.loc 1 307 0
 1641 070a 0220     		movs	r0, #2
 1642 070c FFF7FEFF 		bl	graphic_ctrl_bit_set
 308:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_500ns();
 1643              		.loc 1 308 0
 1644 0710 FFF7FEFF 		bl	delay_500ns
 1645              	.L92:
 309:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	while(1) {
 310:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_ctrl_bit_set(B_E);
 1646              		.loc 1 310 0
 1647 0714 4020     		movs	r0, #64
 1648 0716 FFF7FEFF 		bl	graphic_ctrl_bit_set
 311:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		delay_500ns();
 1649              		.loc 1 311 0
 1650 071a FFF7FEFF 		bl	delay_500ns
 312:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		c = GPIO_E->idrHigh & LCD_BUSY;
 1651              		.loc 1 312 0
 1652 071e 0C4B     		ldr	r3, .L95
 1653 0720 5B7C     		ldrb	r3, [r3, #17]
 1654 0722 DAB2     		uxtb	r2, r3
 1655 0724 FB1D     		adds	r3, r7, #7
 1656 0726 7F21     		movs	r1, #127
 1657 0728 8A43     		bics	r2, r1
 1658 072a 1A70     		strb	r2, [r3]
 313:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_ctrl_bit_clear(B_E);
 1659              		.loc 1 313 0
 1660 072c 4020     		movs	r0, #64
 1661 072e FFF7FEFF 		bl	graphic_ctrl_bit_clear
 314:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		delay_500ns();
 1662              		.loc 1 314 0
 1663 0732 FFF7FEFF 		bl	delay_500ns
 315:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		if( c == 0 ) break;
 1664              		.loc 1 315 0
 1665 0736 FB1D     		adds	r3, r7, #7
 1666 0738 1B78     		ldrb	r3, [r3]
 1667 073a 002B     		cmp	r3, #0
 1668 073c 00D0     		beq	.L94
 310:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		delay_500ns();
 1669              		.loc 1 310 0
 1670 073e E9E7     		b	.L92
 1671              	.L94:
 1672              		.loc 1 315 0
 1673 0740 C046     		nop
 316:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 317:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder = 0x55555555; // 15-0 outputs
 1674              		.loc 1 317 0
 1675 0742 034B     		ldr	r3, .L95
 1676 0744 044A     		ldr	r2, .L95+8
 1677 0746 1A60     		str	r2, [r3]
 318:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1678              		.loc 1 318 0
 1679 0748 C046     		nop
 1680 074a BD46     		mov	sp, r7
 1681 074c 02B0     		add	sp, sp, #8
 1682              		@ sp needed
 1683 074e 80BD     		pop	{r7, pc}
 1684              	.L96:
 1685              		.align	2
 1686              	.L95:
 1687 0750 00100240 		.word	1073876992
 1688 0754 55550000 		.word	21845
 1689 0758 55555555 		.word	1431655765
 1690              		.cfi_endproc
 1691              	.LFE23:
 1693              		.align	1
 1694              		.global	graphic_read
 1695              		.syntax unified
 1696              		.code	16
 1697              		.thumb_func
 1698              		.fpu softvfp
 1700              	graphic_read:
 1701              	.LFB24:
 319:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 320:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** uint8_t graphic_read(uint8_t controller) {
 1702              		.loc 1 320 0
 1703              		.cfi_startproc
 1704              		@ args = 0, pretend = 0, frame = 16
 1705              		@ frame_needed = 1, uses_anonymous_args = 0
 1706 075c 80B5     		push	{r7, lr}
 1707              		.cfi_def_cfa_offset 8
 1708              		.cfi_offset 7, -8
 1709              		.cfi_offset 14, -4
 1710 075e 84B0     		sub	sp, sp, #16
 1711              		.cfi_def_cfa_offset 24
 1712 0760 00AF     		add	r7, sp, #0
 1713              		.cfi_def_cfa_register 7
 1714 0762 0200     		movs	r2, r0
 1715 0764 FB1D     		adds	r3, r7, #7
 1716 0766 1A70     		strb	r2, [r3]
 321:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_E);
 1717              		.loc 1 321 0
 1718 0768 4020     		movs	r0, #64
 1719 076a FFF7FEFF 		bl	graphic_ctrl_bit_clear
 322:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder = 0x00005555;
 1720              		.loc 1 322 0
 1721 076e 1C4B     		ldr	r3, .L101
 1722 0770 1C4A     		ldr	r2, .L101+4
 1723 0772 1A60     		str	r2, [r3]
 323:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_set(B_RW);
 1724              		.loc 1 323 0
 1725 0774 0220     		movs	r0, #2
 1726 0776 FFF7FEFF 		bl	graphic_ctrl_bit_set
 324:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_set(B_RS);
 1727              		.loc 1 324 0
 1728 077a 0120     		movs	r0, #1
 1729 077c FFF7FEFF 		bl	graphic_ctrl_bit_set
 325:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	select_controller(controller);
 1730              		.loc 1 325 0
 1731 0780 FB1D     		adds	r3, r7, #7
 1732 0782 1B78     		ldrb	r3, [r3]
 1733 0784 1800     		movs	r0, r3
 1734 0786 FFF7FEFF 		bl	select_controller
 326:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_500ns();
 1735              		.loc 1 326 0
 1736 078a FFF7FEFF 		bl	delay_500ns
 327:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_set(B_E);
 1737              		.loc 1 327 0
 1738 078e 4020     		movs	r0, #64
 1739 0790 FFF7FEFF 		bl	graphic_ctrl_bit_set
 328:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_500ns();
 1740              		.loc 1 328 0
 1741 0794 FFF7FEFF 		bl	delay_500ns
 329:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	uint8_t rv = GPIO_E->idrHigh;
 1742              		.loc 1 329 0
 1743 0798 114A     		ldr	r2, .L101
 1744 079a 0F23     		movs	r3, #15
 1745 079c FB18     		adds	r3, r7, r3
 1746 079e 527C     		ldrb	r2, [r2, #17]
 1747 07a0 1A70     		strb	r2, [r3]
 330:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_E);
 1748              		.loc 1 330 0
 1749 07a2 4020     		movs	r0, #64
 1750 07a4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 331:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder = 0x55555555;
 1751              		.loc 1 331 0
 1752 07a8 0D4B     		ldr	r3, .L101
 1753 07aa 0F4A     		ldr	r2, .L101+8
 1754 07ac 1A60     		str	r2, [r3]
 332:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(controller == B_CS1) {
 1755              		.loc 1 332 0
 1756 07ae FB1D     		adds	r3, r7, #7
 1757 07b0 1B78     		ldrb	r3, [r3]
 1758 07b2 082B     		cmp	r3, #8
 1759 07b4 04D1     		bne	.L98
 333:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		select_controller(B_CS1);
 1760              		.loc 1 333 0
 1761 07b6 0820     		movs	r0, #8
 1762 07b8 FFF7FEFF 		bl	select_controller
 334:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_wait_ready();
 1763              		.loc 1 334 0
 1764 07bc FFF7FEFF 		bl	graphic_wait_ready
 1765              	.L98:
 335:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 336:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(controller == B_CS2){
 1766              		.loc 1 336 0
 1767 07c0 FB1D     		adds	r3, r7, #7
 1768 07c2 1B78     		ldrb	r3, [r3]
 1769 07c4 102B     		cmp	r3, #16
 1770 07c6 04D1     		bne	.L99
 337:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		select_controller(B_CS2);
 1771              		.loc 1 337 0
 1772 07c8 1020     		movs	r0, #16
 1773 07ca FFF7FEFF 		bl	select_controller
 338:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_wait_ready();
 1774              		.loc 1 338 0
 1775 07ce FFF7FEFF 		bl	graphic_wait_ready
 1776              	.L99:
 339:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 340:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// graphic_read = RV (what???)
 341:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	return rv;
 1777              		.loc 1 341 0
 1778 07d2 0F23     		movs	r3, #15
 1779 07d4 FB18     		adds	r3, r7, r3
 1780 07d6 1B78     		ldrb	r3, [r3]
 342:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1781              		.loc 1 342 0
 1782 07d8 1800     		movs	r0, r3
 1783 07da BD46     		mov	sp, r7
 1784 07dc 04B0     		add	sp, sp, #16
 1785              		@ sp needed
 1786 07de 80BD     		pop	{r7, pc}
 1787              	.L102:
 1788              		.align	2
 1789              	.L101:
 1790 07e0 00100240 		.word	1073876992
 1791 07e4 55550000 		.word	21845
 1792 07e8 55555555 		.word	1431655765
 1793              		.cfi_endproc
 1794              	.LFE24:
 1796              		.align	1
 1797              		.global	graphic_write
 1798              		.syntax unified
 1799              		.code	16
 1800              		.thumb_func
 1801              		.fpu softvfp
 1803              	graphic_write:
 1804              	.LFB25:
 343:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 344:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void graphic_write(uint8_t value, uint8_t controller) {
 1805              		.loc 1 344 0
 1806              		.cfi_startproc
 1807              		@ args = 0, pretend = 0, frame = 8
 1808              		@ frame_needed = 1, uses_anonymous_args = 0
 1809 07ec 80B5     		push	{r7, lr}
 1810              		.cfi_def_cfa_offset 8
 1811              		.cfi_offset 7, -8
 1812              		.cfi_offset 14, -4
 1813 07ee 82B0     		sub	sp, sp, #8
 1814              		.cfi_def_cfa_offset 16
 1815 07f0 00AF     		add	r7, sp, #0
 1816              		.cfi_def_cfa_register 7
 1817 07f2 0200     		movs	r2, r0
 1818 07f4 FB1D     		adds	r3, r7, #7
 1819 07f6 1A70     		strb	r2, [r3]
 1820 07f8 BB1D     		adds	r3, r7, #6
 1821 07fa 0A1C     		adds	r2, r1, #0
 1822 07fc 1A70     		strb	r2, [r3]
 345:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->odrHigh = value;
 1823              		.loc 1 345 0
 1824 07fe 1A4A     		ldr	r2, .L106
 1825 0800 FB1D     		adds	r3, r7, #7
 1826 0802 1B78     		ldrb	r3, [r3]
 1827 0804 5375     		strb	r3, [r2, #21]
 346:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	select_controller(controller);
 1828              		.loc 1 346 0
 1829 0806 BB1D     		adds	r3, r7, #6
 1830 0808 1B78     		ldrb	r3, [r3]
 1831 080a 1800     		movs	r0, r3
 1832 080c FFF7FEFF 		bl	select_controller
 347:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_500ns();
 1833              		.loc 1 347 0
 1834 0810 FFF7FEFF 		bl	delay_500ns
 348:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_set(B_E);
 1835              		.loc 1 348 0
 1836 0814 4020     		movs	r0, #64
 1837 0816 FFF7FEFF 		bl	graphic_ctrl_bit_set
 349:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	delay_500ns();
 1838              		.loc 1 349 0
 1839 081a FFF7FEFF 		bl	delay_500ns
 350:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_E);
 1840              		.loc 1 350 0
 1841 081e 4020     		movs	r0, #64
 1842 0820 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 351:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(controller & B_CS1) {
 1843              		.loc 1 351 0
 1844 0824 BB1D     		adds	r3, r7, #6
 1845 0826 1B78     		ldrb	r3, [r3]
 1846 0828 0822     		movs	r2, #8
 1847 082a 1340     		ands	r3, r2
 1848 082c 04D0     		beq	.L104
 352:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		select_controller(B_CS1);
 1849              		.loc 1 352 0
 1850 082e 0820     		movs	r0, #8
 1851 0830 FFF7FEFF 		bl	select_controller
 353:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_wait_ready();
 1852              		.loc 1 353 0
 1853 0834 FFF7FEFF 		bl	graphic_wait_ready
 1854              	.L104:
 354:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 355:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(controller & B_CS2) {
 1855              		.loc 1 355 0
 1856 0838 BB1D     		adds	r3, r7, #6
 1857 083a 1B78     		ldrb	r3, [r3]
 1858 083c 1022     		movs	r2, #16
 1859 083e 1340     		ands	r3, r2
 1860 0840 04D0     		beq	.L105
 356:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		select_controller(B_CS2);
 1861              		.loc 1 356 0
 1862 0842 1020     		movs	r0, #16
 1863 0844 FFF7FEFF 		bl	select_controller
 357:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_wait_ready();
 1864              		.loc 1 357 0
 1865 0848 FFF7FEFF 		bl	graphic_wait_ready
 1866              	.L105:
 358:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 359:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->odrHigh = 0;
 1867              		.loc 1 359 0
 1868 084c 064B     		ldr	r3, .L106
 1869 084e 0022     		movs	r2, #0
 1870 0850 5A75     		strb	r2, [r3, #21]
 360:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_set(B_E);
 1871              		.loc 1 360 0
 1872 0852 4020     		movs	r0, #64
 1873 0854 FFF7FEFF 		bl	graphic_ctrl_bit_set
 361:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	select_controller(0);
 1874              		.loc 1 361 0
 1875 0858 0020     		movs	r0, #0
 1876 085a FFF7FEFF 		bl	select_controller
 362:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1877              		.loc 1 362 0
 1878 085e C046     		nop
 1879 0860 BD46     		mov	sp, r7
 1880 0862 02B0     		add	sp, sp, #8
 1881              		@ sp needed
 1882 0864 80BD     		pop	{r7, pc}
 1883              	.L107:
 1884 0866 C046     		.align	2
 1885              	.L106:
 1886 0868 00100240 		.word	1073876992
 1887              		.cfi_endproc
 1888              	.LFE25:
 1890              		.align	1
 1891              		.global	graphic_write_command
 1892              		.syntax unified
 1893              		.code	16
 1894              		.thumb_func
 1895              		.fpu softvfp
 1897              	graphic_write_command:
 1898              	.LFB26:
 363:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 364:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void graphic_write_command(uint8_t commandToWrite, uint8_t controller) {
 1899              		.loc 1 364 0
 1900              		.cfi_startproc
 1901              		@ args = 0, pretend = 0, frame = 8
 1902              		@ frame_needed = 1, uses_anonymous_args = 0
 1903 086c 80B5     		push	{r7, lr}
 1904              		.cfi_def_cfa_offset 8
 1905              		.cfi_offset 7, -8
 1906              		.cfi_offset 14, -4
 1907 086e 82B0     		sub	sp, sp, #8
 1908              		.cfi_def_cfa_offset 16
 1909 0870 00AF     		add	r7, sp, #0
 1910              		.cfi_def_cfa_register 7
 1911 0872 0200     		movs	r2, r0
 1912 0874 FB1D     		adds	r3, r7, #7
 1913 0876 1A70     		strb	r2, [r3]
 1914 0878 BB1D     		adds	r3, r7, #6
 1915 087a 0A1C     		adds	r2, r1, #0
 1916 087c 1A70     		strb	r2, [r3]
 365:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_E);
 1917              		.loc 1 365 0
 1918 087e 4020     		movs	r0, #64
 1919 0880 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 366:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	select_controller(controller);
 1920              		.loc 1 366 0
 1921 0884 BB1D     		adds	r3, r7, #6
 1922 0886 1B78     		ldrb	r3, [r3]
 1923 0888 1800     		movs	r0, r3
 1924 088a FFF7FEFF 		bl	select_controller
 367:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_RS | B_RW);
 1925              		.loc 1 367 0
 1926 088e 0320     		movs	r0, #3
 1927 0890 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 368:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write(commandToWrite, controller);
 1928              		.loc 1 368 0
 1929 0894 BB1D     		adds	r3, r7, #6
 1930 0896 1A78     		ldrb	r2, [r3]
 1931 0898 FB1D     		adds	r3, r7, #7
 1932 089a 1B78     		ldrb	r3, [r3]
 1933 089c 1100     		movs	r1, r2
 1934 089e 1800     		movs	r0, r3
 1935 08a0 FFF7FEFF 		bl	graphic_write
 369:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1936              		.loc 1 369 0
 1937 08a4 C046     		nop
 1938 08a6 BD46     		mov	sp, r7
 1939 08a8 02B0     		add	sp, sp, #8
 1940              		@ sp needed
 1941 08aa 80BD     		pop	{r7, pc}
 1942              		.cfi_endproc
 1943              	.LFE26:
 1945              		.align	1
 1946              		.global	graphic_write_data
 1947              		.syntax unified
 1948              		.code	16
 1949              		.thumb_func
 1950              		.fpu softvfp
 1952              	graphic_write_data:
 1953              	.LFB27:
 370:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 371:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void graphic_write_data(uint8_t data, uint8_t controller) {
 1954              		.loc 1 371 0
 1955              		.cfi_startproc
 1956              		@ args = 0, pretend = 0, frame = 8
 1957              		@ frame_needed = 1, uses_anonymous_args = 0
 1958 08ac 80B5     		push	{r7, lr}
 1959              		.cfi_def_cfa_offset 8
 1960              		.cfi_offset 7, -8
 1961              		.cfi_offset 14, -4
 1962 08ae 82B0     		sub	sp, sp, #8
 1963              		.cfi_def_cfa_offset 16
 1964 08b0 00AF     		add	r7, sp, #0
 1965              		.cfi_def_cfa_register 7
 1966 08b2 0200     		movs	r2, r0
 1967 08b4 FB1D     		adds	r3, r7, #7
 1968 08b6 1A70     		strb	r2, [r3]
 1969 08b8 BB1D     		adds	r3, r7, #6
 1970 08ba 0A1C     		adds	r2, r1, #0
 1971 08bc 1A70     		strb	r2, [r3]
 372:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_E);
 1972              		.loc 1 372 0
 1973 08be 4020     		movs	r0, #64
 1974 08c0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 373:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	select_controller(controller);
 1975              		.loc 1 373 0
 1976 08c4 BB1D     		adds	r3, r7, #6
 1977 08c6 1B78     		ldrb	r3, [r3]
 1978 08c8 1800     		movs	r0, r3
 1979 08ca FFF7FEFF 		bl	select_controller
 374:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_set(B_RS);
 1980              		.loc 1 374 0
 1981 08ce 0120     		movs	r0, #1
 1982 08d0 FFF7FEFF 		bl	graphic_ctrl_bit_set
 375:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_ctrl_bit_clear(B_RW);
 1983              		.loc 1 375 0
 1984 08d4 0220     		movs	r0, #2
 1985 08d6 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 376:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write(data, controller);
 1986              		.loc 1 376 0
 1987 08da BB1D     		adds	r3, r7, #6
 1988 08dc 1A78     		ldrb	r2, [r3]
 1989 08de FB1D     		adds	r3, r7, #7
 1990 08e0 1B78     		ldrb	r3, [r3]
 1991 08e2 1100     		movs	r1, r2
 1992 08e4 1800     		movs	r0, r3
 1993 08e6 FFF7FEFF 		bl	graphic_write
 377:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 1994              		.loc 1 377 0
 1995 08ea C046     		nop
 1996 08ec BD46     		mov	sp, r7
 1997 08ee 02B0     		add	sp, sp, #8
 1998              		@ sp needed
 1999 08f0 80BD     		pop	{r7, pc}
 2000              		.cfi_endproc
 2001              	.LFE27:
 2003              		.align	1
 2004              		.global	graphic_read_data
 2005              		.syntax unified
 2006              		.code	16
 2007              		.thumb_func
 2008              		.fpu softvfp
 2010              	graphic_read_data:
 2011              	.LFB28:
 378:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 379:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** uint8_t graphic_read_data(unsigned char controller) {
 2012              		.loc 1 379 0
 2013              		.cfi_startproc
 2014              		@ args = 0, pretend = 0, frame = 8
 2015              		@ frame_needed = 1, uses_anonymous_args = 0
 2016 08f2 80B5     		push	{r7, lr}
 2017              		.cfi_def_cfa_offset 8
 2018              		.cfi_offset 7, -8
 2019              		.cfi_offset 14, -4
 2020 08f4 82B0     		sub	sp, sp, #8
 2021              		.cfi_def_cfa_offset 16
 2022 08f6 00AF     		add	r7, sp, #0
 2023              		.cfi_def_cfa_register 7
 2024 08f8 0200     		movs	r2, r0
 2025 08fa FB1D     		adds	r3, r7, #7
 2026 08fc 1A70     		strb	r2, [r3]
 380:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	(void) graphic_read(controller);
 2027              		.loc 1 380 0
 2028 08fe FB1D     		adds	r3, r7, #7
 2029 0900 1B78     		ldrb	r3, [r3]
 2030 0902 1800     		movs	r0, r3
 2031 0904 FFF7FEFF 		bl	graphic_read
 381:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	return graphic_read(controller);
 2032              		.loc 1 381 0
 2033 0908 FB1D     		adds	r3, r7, #7
 2034 090a 1B78     		ldrb	r3, [r3]
 2035 090c 1800     		movs	r0, r3
 2036 090e FFF7FEFF 		bl	graphic_read
 2037 0912 0300     		movs	r3, r0
 382:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 2038              		.loc 1 382 0
 2039 0914 1800     		movs	r0, r3
 2040 0916 BD46     		mov	sp, r7
 2041 0918 02B0     		add	sp, sp, #8
 2042              		@ sp needed
 2043 091a 80BD     		pop	{r7, pc}
 2044              		.cfi_endproc
 2045              	.LFE28:
 2047              		.align	1
 2048              		.global	graphic_clear_screen
 2049              		.syntax unified
 2050              		.code	16
 2051              		.thumb_func
 2052              		.fpu softvfp
 2054              	graphic_clear_screen:
 2055              	.LFB29:
 383:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 384:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void graphic_clear_screen(void) {
 2056              		.loc 1 384 0
 2057              		.cfi_startproc
 2058              		@ args = 0, pretend = 0, frame = 8
 2059              		@ frame_needed = 1, uses_anonymous_args = 0
 2060 091c 80B5     		push	{r7, lr}
 2061              		.cfi_def_cfa_offset 8
 2062              		.cfi_offset 7, -8
 2063              		.cfi_offset 14, -4
 2064 091e 82B0     		sub	sp, sp, #8
 2065              		.cfi_def_cfa_offset 16
 2066 0920 00AF     		add	r7, sp, #0
 2067              		.cfi_def_cfa_register 7
 385:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	uint8_t page, add;
 386:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	for(page = 0; page < 8; page++){
 2068              		.loc 1 386 0
 2069 0922 FB1D     		adds	r3, r7, #7
 2070 0924 0022     		movs	r2, #0
 2071 0926 1A70     		strb	r2, [r3]
 2072 0928 23E0     		b	.L113
 2073              	.L116:
 387:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_write_command(LCD_SET_PAGE	| page, B_CS1|B_CS2);
 2074              		.loc 1 387 0
 2075 092a FB1D     		adds	r3, r7, #7
 2076 092c 1B78     		ldrb	r3, [r3]
 2077 092e 4822     		movs	r2, #72
 2078 0930 5242     		rsbs	r2, r2, #0
 2079 0932 1343     		orrs	r3, r2
 2080 0934 DBB2     		uxtb	r3, r3
 2081 0936 1821     		movs	r1, #24
 2082 0938 1800     		movs	r0, r3
 2083 093a FFF7FEFF 		bl	graphic_write_command
 388:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_write_command(LCD_SET_ADD	| 0, 	B_CS1|B_CS2);
 2084              		.loc 1 388 0
 2085 093e 1821     		movs	r1, #24
 2086 0940 4020     		movs	r0, #64
 2087 0942 FFF7FEFF 		bl	graphic_write_command
 389:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		for(add = 0; add < 64; add++){
 2088              		.loc 1 389 0
 2089 0946 BB1D     		adds	r3, r7, #6
 2090 0948 0022     		movs	r2, #0
 2091 094a 1A70     		strb	r2, [r3]
 2092 094c 08E0     		b	.L114
 2093              	.L115:
 390:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 			graphic_write_data(0,B_CS1|B_CS2);
 2094              		.loc 1 390 0 discriminator 3
 2095 094e 1821     		movs	r1, #24
 2096 0950 0020     		movs	r0, #0
 2097 0952 FFF7FEFF 		bl	graphic_write_data
 389:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		for(add = 0; add < 64; add++){
 2098              		.loc 1 389 0 discriminator 3
 2099 0956 BB1D     		adds	r3, r7, #6
 2100 0958 1A78     		ldrb	r2, [r3]
 2101 095a BB1D     		adds	r3, r7, #6
 2102 095c 0132     		adds	r2, r2, #1
 2103 095e 1A70     		strb	r2, [r3]
 2104              	.L114:
 389:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		for(add = 0; add < 64; add++){
 2105              		.loc 1 389 0 is_stmt 0 discriminator 1
 2106 0960 BB1D     		adds	r3, r7, #6
 2107 0962 1B78     		ldrb	r3, [r3]
 2108 0964 3F2B     		cmp	r3, #63
 2109 0966 F2D9     		bls	.L115
 386:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_write_command(LCD_SET_PAGE	| page, B_CS1|B_CS2);
 2110              		.loc 1 386 0 is_stmt 1 discriminator 2
 2111 0968 FB1D     		adds	r3, r7, #7
 2112 096a 1A78     		ldrb	r2, [r3]
 2113 096c FB1D     		adds	r3, r7, #7
 2114 096e 0132     		adds	r2, r2, #1
 2115 0970 1A70     		strb	r2, [r3]
 2116              	.L113:
 386:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		graphic_write_command(LCD_SET_PAGE	| page, B_CS1|B_CS2);
 2117              		.loc 1 386 0 is_stmt 0 discriminator 1
 2118 0972 FB1D     		adds	r3, r7, #7
 2119 0974 1B78     		ldrb	r3, [r3]
 2120 0976 072B     		cmp	r3, #7
 2121 0978 D7D9     		bls	.L116
 391:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		}
 392:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 393:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 2122              		.loc 1 393 0 is_stmt 1
 2123 097a C046     		nop
 2124 097c BD46     		mov	sp, r7
 2125 097e 02B0     		add	sp, sp, #8
 2126              		@ sp needed
 2127 0980 80BD     		pop	{r7, pc}
 2128              		.cfi_endproc
 2129              	.LFE29:
 2131              		.align	1
 2132              		.global	setup_for_graphic_display
 2133              		.syntax unified
 2134              		.code	16
 2135              		.thumb_func
 2136              		.fpu softvfp
 2138              	setup_for_graphic_display:
 2139              	.LFB30:
 394:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 395:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void setup_for_graphic_display(void){
 2140              		.loc 1 395 0
 2141              		.cfi_startproc
 2142              		@ args = 0, pretend = 0, frame = 0
 2143              		@ frame_needed = 1, uses_anonymous_args = 0
 2144 0982 80B5     		push	{r7, lr}
 2145              		.cfi_def_cfa_offset 8
 2146              		.cfi_offset 7, -8
 2147              		.cfi_offset 14, -4
 2148 0984 00AF     		add	r7, sp, #0
 2149              		.cfi_def_cfa_register 7
 396:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->moder = 0x55555555;
 2150              		.loc 1 396 0
 2151 0986 044B     		ldr	r3, .L118
 2152 0988 044A     		ldr	r2, .L118+4
 2153 098a 1A60     		str	r2, [r3]
 397:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	GPIO_E->ospeedr = 0x55555555;
 2154              		.loc 1 397 0
 2155 098c 024B     		ldr	r3, .L118
 2156 098e 034A     		ldr	r2, .L118+4
 2157 0990 9A60     		str	r2, [r3, #8]
 398:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }
 2158              		.loc 1 398 0
 2159 0992 C046     		nop
 2160 0994 BD46     		mov	sp, r7
 2161              		@ sp needed
 2162 0996 80BD     		pop	{r7, pc}
 2163              	.L119:
 2164              		.align	2
 2165              	.L118:
 2166 0998 00100240 		.word	1073876992
 2167 099c 55555555 		.word	1431655765
 2168              		.cfi_endproc
 2169              	.LFE30:
 2171              		.align	1
 2172              		.global	pixel
 2173              		.syntax unified
 2174              		.code	16
 2175              		.thumb_func
 2176              		.fpu softvfp
 2178              	pixel:
 2179              	.LFB31:
 399:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 
 400:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** void pixel(unsigned char x, unsigned char y, unsigned char set) {
 2180              		.loc 1 400 0
 2181              		.cfi_startproc
 2182              		@ args = 0, pretend = 0, frame = 16
 2183              		@ frame_needed = 1, uses_anonymous_args = 0
 2184 09a0 90B5     		push	{r4, r7, lr}
 2185              		.cfi_def_cfa_offset 12
 2186              		.cfi_offset 4, -12
 2187              		.cfi_offset 7, -8
 2188              		.cfi_offset 14, -4
 2189 09a2 85B0     		sub	sp, sp, #20
 2190              		.cfi_def_cfa_offset 32
 2191 09a4 00AF     		add	r7, sp, #0
 2192              		.cfi_def_cfa_register 7
 2193 09a6 0400     		movs	r4, r0
 2194 09a8 0800     		movs	r0, r1
 2195 09aa 1100     		movs	r1, r2
 2196 09ac FB1D     		adds	r3, r7, #7
 2197 09ae 221C     		adds	r2, r4, #0
 2198 09b0 1A70     		strb	r2, [r3]
 2199 09b2 BB1D     		adds	r3, r7, #6
 2200 09b4 021C     		adds	r2, r0, #0
 2201 09b6 1A70     		strb	r2, [r3]
 2202 09b8 7B1D     		adds	r3, r7, #5
 2203 09ba 0A1C     		adds	r2, r1, #0
 2204 09bc 1A70     		strb	r2, [r3]
 401:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Kontrollera att x och y är i tillåtna intervall. 
 402:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(x > 128 || x < 1 || y > 64 || y < 1) return;
 2205              		.loc 1 402 0
 2206 09be FB1D     		adds	r3, r7, #7
 2207 09c0 1B78     		ldrb	r3, [r3]
 2208 09c2 802B     		cmp	r3, #128
 2209 09c4 00D9     		bls	.LCB1799
 2210 09c6 AAE0     		b	.L132	@long jump
 2211              	.LCB1799:
 2212              		.loc 1 402 0 is_stmt 0 discriminator 1
 2213 09c8 FB1D     		adds	r3, r7, #7
 2214 09ca 1B78     		ldrb	r3, [r3]
 2215 09cc 002B     		cmp	r3, #0
 2216 09ce 00D1     		bne	.LCB1803
 2217 09d0 A5E0     		b	.L132	@long jump
 2218              	.LCB1803:
 2219              		.loc 1 402 0 discriminator 2
 2220 09d2 BB1D     		adds	r3, r7, #6
 2221 09d4 1B78     		ldrb	r3, [r3]
 2222 09d6 402B     		cmp	r3, #64
 2223 09d8 00D9     		bls	.LCB1807
 2224 09da A0E0     		b	.L132	@long jump
 2225              	.LCB1807:
 2226              		.loc 1 402 0 discriminator 3
 2227 09dc BB1D     		adds	r3, r7, #6
 2228 09de 1B78     		ldrb	r3, [r3]
 2229 09e0 002B     		cmp	r3, #0
 2230 09e2 00D1     		bne	.LCB1811
 2231 09e4 9BE0     		b	.L132	@long jump
 2232              	.LCB1811:
 403:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(set != 0 && set != 1) return;
 2233              		.loc 1 403 0 is_stmt 1
 2234 09e6 7B1D     		adds	r3, r7, #5
 2235 09e8 1B78     		ldrb	r3, [r3]
 2236 09ea 002B     		cmp	r3, #0
 2237 09ec 04D0     		beq	.L124
 2238              		.loc 1 403 0 is_stmt 0 discriminator 1
 2239 09ee 7B1D     		adds	r3, r7, #5
 2240 09f0 1B78     		ldrb	r3, [r3]
 2241 09f2 012B     		cmp	r3, #1
 2242 09f4 00D0     		beq	.LCB1819
 2243 09f6 94E0     		b	.L133	@long jump
 2244              	.LCB1819:
 2245              	.L124:
 404:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	
 405:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	uint8_t index = (y - 1) / 8;
 2246              		.loc 1 405 0 is_stmt 1
 2247 09f8 BB1D     		adds	r3, r7, #6
 2248 09fa 1B78     		ldrb	r3, [r3]
 2249 09fc 013B     		subs	r3, r3, #1
 2250 09fe 002B     		cmp	r3, #0
 2251 0a00 00DA     		bge	.L125
 2252 0a02 0733     		adds	r3, r3, #7
 2253              	.L125:
 2254 0a04 DB10     		asrs	r3, r3, #3
 2255 0a06 1A00     		movs	r2, r3
 2256 0a08 0D23     		movs	r3, #13
 2257 0a0a FB18     		adds	r3, r7, r3
 2258 0a0c 1A70     		strb	r2, [r3]
 406:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	uint8_t mask;
 407:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	mask = 1 << ( (y - 1) % 8);
 2259              		.loc 1 407 0
 2260 0a0e BB1D     		adds	r3, r7, #6
 2261 0a10 1B78     		ldrb	r3, [r3]
 2262 0a12 013B     		subs	r3, r3, #1
 2263 0a14 454A     		ldr	r2, .L134
 2264 0a16 1340     		ands	r3, r2
 2265 0a18 04D5     		bpl	.L126
 2266 0a1a 013B     		subs	r3, r3, #1
 2267 0a1c 0822     		movs	r2, #8
 2268 0a1e 5242     		rsbs	r2, r2, #0
 2269 0a20 1343     		orrs	r3, r2
 2270 0a22 0133     		adds	r3, r3, #1
 2271              	.L126:
 2272 0a24 1A00     		movs	r2, r3
 2273 0a26 0123     		movs	r3, #1
 2274 0a28 9340     		lsls	r3, r3, r2
 2275 0a2a 1A00     		movs	r2, r3
 2276 0a2c 0F23     		movs	r3, #15
 2277 0a2e FB18     		adds	r3, r7, r3
 2278 0a30 1A70     		strb	r2, [r3]
 408:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(set == 0){
 2279              		.loc 1 408 0
 2280 0a32 7B1D     		adds	r3, r7, #5
 2281 0a34 1B78     		ldrb	r3, [r3]
 2282 0a36 002B     		cmp	r3, #0
 2283 0a38 06D1     		bne	.L127
 409:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		mask = ~mask; // biten ska nollställas
 2284              		.loc 1 409 0
 2285 0a3a 0F23     		movs	r3, #15
 2286 0a3c FB18     		adds	r3, r7, r3
 2287 0a3e 0F22     		movs	r2, #15
 2288 0a40 BA18     		adds	r2, r7, r2
 2289 0a42 1278     		ldrb	r2, [r2]
 2290 0a44 D243     		mvns	r2, r2
 2291 0a46 1A70     		strb	r2, [r3]
 2292              	.L127:
 410:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 411:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	
 412:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	uint8_t controller;
 413:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	
 414:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	// Bestäm fysiska koordinater och välj styrkrets
 415:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(x > 64){
 2293              		.loc 1 415 0
 2294 0a48 FB1D     		adds	r3, r7, #7
 2295 0a4a 1B78     		ldrb	r3, [r3]
 2296 0a4c 402B     		cmp	r3, #64
 2297 0a4e 09D9     		bls	.L128
 416:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		controller = B_CS2;
 2298              		.loc 1 416 0
 2299 0a50 0E23     		movs	r3, #14
 2300 0a52 FB18     		adds	r3, r7, r3
 2301 0a54 1022     		movs	r2, #16
 2302 0a56 1A70     		strb	r2, [r3]
 417:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		x = x - 65;
 2303              		.loc 1 417 0
 2304 0a58 FB1D     		adds	r3, r7, #7
 2305 0a5a FA1D     		adds	r2, r7, #7
 2306 0a5c 1278     		ldrb	r2, [r2]
 2307 0a5e 413A     		subs	r2, r2, #65
 2308 0a60 1A70     		strb	r2, [r3]
 2309 0a62 08E0     		b	.L129
 2310              	.L128:
 418:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}else{
 419:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		controller = B_CS1;
 2311              		.loc 1 419 0
 2312 0a64 0E23     		movs	r3, #14
 2313 0a66 FB18     		adds	r3, r7, r3
 2314 0a68 0822     		movs	r2, #8
 2315 0a6a 1A70     		strb	r2, [r3]
 420:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		x = x - 1;
 2316              		.loc 1 420 0
 2317 0a6c FB1D     		adds	r3, r7, #7
 2318 0a6e FA1D     		adds	r2, r7, #7
 2319 0a70 1278     		ldrb	r2, [r2]
 2320 0a72 013A     		subs	r2, r2, #1
 2321 0a74 1A70     		strb	r2, [r3]
 2322              	.L129:
 421:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 422:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write_command(LCD_SET_ADD | x, controller);
 2323              		.loc 1 422 0
 2324 0a76 FB1D     		adds	r3, r7, #7
 2325 0a78 1B78     		ldrb	r3, [r3]
 2326 0a7a 4022     		movs	r2, #64
 2327 0a7c 1343     		orrs	r3, r2
 2328 0a7e DAB2     		uxtb	r2, r3
 2329 0a80 0E23     		movs	r3, #14
 2330 0a82 FB18     		adds	r3, r7, r3
 2331 0a84 1B78     		ldrb	r3, [r3]
 2332 0a86 1900     		movs	r1, r3
 2333 0a88 1000     		movs	r0, r2
 2334 0a8a FFF7FEFF 		bl	graphic_write_command
 423:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write_command(LCD_SET_PAGE | index, controller);
 2335              		.loc 1 423 0
 2336 0a8e 0D23     		movs	r3, #13
 2337 0a90 FB18     		adds	r3, r7, r3
 2338 0a92 1B78     		ldrb	r3, [r3]
 2339 0a94 4822     		movs	r2, #72
 2340 0a96 5242     		rsbs	r2, r2, #0
 2341 0a98 1343     		orrs	r3, r2
 2342 0a9a DAB2     		uxtb	r2, r3
 2343 0a9c 0E23     		movs	r3, #14
 2344 0a9e FB18     		adds	r3, r7, r3
 2345 0aa0 1B78     		ldrb	r3, [r3]
 2346 0aa2 1900     		movs	r1, r3
 2347 0aa4 1000     		movs	r0, r2
 2348 0aa6 FFF7FEFF 		bl	graphic_write_command
 424:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	uint8_t temp = graphic_read_data(controller);
 2349              		.loc 1 424 0
 2350 0aaa 0C23     		movs	r3, #12
 2351 0aac FC18     		adds	r4, r7, r3
 2352 0aae 0E23     		movs	r3, #14
 2353 0ab0 FB18     		adds	r3, r7, r3
 2354 0ab2 1B78     		ldrb	r3, [r3]
 2355 0ab4 1800     		movs	r0, r3
 2356 0ab6 FFF7FEFF 		bl	graphic_read_data
 2357 0aba 0300     		movs	r3, r0
 2358 0abc 2370     		strb	r3, [r4]
 425:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write_command(LCD_SET_ADD | x, controller);
 2359              		.loc 1 425 0
 2360 0abe FB1D     		adds	r3, r7, #7
 2361 0ac0 1B78     		ldrb	r3, [r3]
 2362 0ac2 4022     		movs	r2, #64
 2363 0ac4 1343     		orrs	r3, r2
 2364 0ac6 DAB2     		uxtb	r2, r3
 2365 0ac8 0E23     		movs	r3, #14
 2366 0aca FB18     		adds	r3, r7, r3
 2367 0acc 1B78     		ldrb	r3, [r3]
 2368 0ace 1900     		movs	r1, r3
 2369 0ad0 1000     		movs	r0, r2
 2370 0ad2 FFF7FEFF 		bl	graphic_write_command
 426:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	
 427:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(set == 1){
 2371              		.loc 1 427 0
 2372 0ad6 7B1D     		adds	r3, r7, #5
 2373 0ad8 1B78     		ldrb	r3, [r3]
 2374 0ada 012B     		cmp	r3, #1
 2375 0adc 0AD1     		bne	.L130
 428:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		mask = mask | temp;
 2376              		.loc 1 428 0
 2377 0ade 0F23     		movs	r3, #15
 2378 0ae0 FB18     		adds	r3, r7, r3
 2379 0ae2 0F22     		movs	r2, #15
 2380 0ae4 B918     		adds	r1, r7, r2
 2381 0ae6 0C22     		movs	r2, #12
 2382 0ae8 BA18     		adds	r2, r7, r2
 2383 0aea 0978     		ldrb	r1, [r1]
 2384 0aec 1278     		ldrb	r2, [r2]
 2385 0aee 0A43     		orrs	r2, r1
 2386 0af0 1A70     		strb	r2, [r3]
 2387 0af2 09E0     		b	.L131
 2388              	.L130:
 429:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}else{
 430:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 		mask = mask & temp;
 2389              		.loc 1 430 0
 2390 0af4 0F23     		movs	r3, #15
 2391 0af6 FB18     		adds	r3, r7, r3
 2392 0af8 0F22     		movs	r2, #15
 2393 0afa BA18     		adds	r2, r7, r2
 2394 0afc 0C21     		movs	r1, #12
 2395 0afe 7918     		adds	r1, r7, r1
 2396 0b00 1278     		ldrb	r2, [r2]
 2397 0b02 0978     		ldrb	r1, [r1]
 2398 0b04 0A40     		ands	r2, r1
 2399 0b06 1A70     		strb	r2, [r3]
 2400              	.L131:
 431:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	}
 432:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	graphic_write_data(mask, controller);	
 2401              		.loc 1 432 0
 2402 0b08 0E23     		movs	r3, #14
 2403 0b0a FB18     		adds	r3, r7, r3
 2404 0b0c 1A78     		ldrb	r2, [r3]
 2405 0b0e 0F23     		movs	r3, #15
 2406 0b10 FB18     		adds	r3, r7, r3
 2407 0b12 1B78     		ldrb	r3, [r3]
 2408 0b14 1100     		movs	r1, r2
 2409 0b16 1800     		movs	r0, r3
 2410 0b18 FFF7FEFF 		bl	graphic_write_data
 2411 0b1c 02E0     		b	.L120
 2412              	.L132:
 402:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	if(set != 0 && set != 1) return;
 2413              		.loc 1 402 0
 2414 0b1e C046     		nop
 2415 0b20 00E0     		b	.L120
 2416              	.L133:
 403:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** 	
 2417              		.loc 1 403 0
 2418 0b22 C046     		nop
 2419              	.L120:
 433:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v3\gpio.c **** }...
 2420              		.loc 1 433 0
 2421 0b24 BD46     		mov	sp, r7
 2422 0b26 05B0     		add	sp, sp, #20
 2423              		@ sp needed
 2424 0b28 90BD     		pop	{r4, r7, pc}
 2425              	.L135:
 2426 0b2a C046     		.align	2
 2427              	.L134:
 2428 0b2c 07000080 		.word	-2147483641
 2429              		.cfi_endproc
 2430              	.LFE31:
 2432              	.Letext0:
 2433              		.file 2 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 2434              		.file 3 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
 2435              		.file 4 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v
