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
  25              		.file 1 "E:/DAT017/CodeLite files/Moplaborationer/keypadNew/startup.c"
   1:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** #define GPIO_D 0x40020C00
   2:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** #define GPIO_MODER ((volatile unsigned int*) (GPIO_D))
   3:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** #define GPIO_OTYPER *((volatile unsigned short*) (GPIO_D+0x4))
   4:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** #define GPIO_PUPDR *((volatile unsigned int*) (GPIO_D+0xC))
   5:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** #define GPIO_IDR_HIGH *((volatile unsigned char*) (GPIO_D+0x11))
   6:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** #define GPIO_ODR_LOW *((volatile unsigned char*) (GPIO_D+0x14))
   7:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** #define GPIO_ODR_HIGH *((volatile unsigned char*) (GPIO_D+0x15))
   8:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
   9:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** //PD8-15 Keypad
  10:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** //PD0-7 7seg
  11:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
  12:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  13:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
  14:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** void startup ( void ){
  26              		.loc 1 14 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  15:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** __asm volatile(
  31              		.loc 1 15 0
  32              		.syntax divided
  33              	@ 15 "E:/DAT017/CodeLite files/Moplaborationer/keypadNew/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  16:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  17:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	" MOV SP,R0\n"
  18:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	" BL main\n"				/* call main */
  19:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	"_exit: B .\n"				/* never return */
  20:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	) ;
  21:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** }
  40              		.loc 1 21 0
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
  22:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
  23:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** void app_init(void){
  57              		.loc 1 23 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  24:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	*GPIO_MODER = 0x55005555;
  67              		.loc 1 24 0
  68 0004 084B     		ldr	r3, .L3
  69 0006 094A     		ldr	r2, .L3+4
  70 0008 1A60     		str	r2, [r3]
  25:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	GPIO_OTYPER = 0x70;
  71              		.loc 1 25 0
  72 000a 094B     		ldr	r3, .L3+8
  73 000c 7022     		movs	r2, #112
  74 000e 1A80     		strh	r2, [r3]
  26:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	GPIO_PUPDR = 0x0AA;
  75              		.loc 1 26 0
  76 0010 084B     		ldr	r3, .L3+12
  77 0012 AA22     		movs	r2, #170
  78 0014 1A60     		str	r2, [r3]
  27:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	GPIO_ODR_HIGH = GPIO_ODR_HIGH & 0x00FF;
  79              		.loc 1 27 0
  80 0016 084B     		ldr	r3, .L3+16
  81 0018 074A     		ldr	r2, .L3+16
  82 001a 1278     		ldrb	r2, [r2]
  83 001c D2B2     		uxtb	r2, r2
  84 001e 1A70     		strb	r2, [r3]
  28:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** }
  85              		.loc 1 28 0
  86 0020 C046     		nop
  87 0022 BD46     		mov	sp, r7
  88              		@ sp needed
  89 0024 80BD     		pop	{r7, pc}
  90              	.L4:
  91 0026 C046     		.align	2
  92              	.L3:
  93 0028 000C0240 		.word	1073875968
  94 002c 55550055 		.word	1426085205
  95 0030 040C0240 		.word	1073875972
  96 0034 0C0C0240 		.word	1073875980
  97 0038 150C0240 		.word	1073875989
  98              		.cfi_endproc
  99              	.LFE1:
 101              		.align	1
 102              		.global	keyboardActivate
 103              		.syntax unified
 104              		.code	16
 105              		.thumb_func
 106              		.fpu softvfp
 108              	keyboardActivate:
 109              	.LFB2:
  29:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
  30:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** void keyboardActivate(unsigned int row){
 110              		.loc 1 30 0
 111              		.cfi_startproc
 112              		@ args = 0, pretend = 0, frame = 8
 113              		@ frame_needed = 1, uses_anonymous_args = 0
 114 003c 80B5     		push	{r7, lr}
 115              		.cfi_def_cfa_offset 8
 116              		.cfi_offset 7, -8
 117              		.cfi_offset 14, -4
 118 003e 82B0     		sub	sp, sp, #8
 119              		.cfi_def_cfa_offset 16
 120 0040 00AF     		add	r7, sp, #0
 121              		.cfi_def_cfa_register 7
 122 0042 7860     		str	r0, [r7, #4]
  31:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	//Aktivera angiven rad hos tangentbordet eller deaktivera samtliga
  32:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	
  33:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	switch(row){
 123              		.loc 1 33 0
 124 0044 7B68     		ldr	r3, [r7, #4]
 125 0046 042B     		cmp	r3, #4
 126 0048 19D8     		bhi	.L13
 127 004a 7B68     		ldr	r3, [r7, #4]
 128 004c 9A00     		lsls	r2, r3, #2
 129 004e 0E4B     		ldr	r3, .L14
 130 0050 D318     		adds	r3, r2, r3
 131 0052 1B68     		ldr	r3, [r3]
 132 0054 9F46     		mov	pc, r3
 133              		.section	.rodata
 134              		.align	2
 135              	.L8:
 136 0000 76000000 		.word	.L7
 137 0004 56000000 		.word	.L9
 138 0008 5E000000 		.word	.L10
 139 000c 66000000 		.word	.L11
 140 0010 6E000000 		.word	.L12
 141              		.text
 142              	.L9:
  34:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		case 1: GPIO_ODR_HIGH = 0x10; break;
 143              		.loc 1 34 0
 144 0056 0D4B     		ldr	r3, .L14+4
 145 0058 1022     		movs	r2, #16
 146 005a 1A70     		strb	r2, [r3]
 147 005c 0FE0     		b	.L6
 148              	.L10:
  35:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		case 2: GPIO_ODR_HIGH = 0x20; break;
 149              		.loc 1 35 0
 150 005e 0B4B     		ldr	r3, .L14+4
 151 0060 2022     		movs	r2, #32
 152 0062 1A70     		strb	r2, [r3]
 153 0064 0BE0     		b	.L6
 154              	.L11:
  36:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		case 3: GPIO_ODR_HIGH = 0x40; break;
 155              		.loc 1 36 0
 156 0066 094B     		ldr	r3, .L14+4
 157 0068 4022     		movs	r2, #64
 158 006a 1A70     		strb	r2, [r3]
 159 006c 07E0     		b	.L6
 160              	.L12:
  37:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		case 4: GPIO_ODR_HIGH = 0x80; break;
 161              		.loc 1 37 0
 162 006e 074B     		ldr	r3, .L14+4
 163 0070 8022     		movs	r2, #128
 164 0072 1A70     		strb	r2, [r3]
 165 0074 03E0     		b	.L6
 166              	.L7:
  38:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		case 0: GPIO_ODR_HIGH = 0x00; break;
 167              		.loc 1 38 0
 168 0076 054B     		ldr	r3, .L14+4
 169 0078 0022     		movs	r2, #0
 170 007a 1A70     		strb	r2, [r3]
 171 007c C046     		nop
 172              	.L6:
 173              	.L13:
  39:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	}
  40:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** }
 174              		.loc 1 40 0
 175 007e C046     		nop
 176 0080 BD46     		mov	sp, r7
 177 0082 02B0     		add	sp, sp, #8
 178              		@ sp needed
 179 0084 80BD     		pop	{r7, pc}
 180              	.L15:
 181 0086 C046     		.align	2
 182              	.L14:
 183 0088 00000000 		.word	.L8
 184 008c 150C0240 		.word	1073875989
 185              		.cfi_endproc
 186              	.LFE2:
 188              		.align	1
 189              		.global	keyboardGetColumn
 190              		.syntax unified
 191              		.code	16
 192              		.thumb_func
 193              		.fpu softvfp
 195              	keyboardGetColumn:
 196              	.LFB3:
  41:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
  42:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** int keyboardGetColumn(void){
 197              		.loc 1 42 0
 198              		.cfi_startproc
 199              		@ args = 0, pretend = 0, frame = 8
 200              		@ frame_needed = 1, uses_anonymous_args = 0
 201 0090 80B5     		push	{r7, lr}
 202              		.cfi_def_cfa_offset 8
 203              		.cfi_offset 7, -8
 204              		.cfi_offset 14, -4
 205 0092 82B0     		sub	sp, sp, #8
 206              		.cfi_def_cfa_offset 16
 207 0094 00AF     		add	r7, sp, #0
 208              		.cfi_def_cfa_register 7
  43:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	//Om någon tangent i den aktiverade raden är nedtryckt
  44:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	// returneras dess kolumnnummer. Annars 0.
  45:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	
  46:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	unsigned char c;
  47:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	c = GPIO_IDR_HIGH;
 209              		.loc 1 47 0
 210 0096 124A     		ldr	r2, .L22
 211 0098 FB1D     		adds	r3, r7, #7
 212 009a 1278     		ldrb	r2, [r2]
 213 009c 1A70     		strb	r2, [r3]
  48:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	if(c & 0x8){return 4;}
 214              		.loc 1 48 0
 215 009e FB1D     		adds	r3, r7, #7
 216 00a0 1B78     		ldrb	r3, [r3]
 217 00a2 0822     		movs	r2, #8
 218 00a4 1340     		ands	r3, r2
 219 00a6 01D0     		beq	.L17
 220              		.loc 1 48 0 is_stmt 0 discriminator 1
 221 00a8 0423     		movs	r3, #4
 222 00aa 15E0     		b	.L18
 223              	.L17:
  49:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	if(c & 0x4){return 3;}
 224              		.loc 1 49 0 is_stmt 1
 225 00ac FB1D     		adds	r3, r7, #7
 226 00ae 1B78     		ldrb	r3, [r3]
 227 00b0 0422     		movs	r2, #4
 228 00b2 1340     		ands	r3, r2
 229 00b4 01D0     		beq	.L19
 230              		.loc 1 49 0 is_stmt 0 discriminator 1
 231 00b6 0323     		movs	r3, #3
 232 00b8 0EE0     		b	.L18
 233              	.L19:
  50:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	if(c & 0x2){return 2;}
 234              		.loc 1 50 0 is_stmt 1
 235 00ba FB1D     		adds	r3, r7, #7
 236 00bc 1B78     		ldrb	r3, [r3]
 237 00be 0222     		movs	r2, #2
 238 00c0 1340     		ands	r3, r2
 239 00c2 01D0     		beq	.L20
 240              		.loc 1 50 0 is_stmt 0 discriminator 1
 241 00c4 0223     		movs	r3, #2
 242 00c6 07E0     		b	.L18
 243              	.L20:
  51:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	if(c & 0x1){return 1;}
 244              		.loc 1 51 0 is_stmt 1
 245 00c8 FB1D     		adds	r3, r7, #7
 246 00ca 1B78     		ldrb	r3, [r3]
 247 00cc 0122     		movs	r2, #1
 248 00ce 1340     		ands	r3, r2
 249 00d0 01D0     		beq	.L21
 250              		.loc 1 51 0 is_stmt 0 discriminator 1
 251 00d2 0123     		movs	r3, #1
 252 00d4 00E0     		b	.L18
 253              	.L21:
  52:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	return 0;
 254              		.loc 1 52 0 is_stmt 1
 255 00d6 0023     		movs	r3, #0
 256              	.L18:
  53:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** }
 257              		.loc 1 53 0
 258 00d8 1800     		movs	r0, r3
 259 00da BD46     		mov	sp, r7
 260 00dc 02B0     		add	sp, sp, #8
 261              		@ sp needed
 262 00de 80BD     		pop	{r7, pc}
 263              	.L23:
 264              		.align	2
 265              	.L22:
 266 00e0 110C0240 		.word	1073875985
 267              		.cfi_endproc
 268              	.LFE3:
 270              		.section	.rodata
 271              		.align	2
 272              	.LC0:
 273 0014 01       		.byte	1
 274 0015 02       		.byte	2
 275 0016 03       		.byte	3
 276 0017 0A       		.byte	10
 277 0018 04       		.byte	4
 278 0019 05       		.byte	5
 279 001a 06       		.byte	6
 280 001b 0B       		.byte	11
 281 001c 07       		.byte	7
 282 001d 08       		.byte	8
 283 001e 09       		.byte	9
 284 001f 0C       		.byte	12
 285 0020 0E       		.byte	14
 286 0021 00       		.byte	0
 287 0022 0F       		.byte	15
 288 0023 0D       		.byte	13
 289              		.text
 290              		.align	1
 291              		.global	keyboard
 292              		.syntax unified
 293              		.code	16
 294              		.thumb_func
 295              		.fpu softvfp
 297              	keyboard:
 298              	.LFB4:
  54:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
  55:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** unsigned char keyboard(void){
 299              		.loc 1 55 0
 300              		.cfi_startproc
 301              		@ args = 0, pretend = 0, frame = 24
 302              		@ frame_needed = 1, uses_anonymous_args = 0
 303 00e4 90B5     		push	{r4, r7, lr}
 304              		.cfi_def_cfa_offset 12
 305              		.cfi_offset 4, -12
 306              		.cfi_offset 7, -8
 307              		.cfi_offset 14, -4
 308 00e6 87B0     		sub	sp, sp, #28
 309              		.cfi_def_cfa_offset 40
 310 00e8 00AF     		add	r7, sp, #0
 311              		.cfi_def_cfa_register 7
  56:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	unsigned char key[] = {1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 312              		.loc 1 56 0
 313 00ea 3B00     		movs	r3, r7
 314 00ec 164A     		ldr	r2, .L30
 315 00ee 13CA     		ldmia	r2!, {r0, r1, r4}
 316 00f0 13C3     		stmia	r3!, {r0, r1, r4}
 317 00f2 1268     		ldr	r2, [r2]
 318 00f4 1A60     		str	r2, [r3]
  57:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	int row, col;
  58:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	for(row=1; row<=4; row++){
 319              		.loc 1 58 0
 320 00f6 0123     		movs	r3, #1
 321 00f8 7B61     		str	r3, [r7, #20]
 322 00fa 19E0     		b	.L25
 323              	.L28:
  59:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		keyboardActivate(row);
 324              		.loc 1 59 0
 325 00fc 7B69     		ldr	r3, [r7, #20]
 326 00fe 1800     		movs	r0, r3
 327 0100 FFF7FEFF 		bl	keyboardActivate
  60:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		if(col = keyboardGetColumn()){
 328              		.loc 1 60 0
 329 0104 FFF7FEFF 		bl	keyboardGetColumn
 330 0108 0300     		movs	r3, r0
 331 010a 3B61     		str	r3, [r7, #16]
 332 010c 3B69     		ldr	r3, [r7, #16]
 333 010e 002B     		cmp	r3, #0
 334 0110 0BD0     		beq	.L26
  61:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 			keyboardActivate(0);
 335              		.loc 1 61 0
 336 0112 0020     		movs	r0, #0
 337 0114 FFF7FEFF 		bl	keyboardActivate
  62:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 			return key[4*(row-1) + (col-1)];
 338              		.loc 1 62 0
 339 0118 7B69     		ldr	r3, [r7, #20]
 340 011a 013B     		subs	r3, r3, #1
 341 011c 9A00     		lsls	r2, r3, #2
 342 011e 3B69     		ldr	r3, [r7, #16]
 343 0120 013B     		subs	r3, r3, #1
 344 0122 D318     		adds	r3, r2, r3
 345 0124 3A00     		movs	r2, r7
 346 0126 D35C     		ldrb	r3, [r2, r3]
 347 0128 09E0     		b	.L29
 348              	.L26:
  58:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		keyboardActivate(row);
 349              		.loc 1 58 0 discriminator 2
 350 012a 7B69     		ldr	r3, [r7, #20]
 351 012c 0133     		adds	r3, r3, #1
 352 012e 7B61     		str	r3, [r7, #20]
 353              	.L25:
  58:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		keyboardActivate(row);
 354              		.loc 1 58 0 is_stmt 0 discriminator 1
 355 0130 7B69     		ldr	r3, [r7, #20]
 356 0132 042B     		cmp	r3, #4
 357 0134 E2DD     		ble	.L28
  63:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		}
  64:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	}
  65:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	keyboardActivate(0);
 358              		.loc 1 65 0 is_stmt 1
 359 0136 0020     		movs	r0, #0
 360 0138 FFF7FEFF 		bl	keyboardActivate
  66:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	return 0xFF;
 361              		.loc 1 66 0
 362 013c FF23     		movs	r3, #255
 363              	.L29:
  67:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** }
 364              		.loc 1 67 0 discriminator 1
 365 013e 1800     		movs	r0, r3
 366 0140 BD46     		mov	sp, r7
 367 0142 07B0     		add	sp, sp, #28
 368              		@ sp needed
 369 0144 90BD     		pop	{r4, r7, pc}
 370              	.L31:
 371 0146 C046     		.align	2
 372              	.L30:
 373 0148 14000000 		.word	.LC0
 374              		.cfi_endproc
 375              	.LFE4:
 377              		.section	.rodata
 378              		.align	2
 379              	.LC1:
 380 0024 3F00     		.short	63
 381 0026 0600     		.short	6
 382 0028 5B00     		.short	91
 383 002a 4F00     		.short	79
 384 002c 6600     		.short	102
 385 002e 6D00     		.short	109
 386 0030 7D00     		.short	125
 387 0032 0700     		.short	7
 388 0034 7F00     		.short	127
 389 0036 6F00     		.short	111
 390 0038 7700     		.short	119
 391 003a 7C00     		.short	124
 392 003c 5800     		.short	88
 393 003e 5E00     		.short	94
 394 0040 8000     		.short	128
 395 0042 7600     		.short	118
 396              		.text
 397              		.align	1
 398              		.global	out7seg
 399              		.syntax unified
 400              		.code	16
 401              		.thumb_func
 402              		.fpu softvfp
 404              	out7seg:
 405              	.LFB5:
  68:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
  69:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** void out7seg(unsigned char c){
 406              		.loc 1 69 0
 407              		.cfi_startproc
 408              		@ args = 0, pretend = 0, frame = 40
 409              		@ frame_needed = 1, uses_anonymous_args = 0
 410 014c 90B5     		push	{r4, r7, lr}
 411              		.cfi_def_cfa_offset 12
 412              		.cfi_offset 4, -12
 413              		.cfi_offset 7, -8
 414              		.cfi_offset 14, -4
 415 014e 8BB0     		sub	sp, sp, #44
 416              		.cfi_def_cfa_offset 56
 417 0150 00AF     		add	r7, sp, #0
 418              		.cfi_def_cfa_register 7
 419 0152 0200     		movs	r2, r0
 420 0154 FB1D     		adds	r3, r7, #7
 421 0156 1A70     		strb	r2, [r3]
  70:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	
  71:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	//Segment-array över hur siffrorna skall synas på skärmen
  72:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	unsigned short result[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C,
 422              		.loc 1 72 0
 423 0158 0823     		movs	r3, #8
 424 015a FB18     		adds	r3, r7, r3
 425 015c 0D4A     		ldr	r2, .L36
 426 015e 13CA     		ldmia	r2!, {r0, r1, r4}
 427 0160 13C3     		stmia	r3!, {r0, r1, r4}
 428 0162 13CA     		ldmia	r2!, {r0, r1, r4}
 429 0164 13C3     		stmia	r3!, {r0, r1, r4}
 430 0166 03CA     		ldmia	r2!, {r0, r1}
 431 0168 03C3     		stmia	r3!, {r0, r1}
  73:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
  74:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	if(c > 0xF){
 432              		.loc 1 74 0
 433 016a FB1D     		adds	r3, r7, #7
 434 016c 1B78     		ldrb	r3, [r3]
 435 016e 0F2B     		cmp	r3, #15
 436 0170 03D9     		bls	.L33
  75:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		GPIO_ODR_LOW = 0x00;
 437              		.loc 1 75 0
 438 0172 094B     		ldr	r3, .L36+4
 439 0174 0022     		movs	r2, #0
 440 0176 1A70     		strb	r2, [r3]
  76:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	}else{
  77:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		GPIO_ODR_LOW = result[c];
  78:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	}
  79:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** }
 441              		.loc 1 79 0
 442 0178 08E0     		b	.L35
 443              	.L33:
  77:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	}
 444              		.loc 1 77 0
 445 017a 0749     		ldr	r1, .L36+4
 446 017c FB1D     		adds	r3, r7, #7
 447 017e 1A78     		ldrb	r2, [r3]
 448 0180 0823     		movs	r3, #8
 449 0182 FB18     		adds	r3, r7, r3
 450 0184 5200     		lsls	r2, r2, #1
 451 0186 D35A     		ldrh	r3, [r2, r3]
 452 0188 DBB2     		uxtb	r3, r3
 453 018a 0B70     		strb	r3, [r1]
 454              	.L35:
 455              		.loc 1 79 0
 456 018c C046     		nop
 457 018e BD46     		mov	sp, r7
 458 0190 0BB0     		add	sp, sp, #44
 459              		@ sp needed
 460 0192 90BD     		pop	{r4, r7, pc}
 461              	.L37:
 462              		.align	2
 463              	.L36:
 464 0194 24000000 		.word	.LC1
 465 0198 140C0240 		.word	1073875988
 466              		.cfi_endproc
 467              	.LFE5:
 469              		.align	1
 470              		.global	main
 471              		.syntax unified
 472              		.code	16
 473              		.thumb_func
 474              		.fpu softvfp
 476              	main:
 477              	.LFB6:
  80:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 
  81:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** void main(void){
 478              		.loc 1 81 0
 479              		.cfi_startproc
 480              		@ args = 0, pretend = 0, frame = 0
 481              		@ frame_needed = 1, uses_anonymous_args = 0
 482 019c 80B5     		push	{r7, lr}
 483              		.cfi_def_cfa_offset 8
 484              		.cfi_offset 7, -8
 485              		.cfi_offset 14, -4
 486 019e 00AF     		add	r7, sp, #0
 487              		.cfi_def_cfa_register 7
  82:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	app_init();
 488              		.loc 1 82 0
 489 01a0 FFF7FEFF 		bl	app_init
 490              	.L39:
  83:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 	while(1){
  84:E:/DAT017/CodeLite files/Moplaborationer/keypadNew\startup.c **** 		out7seg(keyboard());
 491              		.loc 1 84 0 discriminator 1
 492 01a4 FFF7FEFF 		bl	keyboard
 493 01a8 0300     		movs	r3, r0
 494 01aa 1800     		movs	r0, r3
 495 01ac FFF7FEFF 		bl	out7seg
 496 01b0 F8E7     		b	.L39
 497              		.cfi_endproc
 498              	.LFE6:
 500              	.Letext0:
