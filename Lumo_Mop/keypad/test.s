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
  25              		.file 1 "C:/Users/Lumo/Documents/Lumo_Mop/keypad/startup.c"
   1:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** /*
   2:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c ****  * 	startup.c
   3:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c ****  *
   4:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c ****  */
   5:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** #define GPIO_D 0x40020C00
   6:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
   7:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** #define GPIO_MODER *((volatile unsigned int*) GPIO_D)
   8:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** #define GPIO_OTYPER *((volatile unsigned short*) (GPIO_D + 0x4))
   9:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** #define GPIO_PUPDR *((volatile unsigned int*) (GPIO_D + 0xC))
  10:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  11:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** #define GPIO_IDR_HIGH *((volatile unsigned char*) (GPIO_D + 0x11))
  12:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** #define GPIO_ODR_LOW *((volatile unsigned char*) (GPIO_D + 0x14))
  13:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** #define GPIO_ODR_HIGH *((volatile unsigned char*) (GPIO_D + 0x15))
  14:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  15:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  16:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  17:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  18:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** void startup ( void )
  19:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** {
  26              		.loc 1 19 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  20:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** __asm volatile(
  31              		.loc 1 20 0
  32              		.syntax divided
  33              	@ 20 "C:/Users/Lumo/Documents/Lumo_Mop/keypad/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  21:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  22:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	" MOV SP,R0\n"
  23:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	" BL main\n"				/* call main */
  24:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	"_exit: B .\n"				/* never return */
  25:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	);
  26:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** }
  40              		.loc 1 26 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	app_init
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	app_init:
  56              	.LFB1:
  27:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  28:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** void app_init (void) {
  57              		.loc 1 28 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  29:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	GPIO_MODER = 0x55005555;
  67              		.loc 1 29 0
  68 0004 124B     		ldr	r3, .L3
  69 0006 134A     		ldr	r2, .L3+4
  70 0008 1A60     		str	r2, [r3]
  30:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	GPIO_OTYPER &= 0x00FF;
  71              		.loc 1 30 0
  72 000a 134A     		ldr	r2, .L3+8
  73 000c 124B     		ldr	r3, .L3+8
  74 000e 1B88     		ldrh	r3, [r3]
  75 0010 9BB2     		uxth	r3, r3
  76 0012 FF21     		movs	r1, #255
  77 0014 0B40     		ands	r3, r1
  78 0016 9BB2     		uxth	r3, r3
  79 0018 1380     		strh	r3, [r2]
  31:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	GPIO_OTYPER |= 0x0000;
  80              		.loc 1 31 0
  81 001a 0F4B     		ldr	r3, .L3+8
  82 001c 0E4A     		ldr	r2, .L3+8
  83 001e 1288     		ldrh	r2, [r2]
  84 0020 92B2     		uxth	r2, r2
  85 0022 1A80     		strh	r2, [r3]
  32:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	GPIO_PUPDR &= 0x0000FFFF;
  86              		.loc 1 32 0
  87 0024 0D4B     		ldr	r3, .L3+12
  88 0026 0D4A     		ldr	r2, .L3+12
  89 0028 1268     		ldr	r2, [r2]
  90 002a 1204     		lsls	r2, r2, #16
  91 002c 120C     		lsrs	r2, r2, #16
  92 002e 1A60     		str	r2, [r3]
  33:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	GPIO_PUPDR |= 0x00AA0000;
  93              		.loc 1 33 0
  94 0030 0A4B     		ldr	r3, .L3+12
  95 0032 0A4A     		ldr	r2, .L3+12
  96 0034 1268     		ldr	r2, [r2]
  97 0036 AA21     		movs	r1, #170
  98 0038 0904     		lsls	r1, r1, #16
  99 003a 0A43     		orrs	r2, r1
 100 003c 1A60     		str	r2, [r3]
  34:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	GPIO_ODR_HIGH &= 0x00FF;
 101              		.loc 1 34 0
 102 003e 084B     		ldr	r3, .L3+16
 103 0040 074A     		ldr	r2, .L3+16
 104 0042 1278     		ldrb	r2, [r2]
 105 0044 D2B2     		uxtb	r2, r2
 106 0046 1A70     		strb	r2, [r3]
  35:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** }
 107              		.loc 1 35 0
 108 0048 C046     		nop
 109 004a BD46     		mov	sp, r7
 110              		@ sp needed
 111 004c 80BD     		pop	{r7, pc}
 112              	.L4:
 113 004e C046     		.align	2
 114              	.L3:
 115 0050 000C0240 		.word	1073875968
 116 0054 55550055 		.word	1426085205
 117 0058 040C0240 		.word	1073875972
 118 005c 0C0C0240 		.word	1073875980
 119 0060 150C0240 		.word	1073875989
 120              		.cfi_endproc
 121              	.LFE1:
 123              		.global	key
 124              		.data
 125              		.align	2
 128              	key:
 129 0000 01       		.byte	1
 130 0001 02       		.byte	2
 131 0002 03       		.byte	3
 132 0003 0A       		.byte	10
 133 0004 04       		.byte	4
 134 0005 05       		.byte	5
 135 0006 06       		.byte	6
 136 0007 0B       		.byte	11
 137 0008 07       		.byte	7
 138 0009 08       		.byte	8
 139 000a 09       		.byte	9
 140 000b 0C       		.byte	12
 141 000c 0E       		.byte	14
 142 000d 00       		.byte	0
 143 000e 0F       		.byte	15
 144 000f 0D       		.byte	13
 145              		.global	decode7segArray
 146              		.align	2
 149              	decode7segArray:
 150 0010 3F       		.byte	63
 151 0011 06       		.byte	6
 152 0012 5B       		.byte	91
 153 0013 4F       		.byte	79
 154 0014 66       		.byte	102
 155 0015 6D       		.byte	109
 156 0016 7D       		.byte	125
 157 0017 07       		.byte	7
 158 0018 7F       		.byte	127
 159 0019 6F       		.byte	111
 160 001a 77       		.byte	119
 161 001b 7C       		.byte	124
 162 001c 58       		.byte	88
 163 001d 5E       		.byte	94
 164 001e 80       		.byte	-128
 165 001f 76       		.byte	118
 166              		.global	decode7segMatrix
 167              		.align	2
 170              	decode7segMatrix:
 171 0020 06       		.byte	6
 172 0021 5B       		.byte	91
 173 0022 4F       		.byte	79
 174 0023 77       		.byte	119
 175 0024 66       		.byte	102
 176 0025 6D       		.byte	109
 177 0026 7D       		.byte	125
 178 0027 7C       		.byte	124
 179 0028 07       		.byte	7
 180 0029 7F       		.byte	127
 181 002a 6F       		.byte	111
 182 002b 58       		.byte	88
 183 002c 80       		.byte	-128
 184 002d 3F       		.byte	63
 185 002e 76       		.byte	118
 186 002f 5E       		.byte	94
 187              		.text
 188              		.align	1
 189              		.global	keyb
 190              		.syntax unified
 191              		.code	16
 192              		.thumb_func
 193              		.fpu softvfp
 195              	keyb:
 196              	.LFB2:
  36:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  37:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  38:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** unsigned char key[4][4] = {
  39:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	{1, 2, 3, 0xA},
  40:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	{4, 5, 6, 0xB},
  41:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	{7, 8, 9, 0xC},
  42:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	{0xE, 0, 0xF, 0xD}
  43:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** };
  44:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  45:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** unsigned char decode7segArray[] = {0x3F, 0x6, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77,
  46:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  47:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** unsigned char decode7segMatrix[4][4] = {
  48:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** {0x6, 0x5B, 0x4F, 0x77}, //{1, 2, 3, 0xA}
  49:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** {0x66, 0x6D, 0x7D, 0x7C},
  50:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** {0x07, 0x7F, 0x6F, 0x58},
  51:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** {0x80, 0x3F, 0x76, 0x5E}
  52:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** };
  53:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  54:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** unsigned char keyb(void){
 197              		.loc 1 54 0
 198              		.cfi_startproc
 199              		@ args = 0, pretend = 0, frame = 8
 200              		@ frame_needed = 1, uses_anonymous_args = 0
 201 0064 80B5     		push	{r7, lr}
 202              		.cfi_def_cfa_offset 8
 203              		.cfi_offset 7, -8
 204              		.cfi_offset 14, -4
 205 0066 82B0     		sub	sp, sp, #8
 206              		.cfi_def_cfa_offset 16
 207 0068 00AF     		add	r7, sp, #0
 208              		.cfi_def_cfa_register 7
 209              	.LBB2:
  55:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	unsigned char row, column;
  56:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	
  57:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	for (unsigned char row = 1; row <= 4; row++) {
 210              		.loc 1 57 0
 211 006a FB1D     		adds	r3, r7, #7
 212 006c 0122     		movs	r2, #1
 213 006e 1A70     		strb	r2, [r3]
 214 0070 20E0     		b	.L6
 215              	.L9:
 216              	.LBB3:
  58:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		// mind the one indexing of rows and columns, to simplify resetting of values
  59:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		ActivateRow(row);
 217              		.loc 1 59 0
 218 0072 FB1D     		adds	r3, r7, #7
 219 0074 1B78     		ldrb	r3, [r3]
 220 0076 1800     		movs	r0, r3
 221 0078 FFF7FEFF 		bl	ActivateRow
  60:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		column = ReadColumn();
 222              		.loc 1 60 0
 223 007c FFF7FEFF 		bl	ReadColumn
 224 0080 0200     		movs	r2, r0
 225 0082 BB1D     		adds	r3, r7, #6
 226 0084 1A70     		strb	r2, [r3]
  61:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		if (column > 0){
 227              		.loc 1 61 0
 228 0086 BB1D     		adds	r3, r7, #6
 229 0088 1B78     		ldrb	r3, [r3]
 230 008a 002B     		cmp	r3, #0
 231 008c 0DD0     		beq	.L7
  62:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 			ActivateRow(0);
 232              		.loc 1 62 0
 233 008e 0020     		movs	r0, #0
 234 0090 FFF7FEFF 		bl	ActivateRow
  63:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 			return key[row - 1][column - 1];
 235              		.loc 1 63 0
 236 0094 FB1D     		adds	r3, r7, #7
 237 0096 1B78     		ldrb	r3, [r3]
 238 0098 5A1E     		subs	r2, r3, #1
 239 009a BB1D     		adds	r3, r7, #6
 240 009c 1B78     		ldrb	r3, [r3]
 241 009e 013B     		subs	r3, r3, #1
 242 00a0 0A49     		ldr	r1, .L10
 243 00a2 9200     		lsls	r2, r2, #2
 244 00a4 8A18     		adds	r2, r1, r2
 245 00a6 D35C     		ldrb	r3, [r2, r3]
 246 00a8 0CE0     		b	.L8
 247              	.L7:
 248              	.LBE3:
  57:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		// mind the one indexing of rows and columns, to simplify resetting of values
 249              		.loc 1 57 0 discriminator 2
 250 00aa FB1D     		adds	r3, r7, #7
 251 00ac 1A78     		ldrb	r2, [r3]
 252 00ae FB1D     		adds	r3, r7, #7
 253 00b0 0132     		adds	r2, r2, #1
 254 00b2 1A70     		strb	r2, [r3]
 255              	.L6:
  57:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		// mind the one indexing of rows and columns, to simplify resetting of values
 256              		.loc 1 57 0 is_stmt 0 discriminator 1
 257 00b4 FB1D     		adds	r3, r7, #7
 258 00b6 1B78     		ldrb	r3, [r3]
 259 00b8 042B     		cmp	r3, #4
 260 00ba DAD9     		bls	.L9
 261              	.LBE2:
  64:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 			//return decode7segMatrix[row - 1][column - 1];
  65:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		}
  66:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	}
  67:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	ActivateRow(0);
 262              		.loc 1 67 0 is_stmt 1
 263 00bc 0020     		movs	r0, #0
 264 00be FFF7FEFF 		bl	ActivateRow
  68:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	return 0xFF;
 265              		.loc 1 68 0
 266 00c2 FF23     		movs	r3, #255
 267              	.L8:
  69:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** }
 268              		.loc 1 69 0
 269 00c4 1800     		movs	r0, r3
 270 00c6 BD46     		mov	sp, r7
 271 00c8 02B0     		add	sp, sp, #8
 272              		@ sp needed
 273 00ca 80BD     		pop	{r7, pc}
 274              	.L11:
 275              		.align	2
 276              	.L10:
 277 00cc 00000000 		.word	key
 278              		.cfi_endproc
 279              	.LFE2:
 281              		.align	1
 282              		.global	ActivateRow
 283              		.syntax unified
 284              		.code	16
 285              		.thumb_func
 286              		.fpu softvfp
 288              	ActivateRow:
 289              	.LFB3:
  70:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  71:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** void ActivateRow(unsigned char row) {
 290              		.loc 1 71 0
 291              		.cfi_startproc
 292              		@ args = 0, pretend = 0, frame = 8
 293              		@ frame_needed = 1, uses_anonymous_args = 0
 294 00d0 80B5     		push	{r7, lr}
 295              		.cfi_def_cfa_offset 8
 296              		.cfi_offset 7, -8
 297              		.cfi_offset 14, -4
 298 00d2 82B0     		sub	sp, sp, #8
 299              		.cfi_def_cfa_offset 16
 300 00d4 00AF     		add	r7, sp, #0
 301              		.cfi_def_cfa_register 7
 302 00d6 0200     		movs	r2, r0
 303 00d8 FB1D     		adds	r3, r7, #7
 304 00da 1A70     		strb	r2, [r3]
  72:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	switch(row){
 305              		.loc 1 72 0
 306 00dc FB1D     		adds	r3, r7, #7
 307 00de 1B78     		ldrb	r3, [r3]
 308 00e0 042B     		cmp	r3, #4
 309 00e2 18D8     		bhi	.L20
 310 00e4 9A00     		lsls	r2, r3, #2
 311 00e6 0E4B     		ldr	r3, .L21
 312 00e8 D318     		adds	r3, r2, r3
 313 00ea 1B68     		ldr	r3, [r3]
 314 00ec 9F46     		mov	pc, r3
 315              		.section	.rodata
 316              		.align	2
 317              	.L15:
 318 0000 EE000000 		.word	.L14
 319 0004 F6000000 		.word	.L16
 320 0008 FE000000 		.word	.L17
 321 000c 06010000 		.word	.L18
 322 0010 0E010000 		.word	.L19
 323              		.text
 324              	.L14:
  73:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		case 0: GPIO_ODR_HIGH = 0x0; break; //0 to reset
 325              		.loc 1 73 0
 326 00ee 0D4B     		ldr	r3, .L21+4
 327 00f0 0022     		movs	r2, #0
 328 00f2 1A70     		strb	r2, [r3]
 329 00f4 0FE0     		b	.L13
 330              	.L16:
  74:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		case 1: GPIO_ODR_HIGH = 0x10; break;
 331              		.loc 1 74 0
 332 00f6 0B4B     		ldr	r3, .L21+4
 333 00f8 1022     		movs	r2, #16
 334 00fa 1A70     		strb	r2, [r3]
 335 00fc 0BE0     		b	.L13
 336              	.L17:
  75:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		case 2: GPIO_ODR_HIGH = 0x20; break;
 337              		.loc 1 75 0
 338 00fe 094B     		ldr	r3, .L21+4
 339 0100 2022     		movs	r2, #32
 340 0102 1A70     		strb	r2, [r3]
 341 0104 07E0     		b	.L13
 342              	.L18:
  76:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		case 3: GPIO_ODR_HIGH = 0x40; break;
 343              		.loc 1 76 0
 344 0106 074B     		ldr	r3, .L21+4
 345 0108 4022     		movs	r2, #64
 346 010a 1A70     		strb	r2, [r3]
 347 010c 03E0     		b	.L13
 348              	.L19:
  77:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		case 4: GPIO_ODR_HIGH = 0x80; break;
 349              		.loc 1 77 0
 350 010e 054B     		ldr	r3, .L21+4
 351 0110 8022     		movs	r2, #128
 352 0112 1A70     		strb	r2, [r3]
 353 0114 C046     		nop
 354              	.L13:
 355              	.L20:
  78:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	}
  79:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** }
 356              		.loc 1 79 0
 357 0116 C046     		nop
 358 0118 BD46     		mov	sp, r7
 359 011a 02B0     		add	sp, sp, #8
 360              		@ sp needed
 361 011c 80BD     		pop	{r7, pc}
 362              	.L22:
 363 011e C046     		.align	2
 364              	.L21:
 365 0120 00000000 		.word	.L15
 366 0124 150C0240 		.word	1073875989
 367              		.cfi_endproc
 368              	.LFE3:
 370              		.align	1
 371              		.global	ReadColumn
 372              		.syntax unified
 373              		.code	16
 374              		.thumb_func
 375              		.fpu softvfp
 377              	ReadColumn:
 378              	.LFB4:
  80:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  81:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** int ReadColumn(void) {
 379              		.loc 1 81 0
 380              		.cfi_startproc
 381              		@ args = 0, pretend = 0, frame = 8
 382              		@ frame_needed = 1, uses_anonymous_args = 0
 383 0128 80B5     		push	{r7, lr}
 384              		.cfi_def_cfa_offset 8
 385              		.cfi_offset 7, -8
 386              		.cfi_offset 14, -4
 387 012a 82B0     		sub	sp, sp, #8
 388              		.cfi_def_cfa_offset 16
 389 012c 00AF     		add	r7, sp, #0
 390              		.cfi_def_cfa_register 7
  82:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	// Returns column number of pressed key, observe that the columns of the keyboard are read from ri
  83:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	unsigned char c;
  84:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	c = GPIO_IDR_HIGH;
 391              		.loc 1 84 0
 392 012e 124A     		ldr	r2, .L29
 393 0130 FB1D     		adds	r3, r7, #7
 394 0132 1278     		ldrb	r2, [r2]
 395 0134 1A70     		strb	r2, [r3]
  85:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	if (c & 0x8){return 4;}
 396              		.loc 1 85 0
 397 0136 FB1D     		adds	r3, r7, #7
 398 0138 1B78     		ldrb	r3, [r3]
 399 013a 0822     		movs	r2, #8
 400 013c 1340     		ands	r3, r2
 401 013e 01D0     		beq	.L24
 402              		.loc 1 85 0 is_stmt 0 discriminator 1
 403 0140 0423     		movs	r3, #4
 404 0142 15E0     		b	.L25
 405              	.L24:
  86:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	if (c & 0x4){return 3;}
 406              		.loc 1 86 0 is_stmt 1
 407 0144 FB1D     		adds	r3, r7, #7
 408 0146 1B78     		ldrb	r3, [r3]
 409 0148 0422     		movs	r2, #4
 410 014a 1340     		ands	r3, r2
 411 014c 01D0     		beq	.L26
 412              		.loc 1 86 0 is_stmt 0 discriminator 1
 413 014e 0323     		movs	r3, #3
 414 0150 0EE0     		b	.L25
 415              	.L26:
  87:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	if (c & 0x2){return 2;}
 416              		.loc 1 87 0 is_stmt 1
 417 0152 FB1D     		adds	r3, r7, #7
 418 0154 1B78     		ldrb	r3, [r3]
 419 0156 0222     		movs	r2, #2
 420 0158 1340     		ands	r3, r2
 421 015a 01D0     		beq	.L27
 422              		.loc 1 87 0 is_stmt 0 discriminator 1
 423 015c 0223     		movs	r3, #2
 424 015e 07E0     		b	.L25
 425              	.L27:
  88:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	if (c & 0x1){return 1;}
 426              		.loc 1 88 0 is_stmt 1
 427 0160 FB1D     		adds	r3, r7, #7
 428 0162 1B78     		ldrb	r3, [r3]
 429 0164 0122     		movs	r2, #1
 430 0166 1340     		ands	r3, r2
 431 0168 01D0     		beq	.L28
 432              		.loc 1 88 0 is_stmt 0 discriminator 1
 433 016a 0123     		movs	r3, #1
 434 016c 00E0     		b	.L25
 435              	.L28:
  89:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	return 0;
 436              		.loc 1 89 0 is_stmt 1
 437 016e 0023     		movs	r3, #0
 438              	.L25:
  90:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** }
 439              		.loc 1 90 0
 440 0170 1800     		movs	r0, r3
 441 0172 BD46     		mov	sp, r7
 442 0174 02B0     		add	sp, sp, #8
 443              		@ sp needed
 444 0176 80BD     		pop	{r7, pc}
 445              	.L30:
 446              		.align	2
 447              	.L29:
 448 0178 110C0240 		.word	1073875985
 449              		.cfi_endproc
 450              	.LFE4:
 452              		.align	1
 453              		.global	out7seg
 454              		.syntax unified
 455              		.code	16
 456              		.thumb_func
 457              		.fpu softvfp
 459              	out7seg:
 460              	.LFB5:
  91:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
  92:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** void out7seg(unsigned char c) {
 461              		.loc 1 92 0
 462              		.cfi_startproc
 463              		@ args = 0, pretend = 0, frame = 8
 464              		@ frame_needed = 1, uses_anonymous_args = 0
 465 017c 80B5     		push	{r7, lr}
 466              		.cfi_def_cfa_offset 8
 467              		.cfi_offset 7, -8
 468              		.cfi_offset 14, -4
 469 017e 82B0     		sub	sp, sp, #8
 470              		.cfi_def_cfa_offset 16
 471 0180 00AF     		add	r7, sp, #0
 472              		.cfi_def_cfa_register 7
 473 0182 0200     		movs	r2, r0
 474 0184 FB1D     		adds	r3, r7, #7
 475 0186 1A70     		strb	r2, [r3]
  93:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	if (c > 0xF) {
 476              		.loc 1 93 0
 477 0188 FB1D     		adds	r3, r7, #7
 478 018a 1B78     		ldrb	r3, [r3]
 479 018c 0F2B     		cmp	r3, #15
 480 018e 03D9     		bls	.L32
  94:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 		GPIO_ODR_LOW = 0;
 481              		.loc 1 94 0
 482 0190 064B     		ldr	r3, .L35
 483 0192 0022     		movs	r2, #0
 484 0194 1A70     		strb	r2, [r3]
  95:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	} else {
  96:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	GPIO_ODR_LOW = decode7segArray[c];
  97:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	//GPIO_ODR_LOW = c;
  98:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	}
  99:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** }
 485              		.loc 1 99 0
 486 0196 05E0     		b	.L34
 487              	.L32:
  96:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	//GPIO_ODR_LOW = c;
 488              		.loc 1 96 0
 489 0198 0449     		ldr	r1, .L35
 490 019a FB1D     		adds	r3, r7, #7
 491 019c 1B78     		ldrb	r3, [r3]
 492 019e 044A     		ldr	r2, .L35+4
 493 01a0 D35C     		ldrb	r3, [r2, r3]
 494 01a2 0B70     		strb	r3, [r1]
 495              	.L34:
 496              		.loc 1 99 0
 497 01a4 C046     		nop
 498 01a6 BD46     		mov	sp, r7
 499 01a8 02B0     		add	sp, sp, #8
 500              		@ sp needed
 501 01aa 80BD     		pop	{r7, pc}
 502              	.L36:
 503              		.align	2
 504              	.L35:
 505 01ac 140C0240 		.word	1073875988
 506 01b0 00000000 		.word	decode7segArray
 507              		.cfi_endproc
 508              	.LFE5:
 510              		.align	1
 511              		.global	main
 512              		.syntax unified
 513              		.code	16
 514              		.thumb_func
 515              		.fpu softvfp
 517              	main:
 518              	.LFB6:
 100:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 
 101:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** void main(void) {
 519              		.loc 1 101 0
 520              		.cfi_startproc
 521              		@ args = 0, pretend = 0, frame = 0
 522              		@ frame_needed = 1, uses_anonymous_args = 0
 523 01b4 80B5     		push	{r7, lr}
 524              		.cfi_def_cfa_offset 8
 525              		.cfi_offset 7, -8
 526              		.cfi_offset 14, -4
 527 01b6 00AF     		add	r7, sp, #0
 528              		.cfi_def_cfa_register 7
 102:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	app_init();
 529              		.loc 1 102 0
 530 01b8 FFF7FEFF 		bl	app_init
 531              	.L38:
 103:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	while(1) {
 104:C:/Users/Lumo/Documents/Lumo_Mop/keypad\startup.c **** 	out7seg(keyb());
 532              		.loc 1 104 0 discriminator 1
 533 01bc FFF7FEFF 		bl	keyb
 534 01c0 0300     		movs	r3, r0
 535 01c2 1800     		movs	r0, r3
 536 01c4 FFF7FEFF 		bl	out7seg
 537 01c8 F8E7     		b	.L38
 538              		.cfi_endproc
 539              	.LFE6:
 541              	.Letext0:
