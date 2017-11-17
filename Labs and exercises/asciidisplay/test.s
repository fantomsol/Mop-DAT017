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
  25              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay/startup.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** /*
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****  * 	startup.c
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****  *
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****  */
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void startup ( void ){
  26              		.loc 1 7 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** __asm volatile(
  31              		.loc 1 8 0
  32              		.syntax divided
  33              	@ 8 "C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 	" MOV SP,R0\n"
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 	" BL main\n"				/* call main */
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 	"_exit: B .\n"				/* never return */
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 	) ;
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
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
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define SYSTIK 0xE000E010
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define STK_CTRL *((volatile unsigned int*)SYSTIK)
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define STK_LOAD *((volatile unsigned int*)(SYSTIK+0x4))
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define STK_VAL *((volatile unsigned int*)(SYSTIK+0x8))
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define COUNT_VAL ((unsigned int)(42))
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define MILLI_TO_MIKRO 1
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define PORT_E 0x40021000
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portModer *((unsigned int*)PORT_E)
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portOTyper *((unsigned int*)(PORT_E+0x4))
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portOSpeedr *((unsigned int*)(PORT_E+0x8))
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portPupdr *((unsigned int*)(PORT_E+0xC))
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portIdrLow *((unsigned char*)(PORT_E+0x10))
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portIdrHigh *((unsigned char*)(PORT_E+0x11))
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portOdrLow *((unsigned char*)(PORT_E+0x14))
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portOdrHigh *((unsigned char*)(PORT_E+0x15))
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define B_E (unsigned char)0x40
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define B_SELECT (unsigned char)0x4
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define B_RW (unsigned char)0x2
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define B_RS (unsigned char)0x1
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void app_init(void);
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_250ns(void);
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_mikro(unsigned int);
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_milli(unsigned int);
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_set(unsigned char);
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_clear(unsigned char);
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_cmd(unsigned char);
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_data(unsigned char);
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_status(void);
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_data(void);
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_controller(unsigned char);
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_controller(void);
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_command(unsigned char, unsigned int, unsigned short);
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_char(unsigned char);
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void gotoxy(unsigned int, unsigned int);
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void main(void){
  57              		.loc 1 58 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     app_init();
  67              		.loc 1 59 0
  68 0004 FFF7FEFF 		bl	app_init
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
  69              		.loc 1 60 0
  70 0008 C046     		nop
  71 000a BD46     		mov	sp, r7
  72              		@ sp needed
  73 000c 80BD     		pop	{r7, pc}
  74              		.cfi_endproc
  75              	.LFE1:
  77              		.align	1
  78              		.global	app_init
  79              		.syntax unified
  80              		.code	16
  81              		.thumb_func
  82              		.fpu softvfp
  84              	app_init:
  85              	.LFB2:
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void app_init(void){
  86              		.loc 1 62 0
  87              		.cfi_startproc
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 1, uses_anonymous_args = 0
  90 000e 80B5     		push	{r7, lr}
  91              		.cfi_def_cfa_offset 8
  92              		.cfi_offset 7, -8
  93              		.cfi_offset 14, -4
  94 0010 00AF     		add	r7, sp, #0
  95              		.cfi_def_cfa_register 7
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E -> output
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer = 0x55555555;
  96              		.loc 1 64 0
  97 0012 0F4B     		ldr	r3, .L4
  98 0014 0F4A     		ldr	r2, .L4+4
  99 0016 1A60     		str	r2, [r3]
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // ***DISPLAY INIT***
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Clear screen
  68:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x1, 2, 0);
 100              		.loc 1 68 0
 101 0018 0022     		movs	r2, #0
 102 001a 0221     		movs	r1, #2
 103 001c 0120     		movs	r0, #1
 104 001e FFF7FEFF 		bl	ascii_command
  69:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set address register to 0, reset cursor
  70:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x2, 2, 0);
 105              		.loc 1 70 0
 106 0022 0022     		movs	r2, #0
 107 0024 0221     		movs	r1, #2
 108 0026 0220     		movs	r0, #2
 109 0028 FFF7FEFF 		bl	ascii_command
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // 2 rows, characters are 5x8 dots
  72:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x38, 39, 1);
 110              		.loc 1 72 0
 111 002c 0122     		movs	r2, #1
 112 002e 2721     		movs	r1, #39
 113 0030 3820     		movs	r0, #56
 114 0032 FFF7FEFF 		bl	ascii_command
  73:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Turn on display, turn on cursor, cursor not blinking
  74:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0xE, 39, 1);
 115              		.loc 1 74 0
 116 0036 0122     		movs	r2, #1
 117 0038 2721     		movs	r1, #39
 118 003a 0E20     		movs	r0, #14
 119 003c FFF7FEFF 		bl	ascii_command
  75:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Increment mode, no shift
  76:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x7, 39, 1);
 120              		.loc 1 76 0
 121 0040 0122     		movs	r2, #1
 122 0042 2721     		movs	r1, #39
 123 0044 0720     		movs	r0, #7
 124 0046 FFF7FEFF 		bl	ascii_command
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 125              		.loc 1 77 0
 126 004a C046     		nop
 127 004c BD46     		mov	sp, r7
 128              		@ sp needed
 129 004e 80BD     		pop	{r7, pc}
 130              	.L5:
 131              		.align	2
 132              	.L4:
 133 0050 00100240 		.word	1073876992
 134 0054 55555555 		.word	1431655765
 135              		.cfi_endproc
 136              	.LFE2:
 138              		.align	1
 139              		.global	delay_250ns
 140              		.syntax unified
 141              		.code	16
 142              		.thumb_func
 143              		.fpu softvfp
 145              	delay_250ns:
 146              	.LFB3:
  78:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_250ns(void){
 147              		.loc 1 79 0
 148              		.cfi_startproc
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 1, uses_anonymous_args = 0
 151 0058 80B5     		push	{r7, lr}
 152              		.cfi_def_cfa_offset 8
 153              		.cfi_offset 7, -8
 154              		.cfi_offset 14, -4
 155 005a 00AF     		add	r7, sp, #0
 156              		.cfi_def_cfa_register 7
  80:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_CTRL &= 0xFFFEFFF8;
 157              		.loc 1 80 0
 158 005c 134B     		ldr	r3, .L7
 159 005e 134A     		ldr	r2, .L7
 160 0060 1268     		ldr	r2, [r2]
 161 0062 1349     		ldr	r1, .L7+4
 162 0064 0A40     		ands	r2, r1
 163 0066 1A60     		str	r2, [r3]
  81:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_LOAD &= 0xFF000000;
 164              		.loc 1 81 0
 165 0068 124B     		ldr	r3, .L7+8
 166 006a 124A     		ldr	r2, .L7+8
 167 006c 1268     		ldr	r2, [r2]
 168 006e 120E     		lsrs	r2, r2, #24
 169 0070 1206     		lsls	r2, r2, #24
 170 0072 1A60     		str	r2, [r3]
  82:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_LOAD |= COUNT_VAL-1;
 171              		.loc 1 82 0
 172 0074 0F4B     		ldr	r3, .L7+8
 173 0076 0F4A     		ldr	r2, .L7+8
 174 0078 1268     		ldr	r2, [r2]
 175 007a 2921     		movs	r1, #41
 176 007c 0A43     		orrs	r2, r1
 177 007e 1A60     		str	r2, [r3]
  83:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_VAL = 0;
 178              		.loc 1 83 0
 179 0080 0D4B     		ldr	r3, .L7+12
 180 0082 0022     		movs	r2, #0
 181 0084 1A60     		str	r2, [r3]
  84:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_CTRL |= 0x5;
 182              		.loc 1 84 0
 183 0086 094B     		ldr	r3, .L7
 184 0088 084A     		ldr	r2, .L7
 185 008a 1268     		ldr	r2, [r2]
 186 008c 0521     		movs	r1, #5
 187 008e 0A43     		orrs	r2, r1
 188 0090 1A60     		str	r2, [r3]
  85:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  86:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(STK_CTRL & 0x00010000 == 0);
 189              		.loc 1 86 0
 190 0092 C046     		nop
 191 0094 054B     		ldr	r3, .L7
 192 0096 1B68     		ldr	r3, [r3]
  87:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  88:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_CTRL &= 0xFFFEFFF8;
 193              		.loc 1 88 0
 194 0098 044B     		ldr	r3, .L7
 195 009a 044A     		ldr	r2, .L7
 196 009c 1268     		ldr	r2, [r2]
 197 009e 0449     		ldr	r1, .L7+4
 198 00a0 0A40     		ands	r2, r1
 199 00a2 1A60     		str	r2, [r3]
  89:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 200              		.loc 1 89 0
 201 00a4 C046     		nop
 202 00a6 BD46     		mov	sp, r7
 203              		@ sp needed
 204 00a8 80BD     		pop	{r7, pc}
 205              	.L8:
 206 00aa C046     		.align	2
 207              	.L7:
 208 00ac 10E000E0 		.word	-536813552
 209 00b0 F8FFFEFF 		.word	-65544
 210 00b4 14E000E0 		.word	-536813548
 211 00b8 18E000E0 		.word	-536813544
 212              		.cfi_endproc
 213              	.LFE3:
 215              		.align	1
 216              		.global	delay_mikro
 217              		.syntax unified
 218              		.code	16
 219              		.thumb_func
 220              		.fpu softvfp
 222              	delay_mikro:
 223              	.LFB4:
  90:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  91:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_mikro(unsigned int us){
 224              		.loc 1 91 0
 225              		.cfi_startproc
 226              		@ args = 0, pretend = 0, frame = 16
 227              		@ frame_needed = 1, uses_anonymous_args = 0
 228 00bc 80B5     		push	{r7, lr}
 229              		.cfi_def_cfa_offset 8
 230              		.cfi_offset 7, -8
 231              		.cfi_offset 14, -4
 232 00be 84B0     		sub	sp, sp, #16
 233              		.cfi_def_cfa_offset 24
 234 00c0 00AF     		add	r7, sp, #0
 235              		.cfi_def_cfa_register 7
 236 00c2 7860     		str	r0, [r7, #4]
 237              	.LBB2:
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     for(int i=0; i < us*4; i++){
 238              		.loc 1 92 0
 239 00c4 0023     		movs	r3, #0
 240 00c6 FB60     		str	r3, [r7, #12]
 241 00c8 04E0     		b	.L10
 242              	.L11:
  93:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_250ns();
 243              		.loc 1 93 0 discriminator 3
 244 00ca FFF7FEFF 		bl	delay_250ns
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     for(int i=0; i < us*4; i++){
 245              		.loc 1 92 0 discriminator 3
 246 00ce FB68     		ldr	r3, [r7, #12]
 247 00d0 0133     		adds	r3, r3, #1
 248 00d2 FB60     		str	r3, [r7, #12]
 249              	.L10:
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     for(int i=0; i < us*4; i++){
 250              		.loc 1 92 0 is_stmt 0 discriminator 1
 251 00d4 7B68     		ldr	r3, [r7, #4]
 252 00d6 9A00     		lsls	r2, r3, #2
 253 00d8 FB68     		ldr	r3, [r7, #12]
 254 00da 9A42     		cmp	r2, r3
 255 00dc F5D8     		bhi	.L11
 256              	.LBE2:
  94:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
  95:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 257              		.loc 1 95 0 is_stmt 1
 258 00de C046     		nop
 259 00e0 BD46     		mov	sp, r7
 260 00e2 04B0     		add	sp, sp, #16
 261              		@ sp needed
 262 00e4 80BD     		pop	{r7, pc}
 263              		.cfi_endproc
 264              	.LFE4:
 266              		.align	1
 267              		.global	delay_milli
 268              		.syntax unified
 269              		.code	16
 270              		.thumb_func
 271              		.fpu softvfp
 273              	delay_milli:
 274              	.LFB5:
  96:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  97:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_milli(unsigned int ms){
 275              		.loc 1 97 0
 276              		.cfi_startproc
 277              		@ args = 0, pretend = 0, frame = 8
 278              		@ frame_needed = 1, uses_anonymous_args = 0
 279 00e6 80B5     		push	{r7, lr}
 280              		.cfi_def_cfa_offset 8
 281              		.cfi_offset 7, -8
 282              		.cfi_offset 14, -4
 283 00e8 82B0     		sub	sp, sp, #8
 284              		.cfi_def_cfa_offset 16
 285 00ea 00AF     		add	r7, sp, #0
 286              		.cfi_def_cfa_register 7
 287 00ec 7860     		str	r0, [r7, #4]
  98:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(ms*MILLI_TO_MIKRO);
 288              		.loc 1 98 0
 289 00ee 7B68     		ldr	r3, [r7, #4]
 290 00f0 1800     		movs	r0, r3
 291 00f2 FFF7FEFF 		bl	delay_mikro
  99:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 292              		.loc 1 99 0
 293 00f6 C046     		nop
 294 00f8 BD46     		mov	sp, r7
 295 00fa 02B0     		add	sp, sp, #8
 296              		@ sp needed
 297 00fc 80BD     		pop	{r7, pc}
 298              		.cfi_endproc
 299              	.LFE5:
 301              		.align	1
 302              		.global	ascii_ctrl_bit_set
 303              		.syntax unified
 304              		.code	16
 305              		.thumb_func
 306              		.fpu softvfp
 308              	ascii_ctrl_bit_set:
 309              	.LFB6:
 100:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 101:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_set(unsigned char x){
 310              		.loc 1 101 0
 311              		.cfi_startproc
 312              		@ args = 0, pretend = 0, frame = 8
 313              		@ frame_needed = 1, uses_anonymous_args = 0
 314 00fe 80B5     		push	{r7, lr}
 315              		.cfi_def_cfa_offset 8
 316              		.cfi_offset 7, -8
 317              		.cfi_offset 14, -4
 318 0100 82B0     		sub	sp, sp, #8
 319              		.cfi_def_cfa_offset 16
 320 0102 00AF     		add	r7, sp, #0
 321              		.cfi_def_cfa_register 7
 322 0104 0200     		movs	r2, r0
 323 0106 FB1D     		adds	r3, r7, #7
 324 0108 1A70     		strb	r2, [r3]
 102:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set bits that are 1 in x to 1, leave rest be
 103:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrLow |= x;
 325              		.loc 1 103 0
 326 010a 0649     		ldr	r1, .L14
 327 010c 054B     		ldr	r3, .L14
 328 010e 1A78     		ldrb	r2, [r3]
 329 0110 FB1D     		adds	r3, r7, #7
 330 0112 1B78     		ldrb	r3, [r3]
 331 0114 1343     		orrs	r3, r2
 332 0116 DBB2     		uxtb	r3, r3
 333 0118 0B70     		strb	r3, [r1]
 104:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 334              		.loc 1 104 0
 335 011a C046     		nop
 336 011c BD46     		mov	sp, r7
 337 011e 02B0     		add	sp, sp, #8
 338              		@ sp needed
 339 0120 80BD     		pop	{r7, pc}
 340              	.L15:
 341 0122 C046     		.align	2
 342              	.L14:
 343 0124 14100240 		.word	1073877012
 344              		.cfi_endproc
 345              	.LFE6:
 347              		.align	1
 348              		.global	ascii_ctrl_bit_clear
 349              		.syntax unified
 350              		.code	16
 351              		.thumb_func
 352              		.fpu softvfp
 354              	ascii_ctrl_bit_clear:
 355              	.LFB7:
 105:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 106:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_clear(unsigned char x){
 356              		.loc 1 106 0
 357              		.cfi_startproc
 358              		@ args = 0, pretend = 0, frame = 8
 359              		@ frame_needed = 1, uses_anonymous_args = 0
 360 0128 80B5     		push	{r7, lr}
 361              		.cfi_def_cfa_offset 8
 362              		.cfi_offset 7, -8
 363              		.cfi_offset 14, -4
 364 012a 82B0     		sub	sp, sp, #8
 365              		.cfi_def_cfa_offset 16
 366 012c 00AF     		add	r7, sp, #0
 367              		.cfi_def_cfa_register 7
 368 012e 0200     		movs	r2, r0
 369 0130 FB1D     		adds	r3, r7, #7
 370 0132 1A70     		strb	r2, [r3]
 107:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set any bits that are 0 in x to 0, leave rest as they were
 108:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrLow &= x;
 371              		.loc 1 108 0
 372 0134 0549     		ldr	r1, .L17
 373 0136 054B     		ldr	r3, .L17
 374 0138 1B78     		ldrb	r3, [r3]
 375 013a FA1D     		adds	r2, r7, #7
 376 013c 1278     		ldrb	r2, [r2]
 377 013e 1340     		ands	r3, r2
 378 0140 DBB2     		uxtb	r3, r3
 379 0142 0B70     		strb	r3, [r1]
 109:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 380              		.loc 1 109 0
 381 0144 C046     		nop
 382 0146 BD46     		mov	sp, r7
 383 0148 02B0     		add	sp, sp, #8
 384              		@ sp needed
 385 014a 80BD     		pop	{r7, pc}
 386              	.L18:
 387              		.align	2
 388              	.L17:
 389 014c 14100240 		.word	1073877012
 390              		.cfi_endproc
 391              	.LFE7:
 393              		.align	1
 394              		.global	ascii_write_cmd
 395              		.syntax unified
 396              		.code	16
 397              		.thumb_func
 398              		.fpu softvfp
 400              	ascii_write_cmd:
 401              	.LFB8:
 110:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 111:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_cmd(unsigned char command){
 402              		.loc 1 111 0
 403              		.cfi_startproc
 404              		@ args = 0, pretend = 0, frame = 8
 405              		@ frame_needed = 1, uses_anonymous_args = 0
 406 0150 80B5     		push	{r7, lr}
 407              		.cfi_def_cfa_offset 8
 408              		.cfi_offset 7, -8
 409              		.cfi_offset 14, -4
 410 0152 82B0     		sub	sp, sp, #8
 411              		.cfi_def_cfa_offset 16
 412 0154 00AF     		add	r7, sp, #0
 413              		.cfi_def_cfa_register 7
 414 0156 0200     		movs	r2, r0
 415 0158 FB1D     		adds	r3, r7, #7
 416 015a 1A70     		strb	r2, [r3]
 112:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for sending command
 113:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS | B_RW);
 417              		.loc 1 113 0
 418 015c 0320     		movs	r0, #3
 419 015e FFF7FEFF 		bl	ascii_ctrl_bit_clear
 114:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 115:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write command
 116:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_controller(command);
 420              		.loc 1 116 0
 421 0162 FB1D     		adds	r3, r7, #7
 422 0164 1B78     		ldrb	r3, [r3]
 423 0166 1800     		movs	r0, r3
 424 0168 FFF7FEFF 		bl	ascii_write_controller
 117:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 425              		.loc 1 117 0
 426 016c C046     		nop
 427 016e BD46     		mov	sp, r7
 428 0170 02B0     		add	sp, sp, #8
 429              		@ sp needed
 430 0172 80BD     		pop	{r7, pc}
 431              		.cfi_endproc
 432              	.LFE8:
 434              		.align	1
 435              		.global	ascii_write_data
 436              		.syntax unified
 437              		.code	16
 438              		.thumb_func
 439              		.fpu softvfp
 441              	ascii_write_data:
 442              	.LFB9:
 118:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 119:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_data(unsigned char data){
 443              		.loc 1 119 0
 444              		.cfi_startproc
 445              		@ args = 0, pretend = 0, frame = 8
 446              		@ frame_needed = 1, uses_anonymous_args = 0
 447 0174 80B5     		push	{r7, lr}
 448              		.cfi_def_cfa_offset 8
 449              		.cfi_offset 7, -8
 450              		.cfi_offset 14, -4
 451 0176 82B0     		sub	sp, sp, #8
 452              		.cfi_def_cfa_offset 16
 453 0178 00AF     		add	r7, sp, #0
 454              		.cfi_def_cfa_register 7
 455 017a 0200     		movs	r2, r0
 456 017c FB1D     		adds	r3, r7, #7
 457 017e 1A70     		strb	r2, [r3]
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for writing data
 121:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RS);
 458              		.loc 1 121 0
 459 0180 0120     		movs	r0, #1
 460 0182 FFF7FEFF 		bl	ascii_ctrl_bit_set
 122:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RW);
 461              		.loc 1 122 0
 462 0186 0220     		movs	r0, #2
 463 0188 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 123:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 124:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write data
 125:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_controller(data);
 464              		.loc 1 125 0
 465 018c FB1D     		adds	r3, r7, #7
 466 018e 1B78     		ldrb	r3, [r3]
 467 0190 1800     		movs	r0, r3
 468 0192 FFF7FEFF 		bl	ascii_write_controller
 126:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 469              		.loc 1 126 0
 470 0196 C046     		nop
 471 0198 BD46     		mov	sp, r7
 472 019a 02B0     		add	sp, sp, #8
 473              		@ sp needed
 474 019c 80BD     		pop	{r7, pc}
 475              		.cfi_endproc
 476              	.LFE9:
 478              		.align	1
 479              		.global	ascii_read_data
 480              		.syntax unified
 481              		.code	16
 482              		.thumb_func
 483              		.fpu softvfp
 485              	ascii_read_data:
 486              	.LFB10:
 127:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 128:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_data(void){
 487              		.loc 1 128 0
 488              		.cfi_startproc
 489              		@ args = 0, pretend = 0, frame = 8
 490              		@ frame_needed = 1, uses_anonymous_args = 0
 491 019e 90B5     		push	{r4, r7, lr}
 492              		.cfi_def_cfa_offset 12
 493              		.cfi_offset 4, -12
 494              		.cfi_offset 7, -8
 495              		.cfi_offset 14, -4
 496 01a0 83B0     		sub	sp, sp, #12
 497              		.cfi_def_cfa_offset 24
 498 01a2 00AF     		add	r7, sp, #0
 499              		.cfi_def_cfa_register 7
 129:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 130:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> input
 131:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer &= 0x0000FFFF;
 500              		.loc 1 131 0
 501 01a4 0C4B     		ldr	r3, .L23
 502 01a6 0C4A     		ldr	r2, .L23
 503 01a8 1268     		ldr	r2, [r2]
 504 01aa 1204     		lsls	r2, r2, #16
 505 01ac 120C     		lsrs	r2, r2, #16
 506 01ae 1A60     		str	r2, [r3]
 132:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 133:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for reading data
 134:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RS | B_RW);
 507              		.loc 1 134 0
 508 01b0 0320     		movs	r0, #3
 509 01b2 FFF7FEFF 		bl	ascii_ctrl_bit_set
 135:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 136:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = ascii_read_controller();
 510              		.loc 1 136 0
 511 01b6 FC1D     		adds	r4, r7, #7
 512 01b8 FFF7FEFF 		bl	ascii_read_controller
 513 01bc 0300     		movs	r3, r0
 514 01be 2370     		strb	r3, [r4]
 137:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 138:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> output
 139:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer |= 0x55550000;
 515              		.loc 1 139 0
 516 01c0 054B     		ldr	r3, .L23
 517 01c2 054A     		ldr	r2, .L23
 518 01c4 1268     		ldr	r2, [r2]
 519 01c6 0549     		ldr	r1, .L23+4
 520 01c8 0A43     		orrs	r2, r1
 521 01ca 1A60     		str	r2, [r3]
 140:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 141:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 522              		.loc 1 141 0
 523 01cc FB1D     		adds	r3, r7, #7
 524 01ce 1B78     		ldrb	r3, [r3]
 142:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 525              		.loc 1 142 0
 526 01d0 1800     		movs	r0, r3
 527 01d2 BD46     		mov	sp, r7
 528 01d4 03B0     		add	sp, sp, #12
 529              		@ sp needed
 530 01d6 90BD     		pop	{r4, r7, pc}
 531              	.L24:
 532              		.align	2
 533              	.L23:
 534 01d8 00100240 		.word	1073876992
 535 01dc 00005555 		.word	1431633920
 536              		.cfi_endproc
 537              	.LFE10:
 539              		.align	1
 540              		.global	ascii_read_status
 541              		.syntax unified
 542              		.code	16
 543              		.thumb_func
 544              		.fpu softvfp
 546              	ascii_read_status:
 547              	.LFB11:
 143:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 144:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_status(void){
 548              		.loc 1 144 0
 549              		.cfi_startproc
 550              		@ args = 0, pretend = 0, frame = 8
 551              		@ frame_needed = 1, uses_anonymous_args = 0
 552 01e0 90B5     		push	{r4, r7, lr}
 553              		.cfi_def_cfa_offset 12
 554              		.cfi_offset 4, -12
 555              		.cfi_offset 7, -8
 556              		.cfi_offset 14, -4
 557 01e2 83B0     		sub	sp, sp, #12
 558              		.cfi_def_cfa_offset 24
 559 01e4 00AF     		add	r7, sp, #0
 560              		.cfi_def_cfa_register 7
 145:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 146:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> input
 147:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer &= 0x0000FFFF;
 561              		.loc 1 147 0
 562 01e6 0E4B     		ldr	r3, .L27
 563 01e8 0D4A     		ldr	r2, .L27
 564 01ea 1268     		ldr	r2, [r2]
 565 01ec 1204     		lsls	r2, r2, #16
 566 01ee 120C     		lsrs	r2, r2, #16
 567 01f0 1A60     		str	r2, [r3]
 148:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 149:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for reading status and address
 150:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 568              		.loc 1 150 0
 569 01f2 0120     		movs	r0, #1
 570 01f4 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 151:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 571              		.loc 1 151 0
 572 01f8 0220     		movs	r0, #2
 573 01fa FFF7FEFF 		bl	ascii_ctrl_bit_set
 152:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 153:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Read values from display
 154:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = ascii_read_controller();
 574              		.loc 1 154 0
 575 01fe FC1D     		adds	r4, r7, #7
 576 0200 FFF7FEFF 		bl	ascii_read_controller
 577 0204 0300     		movs	r3, r0
 578 0206 2370     		strb	r3, [r4]
 155:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 156:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> output
 157:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer |= 0x55550000;
 579              		.loc 1 157 0
 580 0208 054B     		ldr	r3, .L27
 581 020a 054A     		ldr	r2, .L27
 582 020c 1268     		ldr	r2, [r2]
 583 020e 0549     		ldr	r1, .L27+4
 584 0210 0A43     		orrs	r2, r1
 585 0212 1A60     		str	r2, [r3]
 158:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 159:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 586              		.loc 1 159 0
 587 0214 FB1D     		adds	r3, r7, #7
 588 0216 1B78     		ldrb	r3, [r3]
 160:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 589              		.loc 1 160 0
 590 0218 1800     		movs	r0, r3
 591 021a BD46     		mov	sp, r7
 592 021c 03B0     		add	sp, sp, #12
 593              		@ sp needed
 594 021e 90BD     		pop	{r4, r7, pc}
 595              	.L28:
 596              		.align	2
 597              	.L27:
 598 0220 00100240 		.word	1073876992
 599 0224 00005555 		.word	1431633920
 600              		.cfi_endproc
 601              	.LFE11:
 603              		.align	1
 604              		.global	ascii_write_controller
 605              		.syntax unified
 606              		.code	16
 607              		.thumb_func
 608              		.fpu softvfp
 610              	ascii_write_controller:
 611              	.LFB12:
 161:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 162:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_controller(unsigned char byte){
 612              		.loc 1 162 0
 613              		.cfi_startproc
 614              		@ args = 0, pretend = 0, frame = 8
 615              		@ frame_needed = 1, uses_anonymous_args = 0
 616 0228 80B5     		push	{r7, lr}
 617              		.cfi_def_cfa_offset 8
 618              		.cfi_offset 7, -8
 619              		.cfi_offset 14, -4
 620 022a 82B0     		sub	sp, sp, #8
 621              		.cfi_def_cfa_offset 16
 622 022c 00AF     		add	r7, sp, #0
 623              		.cfi_def_cfa_register 7
 624 022e 0200     		movs	r2, r0
 625 0230 FB1D     		adds	r3, r7, #7
 626 0232 1A70     		strb	r2, [r3]
 163:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 1
 164:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_E);
 627              		.loc 1 164 0
 628 0234 4020     		movs	r0, #64
 629 0236 FFF7FEFF 		bl	ascii_ctrl_bit_set
 165:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 166:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set data register values
 167:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrHigh = byte;
 630              		.loc 1 167 0
 631 023a 064A     		ldr	r2, .L30
 632 023c FB1D     		adds	r3, r7, #7
 633 023e 1B78     		ldrb	r3, [r3]
 634 0240 1370     		strb	r3, [r2]
 168:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 169:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for 230ns (here at least 250, hope this should still work)
 170:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 635              		.loc 1 170 0
 636 0242 FFF7FEFF 		bl	delay_250ns
 171:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 172:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 0
 173:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_E);
 637              		.loc 1 173 0
 638 0246 4020     		movs	r0, #64
 639 0248 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 174:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 640              		.loc 1 174 0
 641 024c C046     		nop
 642 024e BD46     		mov	sp, r7
 643 0250 02B0     		add	sp, sp, #8
 644              		@ sp needed
 645 0252 80BD     		pop	{r7, pc}
 646              	.L31:
 647              		.align	2
 648              	.L30:
 649 0254 15100240 		.word	1073877013
 650              		.cfi_endproc
 651              	.LFE12:
 653              		.align	1
 654              		.global	ascii_read_controller
 655              		.syntax unified
 656              		.code	16
 657              		.thumb_func
 658              		.fpu softvfp
 660              	ascii_read_controller:
 661              	.LFB13:
 175:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 176:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_controller(void){
 662              		.loc 1 176 0
 663              		.cfi_startproc
 664              		@ args = 0, pretend = 0, frame = 8
 665              		@ frame_needed = 1, uses_anonymous_args = 0
 666 0258 80B5     		push	{r7, lr}
 667              		.cfi_def_cfa_offset 8
 668              		.cfi_offset 7, -8
 669              		.cfi_offset 14, -4
 670 025a 82B0     		sub	sp, sp, #8
 671              		.cfi_def_cfa_offset 16
 672 025c 00AF     		add	r7, sp, #0
 673              		.cfi_def_cfa_register 7
 177:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 178:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 179:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 1
 180:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_E);
 674              		.loc 1 180 0
 675 025e 4020     		movs	r0, #64
 676 0260 FFF7FEFF 		bl	ascii_ctrl_bit_set
 181:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 182:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for at least 360ns, here at least 500
 183:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 677              		.loc 1 183 0
 678 0264 FFF7FEFF 		bl	delay_250ns
 184:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 679              		.loc 1 184 0
 680 0268 FFF7FEFF 		bl	delay_250ns
 185:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 186:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Read data register
 187:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = portIdrHigh;
 681              		.loc 1 187 0
 682 026c 064A     		ldr	r2, .L34
 683 026e FB1D     		adds	r3, r7, #7
 684 0270 1278     		ldrb	r2, [r2]
 685 0272 1A70     		strb	r2, [r3]
 188:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 189:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 0
 190:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_E);
 686              		.loc 1 190 0
 687 0274 4020     		movs	r0, #64
 688 0276 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 191:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 192:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 689              		.loc 1 192 0
 690 027a FB1D     		adds	r3, r7, #7
 691 027c 1B78     		ldrb	r3, [r3]
 193:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 692              		.loc 1 193 0
 693 027e 1800     		movs	r0, r3
 694 0280 BD46     		mov	sp, r7
 695 0282 02B0     		add	sp, sp, #8
 696              		@ sp needed
 697 0284 80BD     		pop	{r7, pc}
 698              	.L35:
 699 0286 C046     		.align	2
 700              	.L34:
 701 0288 11100240 		.word	1073877009
 702              		.cfi_endproc
 703              	.LFE13:
 705              		.align	1
 706              		.global	ascii_command
 707              		.syntax unified
 708              		.code	16
 709              		.thumb_func
 710              		.fpu softvfp
 712              	ascii_command:
 713              	.LFB14:
 194:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 195:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_command(unsigned char command, unsigned int post_command_delay, unsigned short us){
 714              		.loc 1 195 0
 715              		.cfi_startproc
 716              		@ args = 0, pretend = 0, frame = 8
 717              		@ frame_needed = 1, uses_anonymous_args = 0
 718 028c 80B5     		push	{r7, lr}
 719              		.cfi_def_cfa_offset 8
 720              		.cfi_offset 7, -8
 721              		.cfi_offset 14, -4
 722 028e 82B0     		sub	sp, sp, #8
 723              		.cfi_def_cfa_offset 16
 724 0290 00AF     		add	r7, sp, #0
 725              		.cfi_def_cfa_register 7
 726 0292 3960     		str	r1, [r7]
 727 0294 1100     		movs	r1, r2
 728 0296 FB1D     		adds	r3, r7, #7
 729 0298 021C     		adds	r2, r0, #0
 730 029a 1A70     		strb	r2, [r3]
 731 029c 3B1D     		adds	r3, r7, #4
 732 029e 0A1C     		adds	r2, r1, #0
 733 02a0 1A80     		strh	r2, [r3]
 196:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare to check if display ready
 197:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 734              		.loc 1 197 0
 735 02a2 0220     		movs	r0, #2
 736 02a4 FFF7FEFF 		bl	ascii_ctrl_bit_set
 198:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 737              		.loc 1 198 0
 738 02a8 0120     		movs	r0, #1
 739 02aa FFF7FEFF 		bl	ascii_ctrl_bit_clear
 199:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 200:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 201:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(ascii_read_status() & 0x80 != 0);
 740              		.loc 1 201 0
 741 02ae C046     		nop
 742              	.L37:
 743              		.loc 1 201 0 is_stmt 0 discriminator 1
 744 02b0 FFF7FEFF 		bl	ascii_read_status
 745 02b4 0300     		movs	r3, r0
 746 02b6 1A00     		movs	r2, r3
 747 02b8 0123     		movs	r3, #1
 748 02ba 1340     		ands	r3, r2
 749 02bc F8D1     		bne	.L37
 202:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(8);
 750              		.loc 1 202 0 is_stmt 1
 751 02be 0820     		movs	r0, #8
 752 02c0 FFF7FEFF 		bl	delay_mikro
 203:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 204:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Send command
 205:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_cmd(command);
 753              		.loc 1 205 0
 754 02c4 FB1D     		adds	r3, r7, #7
 755 02c6 1B78     		ldrb	r3, [r3]
 756 02c8 1800     		movs	r0, r3
 757 02ca FFF7FEFF 		bl	ascii_write_cmd
 206:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 207:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for the entered amount of time
 208:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(us == 1){
 758              		.loc 1 208 0
 759 02ce 3B1D     		adds	r3, r7, #4
 760 02d0 1B88     		ldrh	r3, [r3]
 761 02d2 012B     		cmp	r3, #1
 762 02d4 04D1     		bne	.L38
 209:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_mikro(post_command_delay);
 763              		.loc 1 209 0
 764 02d6 3B68     		ldr	r3, [r7]
 765 02d8 1800     		movs	r0, r3
 766 02da FFF7FEFF 		bl	delay_mikro
 210:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     } else {
 211:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_milli(post_command_delay);
 212:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 213:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 767              		.loc 1 213 0
 768 02de 03E0     		b	.L40
 769              	.L38:
 211:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 770              		.loc 1 211 0
 771 02e0 3B68     		ldr	r3, [r7]
 772 02e2 1800     		movs	r0, r3
 773 02e4 FFF7FEFF 		bl	delay_milli
 774              	.L40:
 775              		.loc 1 213 0
 776 02e8 C046     		nop
 777 02ea BD46     		mov	sp, r7
 778 02ec 02B0     		add	sp, sp, #8
 779              		@ sp needed
 780 02ee 80BD     		pop	{r7, pc}
 781              		.cfi_endproc
 782              	.LFE14:
 784              		.align	1
 785              		.global	ascii_write_char
 786              		.syntax unified
 787              		.code	16
 788              		.thumb_func
 789              		.fpu softvfp
 791              	ascii_write_char:
 792              	.LFB15:
 214:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 215:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_char(unsigned char character){
 793              		.loc 1 215 0
 794              		.cfi_startproc
 795              		@ args = 0, pretend = 0, frame = 8
 796              		@ frame_needed = 1, uses_anonymous_args = 0
 797 02f0 80B5     		push	{r7, lr}
 798              		.cfi_def_cfa_offset 8
 799              		.cfi_offset 7, -8
 800              		.cfi_offset 14, -4
 801 02f2 82B0     		sub	sp, sp, #8
 802              		.cfi_def_cfa_offset 16
 803 02f4 00AF     		add	r7, sp, #0
 804              		.cfi_def_cfa_register 7
 805 02f6 0200     		movs	r2, r0
 806 02f8 FB1D     		adds	r3, r7, #7
 807 02fa 1A70     		strb	r2, [r3]
 216:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare to check if display ready
 217:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 808              		.loc 1 217 0
 809 02fc 0220     		movs	r0, #2
 810 02fe FFF7FEFF 		bl	ascii_ctrl_bit_set
 218:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 811              		.loc 1 218 0
 812 0302 0120     		movs	r0, #1
 813 0304 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 219:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 220:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 221:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(ascii_read_status() & 0x80 != 0);
 814              		.loc 1 221 0
 815 0308 C046     		nop
 816              	.L42:
 817              		.loc 1 221 0 is_stmt 0 discriminator 1
 818 030a FFF7FEFF 		bl	ascii_read_status
 819 030e 0300     		movs	r3, r0
 820 0310 1A00     		movs	r2, r3
 821 0312 0123     		movs	r3, #1
 822 0314 1340     		ands	r3, r2
 823 0316 F8D1     		bne	.L42
 222:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(8);
 824              		.loc 1 222 0 is_stmt 1
 825 0318 0820     		movs	r0, #8
 826 031a FFF7FEFF 		bl	delay_mikro
 223:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 224:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write character do display
 225:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_data(character);
 827              		.loc 1 225 0
 828 031e FB1D     		adds	r3, r7, #7
 829 0320 1B78     		ldrb	r3, [r3]
 830 0322 1800     		movs	r0, r3
 831 0324 FFF7FEFF 		bl	ascii_write_data
 226:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 227:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Delay for 43us
 228:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(43);
 832              		.loc 1 228 0
 833 0328 2B20     		movs	r0, #43
 834 032a FFF7FEFF 		bl	delay_mikro
 229:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 835              		.loc 1 229 0
 836 032e C046     		nop
 837 0330 BD46     		mov	sp, r7
 838 0332 02B0     		add	sp, sp, #8
 839              		@ sp needed
 840 0334 80BD     		pop	{r7, pc}
 841              		.cfi_endproc
 842              	.LFE15:
 844              		.align	1
 845              		.global	gotoxy
 846              		.syntax unified
 847              		.code	16
 848              		.thumb_func
 849              		.fpu softvfp
 851              	gotoxy:
 852              	.LFB16:
 230:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 231:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void gotoxy(unsigned int row, unsigned int column){
 853              		.loc 1 231 0
 854              		.cfi_startproc
 855              		@ args = 0, pretend = 0, frame = 16
 856              		@ frame_needed = 1, uses_anonymous_args = 0
 857 0336 80B5     		push	{r7, lr}
 858              		.cfi_def_cfa_offset 8
 859              		.cfi_offset 7, -8
 860              		.cfi_offset 14, -4
 861 0338 84B0     		sub	sp, sp, #16
 862              		.cfi_def_cfa_offset 24
 863 033a 00AF     		add	r7, sp, #0
 864              		.cfi_def_cfa_register 7
 865 033c 7860     		str	r0, [r7, #4]
 866 033e 3960     		str	r1, [r7]
 232:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Make sure row not out of bounds
 233:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(row < 1 || row > 20){
 867              		.loc 1 233 0
 868 0340 7B68     		ldr	r3, [r7, #4]
 869 0342 002B     		cmp	r3, #0
 870 0344 25D0     		beq	.L50
 871              		.loc 1 233 0 is_stmt 0 discriminator 1
 872 0346 7B68     		ldr	r3, [r7, #4]
 873 0348 142B     		cmp	r3, #20
 874 034a 22D8     		bhi	.L50
 234:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         return;
 235:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 236:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Make sure column not out of bounds
 237:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(column < 1 || column > 2){
 875              		.loc 1 237 0 is_stmt 1
 876 034c 3B68     		ldr	r3, [r7]
 877 034e 002B     		cmp	r3, #0
 878 0350 21D0     		beq	.L51
 879              		.loc 1 237 0 is_stmt 0 discriminator 1
 880 0352 3B68     		ldr	r3, [r7]
 881 0354 022B     		cmp	r3, #2
 882 0356 1ED8     		bhi	.L51
 238:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         return;
 239:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 240:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 241:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set address to the correct location
 242:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char address = row - 1;
 883              		.loc 1 242 0 is_stmt 1
 884 0358 7B68     		ldr	r3, [r7, #4]
 885 035a DAB2     		uxtb	r2, r3
 886 035c 0F23     		movs	r3, #15
 887 035e FB18     		adds	r3, r7, r3
 888 0360 013A     		subs	r2, r2, #1
 889 0362 1A70     		strb	r2, [r3]
 243:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(column == 2){
 890              		.loc 1 243 0
 891 0364 3B68     		ldr	r3, [r7]
 892 0366 022B     		cmp	r3, #2
 893 0368 06D1     		bne	.L49
 244:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         address += 0x40;
 894              		.loc 1 244 0
 895 036a 0F23     		movs	r3, #15
 896 036c FB18     		adds	r3, r7, r3
 897 036e 0F22     		movs	r2, #15
 898 0370 BA18     		adds	r2, r7, r2
 899 0372 1278     		ldrb	r2, [r2]
 900 0374 4032     		adds	r2, r2, #64
 901 0376 1A70     		strb	r2, [r3]
 902              	.L49:
 245:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 246:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 247:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Send command to mark correct spot
 248:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x80 | address, 39, 1);
 903              		.loc 1 248 0
 904 0378 0F23     		movs	r3, #15
 905 037a FB18     		adds	r3, r7, r3
 906 037c 1B78     		ldrb	r3, [r3]
 907 037e 8022     		movs	r2, #128
 908 0380 5242     		rsbs	r2, r2, #0
 909 0382 1343     		orrs	r3, r2
 910 0384 DBB2     		uxtb	r3, r3
 911 0386 0122     		movs	r2, #1
 912 0388 2721     		movs	r1, #39
 913 038a 1800     		movs	r0, r3
 914 038c FFF7FEFF 		bl	ascii_command
 915 0390 02E0     		b	.L43
 916              	.L50:
 234:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 917              		.loc 1 234 0
 918 0392 C046     		nop
 919 0394 00E0     		b	.L43
 920              	.L51:
 238:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 921              		.loc 1 238 0
 922 0396 C046     		nop
 923              	.L43:
 249:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 924              		.loc 1 249 0
 925 0398 BD46     		mov	sp, r7
 926 039a 04B0     		add	sp, sp, #16
 927              		@ sp needed
 928 039c 80BD     		pop	{r7, pc}
 929              		.cfi_endproc
 930              	.LFE16:
 932              	.Letext0:
