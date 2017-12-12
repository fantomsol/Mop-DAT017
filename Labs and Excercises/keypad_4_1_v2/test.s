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
  25              		.file 1 "C:/School/DAT017/Labs and exercises/keypad_4_1_v2/startup.c"
   1:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** /*
   2:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****  * 	startup.c
   3:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****  *
   4:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****  */
   5:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
   7:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** #define GPIO_D 0x40020C00
   8:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
   9:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** #define GPIO_MODER *((volatile unsigned int *)GPIO_D)
  10:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** #define GPIO_OTYPER *((volatile unsigned short *)(GPIO_D+0x4))
  11:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** #define GPIO_PUPDR *((volatile unsigned int *)(GPIO_D+0xC))
  12:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
  13:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** #define PORT_D *((volatile unsigned short *)(GPIO_D+0x14))
  14:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
  15:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** void app_init(void);
  16:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** unsigned char keyboardTest(void);
  17:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
  18:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** unsigned char keys[4][4] = {{'1','2','3','A'},
  19:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****                             {'4','5','6','B'},
  20:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****                             {'7','8','9','C'},
  21:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****                             {'*','0','#','D'}};
  22:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
  23:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** void startup ( void ){
  26              		.loc 1 23 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  24:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** __asm volatile(
  31              		.loc 1 24 0
  32              		.syntax divided
  33              	@ 24 "C:/School/DAT017/Labs and exercises/keypad_4_1_v2/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  25:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  26:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 	" MOV SP,R0\n"
  27:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 	" BL main\n"				/* call main */
  28:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 	"_exit: B .\n"				/* never return */
  29:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 	) ;
  30:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** }
  40              		.loc 1 30 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.global	keys
  48              		.data
  49              		.align	2
  52              	keys:
  53 0000 31       		.byte	49
  54 0001 32       		.byte	50
  55 0002 33       		.byte	51
  56 0003 41       		.byte	65
  57 0004 34       		.byte	52
  58 0005 35       		.byte	53
  59 0006 36       		.byte	54
  60 0007 42       		.byte	66
  61 0008 37       		.byte	55
  62 0009 38       		.byte	56
  63 000a 39       		.byte	57
  64 000b 43       		.byte	67
  65 000c 2A       		.byte	42
  66 000d 30       		.byte	48
  67 000e 23       		.byte	35
  68 000f 44       		.byte	68
  69              		.text
  70              		.align	1
  71              		.global	main
  72              		.syntax unified
  73              		.code	16
  74              		.thumb_func
  75              		.fpu softvfp
  77              	main:
  78              	.LFB1:
  31:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
  32:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** void main(void){
  79              		.loc 1 32 0
  80              		.cfi_startproc
  81              		@ args = 0, pretend = 0, frame = 8
  82              		@ frame_needed = 1, uses_anonymous_args = 0
  83 0000 90B5     		push	{r4, r7, lr}
  84              		.cfi_def_cfa_offset 12
  85              		.cfi_offset 4, -12
  86              		.cfi_offset 7, -8
  87              		.cfi_offset 14, -4
  88 0002 83B0     		sub	sp, sp, #12
  89              		.cfi_def_cfa_offset 24
  90 0004 00AF     		add	r7, sp, #0
  91              		.cfi_def_cfa_register 7
  33:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     app_init();
  92              		.loc 1 33 0
  93 0006 FFF7FEFF 		bl	app_init
  34:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     unsigned char c = ' ';
  94              		.loc 1 34 0
  95 000a FB1D     		adds	r3, r7, #7
  96 000c 2022     		movs	r2, #32
  97 000e 1A70     		strb	r2, [r3]
  98              	.L4:
  35:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     while(1){
  36:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         c = keyboardTest();
  99              		.loc 1 36 0
 100 0010 FC1D     		adds	r4, r7, #7
 101 0012 FFF7FEFF 		bl	keyboardTest
 102 0016 0300     		movs	r3, r0
 103 0018 2370     		strb	r3, [r4]
  37:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         if (c != ' '){
 104              		.loc 1 37 0
 105 001a FB1D     		adds	r3, r7, #7
 106 001c 1B78     		ldrb	r3, [r3]
 107 001e 202B     		cmp	r3, #32
 108 0020 F6D0     		beq	.L4
 109              	.LBB2:
  38:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****             printf(c);
 110              		.loc 1 38 0
 111 0022 FB1D     		adds	r3, r7, #7
 112 0024 1B78     		ldrb	r3, [r3]
 113 0026 1800     		movs	r0, r3
 114 0028 FFF7FEFF 		bl	printf
  39:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****             printf('\n');
 115              		.loc 1 39 0
 116 002c 0A20     		movs	r0, #10
 117 002e FFF7FEFF 		bl	printf
 118              	.LBE2:
  36:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         if (c != ' '){
 119              		.loc 1 36 0
 120 0032 EDE7     		b	.L4
 121              		.cfi_endproc
 122              	.LFE1:
 124              		.align	1
 125              		.global	app_init
 126              		.syntax unified
 127              		.code	16
 128              		.thumb_func
 129              		.fpu softvfp
 131              	app_init:
 132              	.LFB2:
  40:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         }
  41:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     }
  42:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** }
  43:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
  44:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** void app_init(void){
 133              		.loc 1 44 0
 134              		.cfi_startproc
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 1, uses_anonymous_args = 0
 137 0034 80B5     		push	{r7, lr}
 138              		.cfi_def_cfa_offset 8
 139              		.cfi_offset 7, -8
 140              		.cfi_offset 14, -4
 141 0036 00AF     		add	r7, sp, #0
 142              		.cfi_def_cfa_register 7
  45:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     GPIO_MODER &= 0x0000FFFF;
 143              		.loc 1 45 0
 144 0038 164B     		ldr	r3, .L6
 145 003a 164A     		ldr	r2, .L6
 146 003c 1268     		ldr	r2, [r2]
 147 003e 1204     		lsls	r2, r2, #16
 148 0040 120C     		lsrs	r2, r2, #16
 149 0042 1A60     		str	r2, [r3]
  46:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     GPIO_MODER |= 0x55000000;
 150              		.loc 1 46 0
 151 0044 134B     		ldr	r3, .L6
 152 0046 134A     		ldr	r2, .L6
 153 0048 1268     		ldr	r2, [r2]
 154 004a AA21     		movs	r1, #170
 155 004c C905     		lsls	r1, r1, #23
 156 004e 0A43     		orrs	r2, r1
 157 0050 1A60     		str	r2, [r3]
  47:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     
  48:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     GPIO_OTYPER &= 0x00FF;
 158              		.loc 1 48 0
 159 0052 114A     		ldr	r2, .L6+4
 160 0054 104B     		ldr	r3, .L6+4
 161 0056 1B88     		ldrh	r3, [r3]
 162 0058 9BB2     		uxth	r3, r3
 163 005a FF21     		movs	r1, #255
 164 005c 0B40     		ands	r3, r1
 165 005e 9BB2     		uxth	r3, r3
 166 0060 1380     		strh	r3, [r2]
  49:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     GPIO_OTYPER |= 0x0F00;
 167              		.loc 1 49 0
 168 0062 0D49     		ldr	r1, .L6+4
 169 0064 0C4B     		ldr	r3, .L6+4
 170 0066 1B88     		ldrh	r3, [r3]
 171 0068 9BB2     		uxth	r3, r3
 172 006a F022     		movs	r2, #240
 173 006c 1201     		lsls	r2, r2, #4
 174 006e 1343     		orrs	r3, r2
 175 0070 9BB2     		uxth	r3, r3
 176 0072 0B80     		strh	r3, [r1]
  50:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     
  51:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     GPIO_PUPDR &= 0x0000FFFF;
 177              		.loc 1 51 0
 178 0074 094B     		ldr	r3, .L6+8
 179 0076 094A     		ldr	r2, .L6+8
 180 0078 1268     		ldr	r2, [r2]
 181 007a 1204     		lsls	r2, r2, #16
 182 007c 120C     		lsrs	r2, r2, #16
 183 007e 1A60     		str	r2, [r3]
  52:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     GPIO_PUPDR |= 0x00AA0000;
 184              		.loc 1 52 0
 185 0080 064B     		ldr	r3, .L6+8
 186 0082 064A     		ldr	r2, .L6+8
 187 0084 1268     		ldr	r2, [r2]
 188 0086 AA21     		movs	r1, #170
 189 0088 0904     		lsls	r1, r1, #16
 190 008a 0A43     		orrs	r2, r1
 191 008c 1A60     		str	r2, [r3]
  53:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** }
 192              		.loc 1 53 0
 193 008e C046     		nop
 194 0090 BD46     		mov	sp, r7
 195              		@ sp needed
 196 0092 80BD     		pop	{r7, pc}
 197              	.L7:
 198              		.align	2
 199              	.L6:
 200 0094 000C0240 		.word	1073875968
 201 0098 040C0240 		.word	1073875972
 202 009c 0C0C0240 		.word	1073875980
 203              		.cfi_endproc
 204              	.LFE2:
 206              		.align	1
 207              		.global	activateRow
 208              		.syntax unified
 209              		.code	16
 210              		.thumb_func
 211              		.fpu softvfp
 213              	activateRow:
 214              	.LFB3:
  54:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
  55:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** void activateRow(int row){
 215              		.loc 1 55 0
 216              		.cfi_startproc
 217              		@ args = 0, pretend = 0, frame = 16
 218              		@ frame_needed = 1, uses_anonymous_args = 0
 219 00a0 80B5     		push	{r7, lr}
 220              		.cfi_def_cfa_offset 8
 221              		.cfi_offset 7, -8
 222              		.cfi_offset 14, -4
 223 00a2 84B0     		sub	sp, sp, #16
 224              		.cfi_def_cfa_offset 24
 225 00a4 00AF     		add	r7, sp, #0
 226              		.cfi_def_cfa_register 7
 227 00a6 7860     		str	r0, [r7, #4]
  56:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     if(row < 5 && row > 0){
 228              		.loc 1 56 0
 229 00a8 7B68     		ldr	r3, [r7, #4]
 230 00aa 042B     		cmp	r3, #4
 231 00ac 2ADC     		bgt	.L10
 232              		.loc 1 56 0 is_stmt 0 discriminator 1
 233 00ae 7B68     		ldr	r3, [r7, #4]
 234 00b0 002B     		cmp	r3, #0
 235 00b2 27DD     		ble	.L10
 236              	.LBB3:
  57:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         PORT_D &= 0x00FF;
 237              		.loc 1 57 0 is_stmt 1
 238 00b4 154A     		ldr	r2, .L11
 239 00b6 154B     		ldr	r3, .L11
 240 00b8 1B88     		ldrh	r3, [r3]
 241 00ba 9BB2     		uxth	r3, r3
 242 00bc FF21     		movs	r1, #255
 243 00be 0B40     		ands	r3, r1
 244 00c0 9BB2     		uxth	r3, r3
 245 00c2 1380     		strh	r3, [r2]
  58:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         unsigned short i = 1;
 246              		.loc 1 58 0
 247 00c4 0E23     		movs	r3, #14
 248 00c6 FB18     		adds	r3, r7, r3
 249 00c8 0122     		movs	r2, #1
 250 00ca 1A80     		strh	r2, [r3]
  59:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         i = i << 12;
 251              		.loc 1 59 0
 252 00cc 0E23     		movs	r3, #14
 253 00ce FB18     		adds	r3, r7, r3
 254 00d0 0E22     		movs	r2, #14
 255 00d2 BA18     		adds	r2, r7, r2
 256 00d4 1288     		ldrh	r2, [r2]
 257 00d6 1203     		lsls	r2, r2, #12
 258 00d8 1A80     		strh	r2, [r3]
  60:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         i = i << (i-1);
 259              		.loc 1 60 0
 260 00da 0E23     		movs	r3, #14
 261 00dc FB18     		adds	r3, r7, r3
 262 00de 1A88     		ldrh	r2, [r3]
 263 00e0 0E23     		movs	r3, #14
 264 00e2 FB18     		adds	r3, r7, r3
 265 00e4 1B88     		ldrh	r3, [r3]
 266 00e6 013B     		subs	r3, r3, #1
 267 00e8 9A40     		lsls	r2, r2, r3
 268 00ea 0E23     		movs	r3, #14
 269 00ec FB18     		adds	r3, r7, r3
 270 00ee 1A80     		strh	r2, [r3]
  61:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         PORT_D |= i;
 271              		.loc 1 61 0
 272 00f0 0649     		ldr	r1, .L11
 273 00f2 064B     		ldr	r3, .L11
 274 00f4 1B88     		ldrh	r3, [r3]
 275 00f6 9AB2     		uxth	r2, r3
 276 00f8 0E23     		movs	r3, #14
 277 00fa FB18     		adds	r3, r7, r3
 278 00fc 1B88     		ldrh	r3, [r3]
 279 00fe 1343     		orrs	r3, r2
 280 0100 9BB2     		uxth	r3, r3
 281 0102 0B80     		strh	r3, [r1]
 282              	.L10:
 283              	.LBE3:
  62:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     }
  63:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** }
 284              		.loc 1 63 0
 285 0104 C046     		nop
 286 0106 BD46     		mov	sp, r7
 287 0108 04B0     		add	sp, sp, #16
 288              		@ sp needed
 289 010a 80BD     		pop	{r7, pc}
 290              	.L12:
 291              		.align	2
 292              	.L11:
 293 010c 140C0240 		.word	1073875988
 294              		.cfi_endproc
 295              	.LFE3:
 297              		.align	1
 298              		.global	pullColumn
 299              		.syntax unified
 300              		.code	16
 301              		.thumb_func
 302              		.fpu softvfp
 304              	pullColumn:
 305              	.LFB4:
  64:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
  65:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** unsigned short pullColumn(void){
 306              		.loc 1 65 0
 307              		.cfi_startproc
 308              		@ args = 0, pretend = 0, frame = 8
 309              		@ frame_needed = 1, uses_anonymous_args = 0
 310 0110 80B5     		push	{r7, lr}
 311              		.cfi_def_cfa_offset 8
 312              		.cfi_offset 7, -8
 313              		.cfi_offset 14, -4
 314 0112 82B0     		sub	sp, sp, #8
 315              		.cfi_def_cfa_offset 16
 316 0114 00AF     		add	r7, sp, #0
 317              		.cfi_def_cfa_register 7
  66:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     unsigned short val = PORT_D & 0x0F00;
 318              		.loc 1 66 0
 319 0116 154B     		ldr	r3, .L18
 320 0118 1B88     		ldrh	r3, [r3]
 321 011a 99B2     		uxth	r1, r3
 322 011c BB1D     		adds	r3, r7, #6
 323 011e F022     		movs	r2, #240
 324 0120 1201     		lsls	r2, r2, #4
 325 0122 0A40     		ands	r2, r1
 326 0124 1A80     		strh	r2, [r3]
  67:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     val = val >> 8;
 327              		.loc 1 67 0
 328 0126 BB1D     		adds	r3, r7, #6
 329 0128 BA1D     		adds	r2, r7, #6
 330 012a 1288     		ldrh	r2, [r2]
 331 012c 120A     		lsrs	r2, r2, #8
 332 012e 1A80     		strh	r2, [r3]
 333              	.LBB4:
  68:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     for(unsigned short i = 4; i <= 1; i++){
 334              		.loc 1 68 0
 335 0130 3B1D     		adds	r3, r7, #4
 336 0132 0422     		movs	r2, #4
 337 0134 1A80     		strh	r2, [r3]
 338 0136 10E0     		b	.L14
 339              	.L17:
  69:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         if(val == 1){
 340              		.loc 1 69 0
 341 0138 BB1D     		adds	r3, r7, #6
 342 013a 1B88     		ldrh	r3, [r3]
 343 013c 012B     		cmp	r3, #1
 344 013e 02D1     		bne	.L15
  70:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****             return i;
 345              		.loc 1 70 0
 346 0140 3B1D     		adds	r3, r7, #4
 347 0142 1B88     		ldrh	r3, [r3]
 348 0144 0EE0     		b	.L16
 349              	.L15:
  71:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         }
  72:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         val = val >> 1;
 350              		.loc 1 72 0 discriminator 2
 351 0146 BB1D     		adds	r3, r7, #6
 352 0148 BA1D     		adds	r2, r7, #6
 353 014a 1288     		ldrh	r2, [r2]
 354 014c 5208     		lsrs	r2, r2, #1
 355 014e 1A80     		strh	r2, [r3]
  68:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         if(val == 1){
 356              		.loc 1 68 0 discriminator 2
 357 0150 3B1D     		adds	r3, r7, #4
 358 0152 1A88     		ldrh	r2, [r3]
 359 0154 3B1D     		adds	r3, r7, #4
 360 0156 0132     		adds	r2, r2, #1
 361 0158 1A80     		strh	r2, [r3]
 362              	.L14:
  68:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         if(val == 1){
 363              		.loc 1 68 0 is_stmt 0 discriminator 1
 364 015a 3B1D     		adds	r3, r7, #4
 365 015c 1B88     		ldrh	r3, [r3]
 366 015e 012B     		cmp	r3, #1
 367 0160 EAD9     		bls	.L17
 368              	.LBE4:
  73:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     }
  74:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     return 0;
 369              		.loc 1 74 0 is_stmt 1
 370 0162 0023     		movs	r3, #0
 371              	.L16:
  75:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** }
 372              		.loc 1 75 0
 373 0164 1800     		movs	r0, r3
 374 0166 BD46     		mov	sp, r7
 375 0168 02B0     		add	sp, sp, #8
 376              		@ sp needed
 377 016a 80BD     		pop	{r7, pc}
 378              	.L19:
 379              		.align	2
 380              	.L18:
 381 016c 140C0240 		.word	1073875988
 382              		.cfi_endproc
 383              	.LFE4:
 385              		.align	1
 386              		.global	keyboardTest
 387              		.syntax unified
 388              		.code	16
 389              		.thumb_func
 390              		.fpu softvfp
 392              	keyboardTest:
 393              	.LFB5:
  76:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** 
  77:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** unsigned char keyboardTest(void){
 394              		.loc 1 77 0
 395              		.cfi_startproc
 396              		@ args = 0, pretend = 0, frame = 8
 397              		@ frame_needed = 1, uses_anonymous_args = 0
 398 0170 90B5     		push	{r4, r7, lr}
 399              		.cfi_def_cfa_offset 12
 400              		.cfi_offset 4, -12
 401              		.cfi_offset 7, -8
 402              		.cfi_offset 14, -4
 403 0172 83B0     		sub	sp, sp, #12
 404              		.cfi_def_cfa_offset 24
 405 0174 00AF     		add	r7, sp, #0
 406              		.cfi_def_cfa_register 7
 407              	.LBB5:
  78:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     unsigned short row;
  79:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     unsigned short column;
  80:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     for(int i = 1; i <= 4; i++){
 408              		.loc 1 80 0
 409 0176 0123     		movs	r3, #1
 410 0178 7B60     		str	r3, [r7, #4]
 411 017a 1DE0     		b	.L21
 412              	.L24:
  81:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         activateRow(i);
 413              		.loc 1 81 0
 414 017c 7B68     		ldr	r3, [r7, #4]
 415 017e 1800     		movs	r0, r3
 416 0180 FFF7FEFF 		bl	activateRow
  82:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         column = pullColumn();
 417              		.loc 1 82 0
 418 0184 BC1C     		adds	r4, r7, #2
 419 0186 FFF7FEFF 		bl	pullColumn
 420 018a 0300     		movs	r3, r0
 421 018c 2380     		strh	r3, [r4]
  83:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         if(column != 0){
 422              		.loc 1 83 0
 423 018e BB1C     		adds	r3, r7, #2
 424 0190 1B88     		ldrh	r3, [r3]
 425 0192 002B     		cmp	r3, #0
 426 0194 0DD0     		beq	.L22
  84:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****             row = i;
 427              		.loc 1 84 0
 428 0196 3B00     		movs	r3, r7
 429 0198 7A68     		ldr	r2, [r7, #4]
 430 019a 1A80     		strh	r2, [r3]
  85:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****             return keys[row-1][column-1];
 431              		.loc 1 85 0
 432 019c 3B00     		movs	r3, r7
 433 019e 1B88     		ldrh	r3, [r3]
 434 01a0 5A1E     		subs	r2, r3, #1
 435 01a2 BB1C     		adds	r3, r7, #2
 436 01a4 1B88     		ldrh	r3, [r3]
 437 01a6 013B     		subs	r3, r3, #1
 438 01a8 0749     		ldr	r1, .L25
 439 01aa 9200     		lsls	r2, r2, #2
 440 01ac 8A18     		adds	r2, r1, r2
 441 01ae D35C     		ldrb	r3, [r2, r3]
 442 01b0 06E0     		b	.L23
 443              	.L22:
  80:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         activateRow(i);
 444              		.loc 1 80 0 discriminator 2
 445 01b2 7B68     		ldr	r3, [r7, #4]
 446 01b4 0133     		adds	r3, r3, #1
 447 01b6 7B60     		str	r3, [r7, #4]
 448              	.L21:
  80:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         activateRow(i);
 449              		.loc 1 80 0 is_stmt 0 discriminator 1
 450 01b8 7B68     		ldr	r3, [r7, #4]
 451 01ba 042B     		cmp	r3, #4
 452 01bc DEDD     		ble	.L24
 453              	.LBE5:
  86:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****         }
  87:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     }
  88:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c ****     return ' ';
 454              		.loc 1 88 0 is_stmt 1
 455 01be 2023     		movs	r3, #32
 456              	.L23:
  89:C:/School/DAT017/Labs and exercises/keypad_4_1_v2\startup.c **** }
 457              		.loc 1 89 0
 458 01c0 1800     		movs	r0, r3
 459 01c2 BD46     		mov	sp, r7
 460 01c4 03B0     		add	sp, sp, #12
 461              		@ sp needed
 462 01c6 90BD     		pop	{r4, r7, pc}
 463              	.L26:
 464              		.align	2
 465              	.L25:
 466 01c8 00000000 		.word	keys
 467              		.cfi_endproc
 468              	.LFE5:
 470              	.Letext0:
 471              		.file 2 "<built-in>"
