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
  25              		.file 1 "C:/School/DAT017/Labs and exercises/delay_5_3/startup.c"
   1:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** /*
   2:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****  * 	startup.c
   3:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****  *
   4:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****  */
   5:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
   7:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void startup ( void ){
  26              		.loc 1 7 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   8:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** __asm volatile(
  31              		.loc 1 8 0
  32              		.syntax divided
  33              	@ 8 "C:/School/DAT017/Labs and exercises/delay_5_3/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
   9:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  10:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 	" MOV SP,R0\n"
  11:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 	" BL main\n"				/* call main */
  12:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 	"_exit: B .\n"				/* never return */
  13:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 	) ;
  14:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** }
  40              		.loc 1 14 0
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
  15:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  16:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** #define SYSTIK 0xE000E010
  17:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  18:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** #define STK_CTRL *((volatile unsigned int*)SYSTIK)
  19:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** #define STK_LOAD *((volatile unsigned int*)(SYSTIK+0x4))
  20:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** #define STK_VAL *((volatile unsigned int*)(SYSTIK+0x8))
  21:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  22:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** #define COUNT_VAL ((volatile unsigned int)(42))
  23:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  24:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** #define GPIO_D 0x40020C00
  25:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** #define GPIO_MODER *((volatile unsigned int *)GPIO_D)
  26:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** #define PORT_D *((volatile unsigned short *)(GPIO_D+0x14))
  27:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  28:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** #define MILLI_TO_MIKRO 1
  29:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  30:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void app_init(void);
  31:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void delay_250ns(void);
  32:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void delay_mikro(unsigned int);
  33:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void delay_milli(unsigned int);
  34:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  35:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void main(void){
  57              		.loc 1 35 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  36:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     app_init();
  67              		.loc 1 36 0
  68 0004 FFF7FEFF 		bl	app_init
  69              	.L3:
  37:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     while(1){
  38:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****         PORT_D &= 0xFFFFFF00; // Set port D pin 0-7 as low
  70              		.loc 1 38 0 discriminator 1
  71 0008 0D4A     		ldr	r2, .L4
  72 000a 0D4B     		ldr	r3, .L4
  73 000c 1B88     		ldrh	r3, [r3]
  74 000e 9BB2     		uxth	r3, r3
  75 0010 FF21     		movs	r1, #255
  76 0012 8B43     		bics	r3, r1
  77 0014 9BB2     		uxth	r3, r3
  78 0016 1380     		strh	r3, [r2]
  39:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****         delay_milli(500);
  79              		.loc 1 39 0 discriminator 1
  80 0018 FA23     		movs	r3, #250
  81 001a 5B00     		lsls	r3, r3, #1
  82 001c 1800     		movs	r0, r3
  83 001e FFF7FEFF 		bl	delay_milli
  40:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****         PORT_D |= 0xFF; // Set port D pin 0-7 as high
  84              		.loc 1 40 0 discriminator 1
  85 0022 074A     		ldr	r2, .L4
  86 0024 064B     		ldr	r3, .L4
  87 0026 1B88     		ldrh	r3, [r3]
  88 0028 9BB2     		uxth	r3, r3
  89 002a FF21     		movs	r1, #255
  90 002c 0B43     		orrs	r3, r1
  91 002e 9BB2     		uxth	r3, r3
  92 0030 1380     		strh	r3, [r2]
  41:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****         delay_milli(500);
  93              		.loc 1 41 0 discriminator 1
  94 0032 FA23     		movs	r3, #250
  95 0034 5B00     		lsls	r3, r3, #1
  96 0036 1800     		movs	r0, r3
  97 0038 FFF7FEFF 		bl	delay_milli
  38:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****         delay_milli(500);
  98              		.loc 1 38 0 discriminator 1
  99 003c E4E7     		b	.L3
 100              	.L5:
 101 003e C046     		.align	2
 102              	.L4:
 103 0040 140C0240 		.word	1073875988
 104              		.cfi_endproc
 105              	.LFE1:
 107              		.align	1
 108              		.global	delay_250ns
 109              		.syntax unified
 110              		.code	16
 111              		.thumb_func
 112              		.fpu softvfp
 114              	delay_250ns:
 115              	.LFB2:
  42:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     }
  43:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** }
  44:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  45:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void delay_250ns(void){
 116              		.loc 1 45 0
 117              		.cfi_startproc
 118              		@ args = 0, pretend = 0, frame = 0
 119              		@ frame_needed = 1, uses_anonymous_args = 0
 120 0044 80B5     		push	{r7, lr}
 121              		.cfi_def_cfa_offset 8
 122              		.cfi_offset 7, -8
 123              		.cfi_offset 14, -4
 124 0046 00AF     		add	r7, sp, #0
 125              		.cfi_def_cfa_register 7
  46:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     STK_CTRL &= 0xFFFEFFF8;
 126              		.loc 1 46 0
 127 0048 134B     		ldr	r3, .L7
 128 004a 134A     		ldr	r2, .L7
 129 004c 1268     		ldr	r2, [r2]
 130 004e 1349     		ldr	r1, .L7+4
 131 0050 0A40     		ands	r2, r1
 132 0052 1A60     		str	r2, [r3]
  47:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     STK_LOAD &= 0xFF000000;
 133              		.loc 1 47 0
 134 0054 124B     		ldr	r3, .L7+8
 135 0056 124A     		ldr	r2, .L7+8
 136 0058 1268     		ldr	r2, [r2]
 137 005a 120E     		lsrs	r2, r2, #24
 138 005c 1206     		lsls	r2, r2, #24
 139 005e 1A60     		str	r2, [r3]
  48:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     STK_LOAD |= COUNT_VAL;
 140              		.loc 1 48 0
 141 0060 0F4B     		ldr	r3, .L7+8
 142 0062 0F4A     		ldr	r2, .L7+8
 143 0064 1268     		ldr	r2, [r2]
 144 0066 2A21     		movs	r1, #42
 145 0068 0A43     		orrs	r2, r1
 146 006a 1A60     		str	r2, [r3]
  49:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     STK_VAL = 0;
 147              		.loc 1 49 0
 148 006c 0D4B     		ldr	r3, .L7+12
 149 006e 0022     		movs	r2, #0
 150 0070 1A60     		str	r2, [r3]
  50:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     STK_CTRL |= 0x5;
 151              		.loc 1 50 0
 152 0072 094B     		ldr	r3, .L7
 153 0074 084A     		ldr	r2, .L7
 154 0076 1268     		ldr	r2, [r2]
 155 0078 0521     		movs	r1, #5
 156 007a 0A43     		orrs	r2, r1
 157 007c 1A60     		str	r2, [r3]
  51:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     
  52:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     while(STK_CTRL & 0x00010000 == 0);
 158              		.loc 1 52 0
 159 007e C046     		nop
 160 0080 054B     		ldr	r3, .L7
 161 0082 1B68     		ldr	r3, [r3]
  53:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     
  54:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     STK_CTRL &= 0xFFFEFFF8;
 162              		.loc 1 54 0
 163 0084 044B     		ldr	r3, .L7
 164 0086 044A     		ldr	r2, .L7
 165 0088 1268     		ldr	r2, [r2]
 166 008a 0449     		ldr	r1, .L7+4
 167 008c 0A40     		ands	r2, r1
 168 008e 1A60     		str	r2, [r3]
  55:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** }
 169              		.loc 1 55 0
 170 0090 C046     		nop
 171 0092 BD46     		mov	sp, r7
 172              		@ sp needed
 173 0094 80BD     		pop	{r7, pc}
 174              	.L8:
 175 0096 C046     		.align	2
 176              	.L7:
 177 0098 10E000E0 		.word	-536813552
 178 009c F8FFFEFF 		.word	-65544
 179 00a0 14E000E0 		.word	-536813548
 180 00a4 18E000E0 		.word	-536813544
 181              		.cfi_endproc
 182              	.LFE2:
 184              		.align	1
 185              		.global	app_init
 186              		.syntax unified
 187              		.code	16
 188              		.thumb_func
 189              		.fpu softvfp
 191              	app_init:
 192              	.LFB3:
  56:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  57:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void app_init(void){
 193              		.loc 1 57 0
 194              		.cfi_startproc
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 1, uses_anonymous_args = 0
 197 00a8 80B5     		push	{r7, lr}
 198              		.cfi_def_cfa_offset 8
 199              		.cfi_offset 7, -8
 200              		.cfi_offset 14, -4
 201 00aa 00AF     		add	r7, sp, #0
 202              		.cfi_def_cfa_register 7
  58:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     GPIO_MODER &= 0xFFFF0000;
 203              		.loc 1 58 0
 204 00ac 074B     		ldr	r3, .L10
 205 00ae 074A     		ldr	r2, .L10
 206 00b0 1268     		ldr	r2, [r2]
 207 00b2 120C     		lsrs	r2, r2, #16
 208 00b4 1204     		lsls	r2, r2, #16
 209 00b6 1A60     		str	r2, [r3]
  59:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     GPIO_MODER |= 0x00005555;
 210              		.loc 1 59 0
 211 00b8 044B     		ldr	r3, .L10
 212 00ba 044A     		ldr	r2, .L10
 213 00bc 1268     		ldr	r2, [r2]
 214 00be 0449     		ldr	r1, .L10+4
 215 00c0 0A43     		orrs	r2, r1
 216 00c2 1A60     		str	r2, [r3]
  60:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** }
 217              		.loc 1 60 0
 218 00c4 C046     		nop
 219 00c6 BD46     		mov	sp, r7
 220              		@ sp needed
 221 00c8 80BD     		pop	{r7, pc}
 222              	.L11:
 223 00ca C046     		.align	2
 224              	.L10:
 225 00cc 000C0240 		.word	1073875968
 226 00d0 55550000 		.word	21845
 227              		.cfi_endproc
 228              	.LFE3:
 230              		.align	1
 231              		.global	delay_mikro
 232              		.syntax unified
 233              		.code	16
 234              		.thumb_func
 235              		.fpu softvfp
 237              	delay_mikro:
 238              	.LFB4:
  61:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  62:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void delay_mikro(unsigned int us){
 239              		.loc 1 62 0
 240              		.cfi_startproc
 241              		@ args = 0, pretend = 0, frame = 16
 242              		@ frame_needed = 1, uses_anonymous_args = 0
 243 00d4 80B5     		push	{r7, lr}
 244              		.cfi_def_cfa_offset 8
 245              		.cfi_offset 7, -8
 246              		.cfi_offset 14, -4
 247 00d6 84B0     		sub	sp, sp, #16
 248              		.cfi_def_cfa_offset 24
 249 00d8 00AF     		add	r7, sp, #0
 250              		.cfi_def_cfa_register 7
 251 00da 7860     		str	r0, [r7, #4]
 252              	.LBB2:
  63:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     for(int i=0; i < us; i++){
 253              		.loc 1 63 0
 254 00dc 0023     		movs	r3, #0
 255 00de FB60     		str	r3, [r7, #12]
 256 00e0 04E0     		b	.L13
 257              	.L14:
  64:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****         delay_250ns();
 258              		.loc 1 64 0 discriminator 3
 259 00e2 FFF7FEFF 		bl	delay_250ns
  63:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     for(int i=0; i < us; i++){
 260              		.loc 1 63 0 discriminator 3
 261 00e6 FB68     		ldr	r3, [r7, #12]
 262 00e8 0133     		adds	r3, r3, #1
 263 00ea FB60     		str	r3, [r7, #12]
 264              	.L13:
  63:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     for(int i=0; i < us; i++){
 265              		.loc 1 63 0 is_stmt 0 discriminator 1
 266 00ec FA68     		ldr	r2, [r7, #12]
 267 00ee 7B68     		ldr	r3, [r7, #4]
 268 00f0 9A42     		cmp	r2, r3
 269 00f2 F6D3     		bcc	.L14
 270              	.LBE2:
  65:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     }
  66:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** }
 271              		.loc 1 66 0 is_stmt 1
 272 00f4 C046     		nop
 273 00f6 BD46     		mov	sp, r7
 274 00f8 04B0     		add	sp, sp, #16
 275              		@ sp needed
 276 00fa 80BD     		pop	{r7, pc}
 277              		.cfi_endproc
 278              	.LFE4:
 280              		.align	1
 281              		.global	delay_milli
 282              		.syntax unified
 283              		.code	16
 284              		.thumb_func
 285              		.fpu softvfp
 287              	delay_milli:
 288              	.LFB5:
  67:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** 
  68:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** void delay_milli(unsigned int ms){
 289              		.loc 1 68 0
 290              		.cfi_startproc
 291              		@ args = 0, pretend = 0, frame = 8
 292              		@ frame_needed = 1, uses_anonymous_args = 0
 293 00fc 80B5     		push	{r7, lr}
 294              		.cfi_def_cfa_offset 8
 295              		.cfi_offset 7, -8
 296              		.cfi_offset 14, -4
 297 00fe 82B0     		sub	sp, sp, #8
 298              		.cfi_def_cfa_offset 16
 299 0100 00AF     		add	r7, sp, #0
 300              		.cfi_def_cfa_register 7
 301 0102 7860     		str	r0, [r7, #4]
  69:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c ****     delay_mikro(ms*MILLI_TO_MIKRO);
 302              		.loc 1 69 0
 303 0104 7B68     		ldr	r3, [r7, #4]
 304 0106 1800     		movs	r0, r3
 305 0108 FFF7FEFF 		bl	delay_mikro
  70:C:/School/DAT017/Labs and exercises/delay_5_3\startup.c **** }
 306              		.loc 1 70 0
 307 010c C046     		nop
 308 010e BD46     		mov	sp, r7
 309 0110 02B0     		add	sp, sp, #8
 310              		@ sp needed
 311 0112 80BD     		pop	{r7, pc}
 312              		.cfi_endproc
 313              	.LFE5:
 315              	.Letext0:
