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
  47              		.section	.rodata
  48              		.align	2
  49              	.LC0:
  50 0000 416C6661 		.ascii	"Alfanumerisk \000"
  50      6E756D65 
  50      7269736B 
  50      2000
  51 000e 0000     		.align	2
  52              	.LC2:
  53 0010 44697370 		.ascii	"Display - test\000"
  53      6C617920 
  53      2D207465 
  53      737400
  54              		.text
  55              		.align	1
  56              		.global	main
  57              		.syntax unified
  58              		.code	16
  59              		.thumb_func
  60              		.fpu softvfp
  62              	main:
  63              	.LFB1:
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
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_string(char*);
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void main(void){
  64              		.loc 1 59 0
  65              		.cfi_startproc
  66              		@ args = 0, pretend = 0, frame = 40
  67              		@ frame_needed = 1, uses_anonymous_args = 0
  68 0000 90B5     		push	{r4, r7, lr}
  69              		.cfi_def_cfa_offset 12
  70              		.cfi_offset 4, -12
  71              		.cfi_offset 7, -8
  72              		.cfi_offset 14, -4
  73 0002 8BB0     		sub	sp, sp, #44
  74              		.cfi_def_cfa_offset 56
  75 0004 00AF     		add	r7, sp, #0
  76              		.cfi_def_cfa_register 7
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     char *s;
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     char test1[] = "Alfanumerisk ";
  77              		.loc 1 61 0
  78 0006 1423     		movs	r3, #20
  79 0008 FB18     		adds	r3, r7, r3
  80 000a 154A     		ldr	r2, .L3
  81 000c 13CA     		ldmia	r2!, {r0, r1, r4}
  82 000e 13C3     		stmia	r3!, {r0, r1, r4}
  83 0010 1288     		ldrh	r2, [r2]
  84 0012 1A80     		strh	r2, [r3]
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     char test2[] = "Display - test";
  85              		.loc 1 62 0
  86 0014 3B1D     		adds	r3, r7, #4
  87 0016 134A     		ldr	r2, .L3+4
  88 0018 13CA     		ldmia	r2!, {r0, r1, r4}
  89 001a 13C3     		stmia	r3!, {r0, r1, r4}
  90 001c 1188     		ldrh	r1, [r2]
  91 001e 1980     		strh	r1, [r3]
  92 0020 9278     		ldrb	r2, [r2, #2]
  93 0022 9A70     		strb	r2, [r3, #2]
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     app_init();
  94              		.loc 1 64 0
  95 0024 FFF7FEFF 		bl	app_init
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     //ascii_init();
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     gotoxy(1, 1);
  96              		.loc 1 66 0
  97 0028 0121     		movs	r1, #1
  98 002a 0120     		movs	r0, #1
  99 002c FFF7FEFF 		bl	gotoxy
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     s = test1;
 100              		.loc 1 67 0
 101 0030 1423     		movs	r3, #20
 102 0032 FB18     		adds	r3, r7, r3
 103 0034 7B62     		str	r3, [r7, #36]
  68:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_string(*s);
 104              		.loc 1 68 0
 105 0036 7B6A     		ldr	r3, [r7, #36]
 106 0038 1B78     		ldrb	r3, [r3]
 107 003a 1800     		movs	r0, r3
 108 003c FFF7FEFF 		bl	ascii_write_string
  69:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     gotoxy(1, 2);
 109              		.loc 1 69 0
 110 0040 0221     		movs	r1, #2
 111 0042 0120     		movs	r0, #1
 112 0044 FFF7FEFF 		bl	gotoxy
  70:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     s = test2;
 113              		.loc 1 70 0
 114 0048 3B1D     		adds	r3, r7, #4
 115 004a 7B62     		str	r3, [r7, #36]
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_string(*s);
 116              		.loc 1 71 0
 117 004c 7B6A     		ldr	r3, [r7, #36]
 118 004e 1B78     		ldrb	r3, [r3]
 119 0050 1800     		movs	r0, r3
 120 0052 FFF7FEFF 		bl	ascii_write_string
  72:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 121              		.loc 1 72 0
 122 0056 C046     		nop
 123 0058 BD46     		mov	sp, r7
 124 005a 0BB0     		add	sp, sp, #44
 125              		@ sp needed
 126 005c 90BD     		pop	{r4, r7, pc}
 127              	.L4:
 128 005e C046     		.align	2
 129              	.L3:
 130 0060 00000000 		.word	.LC0
 131 0064 10000000 		.word	.LC2
 132              		.cfi_endproc
 133              	.LFE1:
 135              		.align	1
 136              		.global	app_init
 137              		.syntax unified
 138              		.code	16
 139              		.thumb_func
 140              		.fpu softvfp
 142              	app_init:
 143              	.LFB2:
  73:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  74:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void app_init(void){
 144              		.loc 1 74 0
 145              		.cfi_startproc
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 1, uses_anonymous_args = 0
 148 0068 80B5     		push	{r7, lr}
 149              		.cfi_def_cfa_offset 8
 150              		.cfi_offset 7, -8
 151              		.cfi_offset 14, -4
 152 006a 00AF     		add	r7, sp, #0
 153              		.cfi_def_cfa_register 7
  75:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E -> output
  76:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer = 0x55555555;
 154              		.loc 1 76 0
 155 006c 0F4B     		ldr	r3, .L6
 156 006e 104A     		ldr	r2, .L6+4
 157 0070 1A60     		str	r2, [r3]
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  78:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // ***DISPLAY INIT***
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Clear screen
  80:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x1, 2, 0);
 158              		.loc 1 80 0
 159 0072 0022     		movs	r2, #0
 160 0074 0221     		movs	r1, #2
 161 0076 0120     		movs	r0, #1
 162 0078 FFF7FEFF 		bl	ascii_command
  81:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set address register to 0, reset cursor
  82:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x2, 2, 0);
 163              		.loc 1 82 0
 164 007c 0022     		movs	r2, #0
 165 007e 0221     		movs	r1, #2
 166 0080 0220     		movs	r0, #2
 167 0082 FFF7FEFF 		bl	ascii_command
  83:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // 2 rows, characters are 5x8 dots
  84:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x38, 39, 1);
 168              		.loc 1 84 0
 169 0086 0122     		movs	r2, #1
 170 0088 2721     		movs	r1, #39
 171 008a 3820     		movs	r0, #56
 172 008c FFF7FEFF 		bl	ascii_command
  85:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Turn on display, turn on cursor, cursor not blinking
  86:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0xE, 39, 1);
 173              		.loc 1 86 0
 174 0090 0122     		movs	r2, #1
 175 0092 2721     		movs	r1, #39
 176 0094 0E20     		movs	r0, #14
 177 0096 FFF7FEFF 		bl	ascii_command
  87:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Increment mode, no shift
  88:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x7, 39, 1);
 178              		.loc 1 88 0
 179 009a 0122     		movs	r2, #1
 180 009c 2721     		movs	r1, #39
 181 009e 0720     		movs	r0, #7
 182 00a0 FFF7FEFF 		bl	ascii_command
  89:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 183              		.loc 1 89 0
 184 00a4 C046     		nop
 185 00a6 BD46     		mov	sp, r7
 186              		@ sp needed
 187 00a8 80BD     		pop	{r7, pc}
 188              	.L7:
 189 00aa C046     		.align	2
 190              	.L6:
 191 00ac 00100240 		.word	1073876992
 192 00b0 55555555 		.word	1431655765
 193              		.cfi_endproc
 194              	.LFE2:
 196              		.align	1
 197              		.global	delay_250ns
 198              		.syntax unified
 199              		.code	16
 200              		.thumb_func
 201              		.fpu softvfp
 203              	delay_250ns:
 204              	.LFB3:
  90:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  91:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_250ns(void){
 205              		.loc 1 91 0
 206              		.cfi_startproc
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 1, uses_anonymous_args = 0
 209 00b4 80B5     		push	{r7, lr}
 210              		.cfi_def_cfa_offset 8
 211              		.cfi_offset 7, -8
 212              		.cfi_offset 14, -4
 213 00b6 00AF     		add	r7, sp, #0
 214              		.cfi_def_cfa_register 7
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_CTRL &= 0xFFFEFFF8;
 215              		.loc 1 92 0
 216 00b8 134B     		ldr	r3, .L9
 217 00ba 134A     		ldr	r2, .L9
 218 00bc 1268     		ldr	r2, [r2]
 219 00be 1349     		ldr	r1, .L9+4
 220 00c0 0A40     		ands	r2, r1
 221 00c2 1A60     		str	r2, [r3]
  93:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_LOAD &= 0xFF000000;
 222              		.loc 1 93 0
 223 00c4 124B     		ldr	r3, .L9+8
 224 00c6 124A     		ldr	r2, .L9+8
 225 00c8 1268     		ldr	r2, [r2]
 226 00ca 120E     		lsrs	r2, r2, #24
 227 00cc 1206     		lsls	r2, r2, #24
 228 00ce 1A60     		str	r2, [r3]
  94:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_LOAD |= COUNT_VAL-1;
 229              		.loc 1 94 0
 230 00d0 0F4B     		ldr	r3, .L9+8
 231 00d2 0F4A     		ldr	r2, .L9+8
 232 00d4 1268     		ldr	r2, [r2]
 233 00d6 2921     		movs	r1, #41
 234 00d8 0A43     		orrs	r2, r1
 235 00da 1A60     		str	r2, [r3]
  95:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_VAL = 0;
 236              		.loc 1 95 0
 237 00dc 0D4B     		ldr	r3, .L9+12
 238 00de 0022     		movs	r2, #0
 239 00e0 1A60     		str	r2, [r3]
  96:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_CTRL |= 0x5;
 240              		.loc 1 96 0
 241 00e2 094B     		ldr	r3, .L9
 242 00e4 084A     		ldr	r2, .L9
 243 00e6 1268     		ldr	r2, [r2]
 244 00e8 0521     		movs	r1, #5
 245 00ea 0A43     		orrs	r2, r1
 246 00ec 1A60     		str	r2, [r3]
  97:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  98:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(STK_CTRL & 0x00010000 == 0);
 247              		.loc 1 98 0
 248 00ee C046     		nop
 249 00f0 054B     		ldr	r3, .L9
 250 00f2 1B68     		ldr	r3, [r3]
  99:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 100:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_CTRL &= 0xFFFEFFF8;
 251              		.loc 1 100 0
 252 00f4 044B     		ldr	r3, .L9
 253 00f6 044A     		ldr	r2, .L9
 254 00f8 1268     		ldr	r2, [r2]
 255 00fa 0449     		ldr	r1, .L9+4
 256 00fc 0A40     		ands	r2, r1
 257 00fe 1A60     		str	r2, [r3]
 101:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 258              		.loc 1 101 0
 259 0100 C046     		nop
 260 0102 BD46     		mov	sp, r7
 261              		@ sp needed
 262 0104 80BD     		pop	{r7, pc}
 263              	.L10:
 264 0106 C046     		.align	2
 265              	.L9:
 266 0108 10E000E0 		.word	-536813552
 267 010c F8FFFEFF 		.word	-65544
 268 0110 14E000E0 		.word	-536813548
 269 0114 18E000E0 		.word	-536813544
 270              		.cfi_endproc
 271              	.LFE3:
 273              		.align	1
 274              		.global	delay_mikro
 275              		.syntax unified
 276              		.code	16
 277              		.thumb_func
 278              		.fpu softvfp
 280              	delay_mikro:
 281              	.LFB4:
 102:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 103:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_mikro(unsigned int us){
 282              		.loc 1 103 0
 283              		.cfi_startproc
 284              		@ args = 0, pretend = 0, frame = 16
 285              		@ frame_needed = 1, uses_anonymous_args = 0
 286 0118 80B5     		push	{r7, lr}
 287              		.cfi_def_cfa_offset 8
 288              		.cfi_offset 7, -8
 289              		.cfi_offset 14, -4
 290 011a 84B0     		sub	sp, sp, #16
 291              		.cfi_def_cfa_offset 24
 292 011c 00AF     		add	r7, sp, #0
 293              		.cfi_def_cfa_register 7
 294 011e 7860     		str	r0, [r7, #4]
 295              	.LBB2:
 104:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     for(int i=0; i < us*4; i++){
 296              		.loc 1 104 0
 297 0120 0023     		movs	r3, #0
 298 0122 FB60     		str	r3, [r7, #12]
 299 0124 04E0     		b	.L12
 300              	.L13:
 105:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_250ns();
 301              		.loc 1 105 0 discriminator 3
 302 0126 FFF7FEFF 		bl	delay_250ns
 104:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     for(int i=0; i < us*4; i++){
 303              		.loc 1 104 0 discriminator 3
 304 012a FB68     		ldr	r3, [r7, #12]
 305 012c 0133     		adds	r3, r3, #1
 306 012e FB60     		str	r3, [r7, #12]
 307              	.L12:
 104:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     for(int i=0; i < us*4; i++){
 308              		.loc 1 104 0 is_stmt 0 discriminator 1
 309 0130 7B68     		ldr	r3, [r7, #4]
 310 0132 9A00     		lsls	r2, r3, #2
 311 0134 FB68     		ldr	r3, [r7, #12]
 312 0136 9A42     		cmp	r2, r3
 313 0138 F5D8     		bhi	.L13
 314              	.LBE2:
 106:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 107:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 315              		.loc 1 107 0 is_stmt 1
 316 013a C046     		nop
 317 013c BD46     		mov	sp, r7
 318 013e 04B0     		add	sp, sp, #16
 319              		@ sp needed
 320 0140 80BD     		pop	{r7, pc}
 321              		.cfi_endproc
 322              	.LFE4:
 324              		.align	1
 325              		.global	delay_milli
 326              		.syntax unified
 327              		.code	16
 328              		.thumb_func
 329              		.fpu softvfp
 331              	delay_milli:
 332              	.LFB5:
 108:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 109:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_milli(unsigned int ms){
 333              		.loc 1 109 0
 334              		.cfi_startproc
 335              		@ args = 0, pretend = 0, frame = 8
 336              		@ frame_needed = 1, uses_anonymous_args = 0
 337 0142 80B5     		push	{r7, lr}
 338              		.cfi_def_cfa_offset 8
 339              		.cfi_offset 7, -8
 340              		.cfi_offset 14, -4
 341 0144 82B0     		sub	sp, sp, #8
 342              		.cfi_def_cfa_offset 16
 343 0146 00AF     		add	r7, sp, #0
 344              		.cfi_def_cfa_register 7
 345 0148 7860     		str	r0, [r7, #4]
 110:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(ms*MILLI_TO_MIKRO);
 346              		.loc 1 110 0
 347 014a 7B68     		ldr	r3, [r7, #4]
 348 014c 1800     		movs	r0, r3
 349 014e FFF7FEFF 		bl	delay_mikro
 111:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 350              		.loc 1 111 0
 351 0152 C046     		nop
 352 0154 BD46     		mov	sp, r7
 353 0156 02B0     		add	sp, sp, #8
 354              		@ sp needed
 355 0158 80BD     		pop	{r7, pc}
 356              		.cfi_endproc
 357              	.LFE5:
 359              		.align	1
 360              		.global	ascii_ctrl_bit_set
 361              		.syntax unified
 362              		.code	16
 363              		.thumb_func
 364              		.fpu softvfp
 366              	ascii_ctrl_bit_set:
 367              	.LFB6:
 112:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 113:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_set(unsigned char x){
 368              		.loc 1 113 0
 369              		.cfi_startproc
 370              		@ args = 0, pretend = 0, frame = 8
 371              		@ frame_needed = 1, uses_anonymous_args = 0
 372 015a 80B5     		push	{r7, lr}
 373              		.cfi_def_cfa_offset 8
 374              		.cfi_offset 7, -8
 375              		.cfi_offset 14, -4
 376 015c 82B0     		sub	sp, sp, #8
 377              		.cfi_def_cfa_offset 16
 378 015e 00AF     		add	r7, sp, #0
 379              		.cfi_def_cfa_register 7
 380 0160 0200     		movs	r2, r0
 381 0162 FB1D     		adds	r3, r7, #7
 382 0164 1A70     		strb	r2, [r3]
 114:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set bits that are 1 in x to 1, leave rest be
 115:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrLow |= x;
 383              		.loc 1 115 0
 384 0166 0649     		ldr	r1, .L16
 385 0168 054B     		ldr	r3, .L16
 386 016a 1A78     		ldrb	r2, [r3]
 387 016c FB1D     		adds	r3, r7, #7
 388 016e 1B78     		ldrb	r3, [r3]
 389 0170 1343     		orrs	r3, r2
 390 0172 DBB2     		uxtb	r3, r3
 391 0174 0B70     		strb	r3, [r1]
 116:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 392              		.loc 1 116 0
 393 0176 C046     		nop
 394 0178 BD46     		mov	sp, r7
 395 017a 02B0     		add	sp, sp, #8
 396              		@ sp needed
 397 017c 80BD     		pop	{r7, pc}
 398              	.L17:
 399 017e C046     		.align	2
 400              	.L16:
 401 0180 14100240 		.word	1073877012
 402              		.cfi_endproc
 403              	.LFE6:
 405              		.align	1
 406              		.global	ascii_ctrl_bit_clear
 407              		.syntax unified
 408              		.code	16
 409              		.thumb_func
 410              		.fpu softvfp
 412              	ascii_ctrl_bit_clear:
 413              	.LFB7:
 117:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 118:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_clear(unsigned char x){
 414              		.loc 1 118 0
 415              		.cfi_startproc
 416              		@ args = 0, pretend = 0, frame = 8
 417              		@ frame_needed = 1, uses_anonymous_args = 0
 418 0184 80B5     		push	{r7, lr}
 419              		.cfi_def_cfa_offset 8
 420              		.cfi_offset 7, -8
 421              		.cfi_offset 14, -4
 422 0186 82B0     		sub	sp, sp, #8
 423              		.cfi_def_cfa_offset 16
 424 0188 00AF     		add	r7, sp, #0
 425              		.cfi_def_cfa_register 7
 426 018a 0200     		movs	r2, r0
 427 018c FB1D     		adds	r3, r7, #7
 428 018e 1A70     		strb	r2, [r3]
 119:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set any bits that are 0 in x to 0, leave rest as they were
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrLow &= x;
 429              		.loc 1 120 0
 430 0190 0549     		ldr	r1, .L19
 431 0192 054B     		ldr	r3, .L19
 432 0194 1B78     		ldrb	r3, [r3]
 433 0196 FA1D     		adds	r2, r7, #7
 434 0198 1278     		ldrb	r2, [r2]
 435 019a 1340     		ands	r3, r2
 436 019c DBB2     		uxtb	r3, r3
 437 019e 0B70     		strb	r3, [r1]
 121:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 438              		.loc 1 121 0
 439 01a0 C046     		nop
 440 01a2 BD46     		mov	sp, r7
 441 01a4 02B0     		add	sp, sp, #8
 442              		@ sp needed
 443 01a6 80BD     		pop	{r7, pc}
 444              	.L20:
 445              		.align	2
 446              	.L19:
 447 01a8 14100240 		.word	1073877012
 448              		.cfi_endproc
 449              	.LFE7:
 451              		.align	1
 452              		.global	ascii_write_cmd
 453              		.syntax unified
 454              		.code	16
 455              		.thumb_func
 456              		.fpu softvfp
 458              	ascii_write_cmd:
 459              	.LFB8:
 122:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 123:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_cmd(unsigned char command){
 460              		.loc 1 123 0
 461              		.cfi_startproc
 462              		@ args = 0, pretend = 0, frame = 8
 463              		@ frame_needed = 1, uses_anonymous_args = 0
 464 01ac 80B5     		push	{r7, lr}
 465              		.cfi_def_cfa_offset 8
 466              		.cfi_offset 7, -8
 467              		.cfi_offset 14, -4
 468 01ae 82B0     		sub	sp, sp, #8
 469              		.cfi_def_cfa_offset 16
 470 01b0 00AF     		add	r7, sp, #0
 471              		.cfi_def_cfa_register 7
 472 01b2 0200     		movs	r2, r0
 473 01b4 FB1D     		adds	r3, r7, #7
 474 01b6 1A70     		strb	r2, [r3]
 124:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for sending command
 125:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS | B_RW);
 475              		.loc 1 125 0
 476 01b8 0320     		movs	r0, #3
 477 01ba FFF7FEFF 		bl	ascii_ctrl_bit_clear
 126:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 127:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write command
 128:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_controller(command);
 478              		.loc 1 128 0
 479 01be FB1D     		adds	r3, r7, #7
 480 01c0 1B78     		ldrb	r3, [r3]
 481 01c2 1800     		movs	r0, r3
 482 01c4 FFF7FEFF 		bl	ascii_write_controller
 129:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 483              		.loc 1 129 0
 484 01c8 C046     		nop
 485 01ca BD46     		mov	sp, r7
 486 01cc 02B0     		add	sp, sp, #8
 487              		@ sp needed
 488 01ce 80BD     		pop	{r7, pc}
 489              		.cfi_endproc
 490              	.LFE8:
 492              		.align	1
 493              		.global	ascii_write_data
 494              		.syntax unified
 495              		.code	16
 496              		.thumb_func
 497              		.fpu softvfp
 499              	ascii_write_data:
 500              	.LFB9:
 130:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 131:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_data(unsigned char data){
 501              		.loc 1 131 0
 502              		.cfi_startproc
 503              		@ args = 0, pretend = 0, frame = 8
 504              		@ frame_needed = 1, uses_anonymous_args = 0
 505 01d0 80B5     		push	{r7, lr}
 506              		.cfi_def_cfa_offset 8
 507              		.cfi_offset 7, -8
 508              		.cfi_offset 14, -4
 509 01d2 82B0     		sub	sp, sp, #8
 510              		.cfi_def_cfa_offset 16
 511 01d4 00AF     		add	r7, sp, #0
 512              		.cfi_def_cfa_register 7
 513 01d6 0200     		movs	r2, r0
 514 01d8 FB1D     		adds	r3, r7, #7
 515 01da 1A70     		strb	r2, [r3]
 132:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for writing data
 133:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RS);
 516              		.loc 1 133 0
 517 01dc 0120     		movs	r0, #1
 518 01de FFF7FEFF 		bl	ascii_ctrl_bit_set
 134:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RW);
 519              		.loc 1 134 0
 520 01e2 0220     		movs	r0, #2
 521 01e4 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 135:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 136:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write data
 137:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_controller(data);
 522              		.loc 1 137 0
 523 01e8 FB1D     		adds	r3, r7, #7
 524 01ea 1B78     		ldrb	r3, [r3]
 525 01ec 1800     		movs	r0, r3
 526 01ee FFF7FEFF 		bl	ascii_write_controller
 138:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 527              		.loc 1 138 0
 528 01f2 C046     		nop
 529 01f4 BD46     		mov	sp, r7
 530 01f6 02B0     		add	sp, sp, #8
 531              		@ sp needed
 532 01f8 80BD     		pop	{r7, pc}
 533              		.cfi_endproc
 534              	.LFE9:
 536              		.align	1
 537              		.global	ascii_read_data
 538              		.syntax unified
 539              		.code	16
 540              		.thumb_func
 541              		.fpu softvfp
 543              	ascii_read_data:
 544              	.LFB10:
 139:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 140:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_data(void){
 545              		.loc 1 140 0
 546              		.cfi_startproc
 547              		@ args = 0, pretend = 0, frame = 8
 548              		@ frame_needed = 1, uses_anonymous_args = 0
 549 01fa 90B5     		push	{r4, r7, lr}
 550              		.cfi_def_cfa_offset 12
 551              		.cfi_offset 4, -12
 552              		.cfi_offset 7, -8
 553              		.cfi_offset 14, -4
 554 01fc 83B0     		sub	sp, sp, #12
 555              		.cfi_def_cfa_offset 24
 556 01fe 00AF     		add	r7, sp, #0
 557              		.cfi_def_cfa_register 7
 141:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 142:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> input
 143:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer &= 0x0000FFFF;
 558              		.loc 1 143 0
 559 0200 0C4B     		ldr	r3, .L25
 560 0202 0C4A     		ldr	r2, .L25
 561 0204 1268     		ldr	r2, [r2]
 562 0206 1204     		lsls	r2, r2, #16
 563 0208 120C     		lsrs	r2, r2, #16
 564 020a 1A60     		str	r2, [r3]
 144:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 145:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for reading data
 146:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RS | B_RW);
 565              		.loc 1 146 0
 566 020c 0320     		movs	r0, #3
 567 020e FFF7FEFF 		bl	ascii_ctrl_bit_set
 147:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 148:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = ascii_read_controller();
 568              		.loc 1 148 0
 569 0212 FC1D     		adds	r4, r7, #7
 570 0214 FFF7FEFF 		bl	ascii_read_controller
 571 0218 0300     		movs	r3, r0
 572 021a 2370     		strb	r3, [r4]
 149:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 150:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> output
 151:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer |= 0x55550000;
 573              		.loc 1 151 0
 574 021c 054B     		ldr	r3, .L25
 575 021e 054A     		ldr	r2, .L25
 576 0220 1268     		ldr	r2, [r2]
 577 0222 0549     		ldr	r1, .L25+4
 578 0224 0A43     		orrs	r2, r1
 579 0226 1A60     		str	r2, [r3]
 152:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 153:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 580              		.loc 1 153 0
 581 0228 FB1D     		adds	r3, r7, #7
 582 022a 1B78     		ldrb	r3, [r3]
 154:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 583              		.loc 1 154 0
 584 022c 1800     		movs	r0, r3
 585 022e BD46     		mov	sp, r7
 586 0230 03B0     		add	sp, sp, #12
 587              		@ sp needed
 588 0232 90BD     		pop	{r4, r7, pc}
 589              	.L26:
 590              		.align	2
 591              	.L25:
 592 0234 00100240 		.word	1073876992
 593 0238 00005555 		.word	1431633920
 594              		.cfi_endproc
 595              	.LFE10:
 597              		.align	1
 598              		.global	ascii_read_status
 599              		.syntax unified
 600              		.code	16
 601              		.thumb_func
 602              		.fpu softvfp
 604              	ascii_read_status:
 605              	.LFB11:
 155:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 156:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_status(void){
 606              		.loc 1 156 0
 607              		.cfi_startproc
 608              		@ args = 0, pretend = 0, frame = 8
 609              		@ frame_needed = 1, uses_anonymous_args = 0
 610 023c 90B5     		push	{r4, r7, lr}
 611              		.cfi_def_cfa_offset 12
 612              		.cfi_offset 4, -12
 613              		.cfi_offset 7, -8
 614              		.cfi_offset 14, -4
 615 023e 83B0     		sub	sp, sp, #12
 616              		.cfi_def_cfa_offset 24
 617 0240 00AF     		add	r7, sp, #0
 618              		.cfi_def_cfa_register 7
 157:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 158:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> input
 159:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer &= 0x0000FFFF;
 619              		.loc 1 159 0
 620 0242 0E4B     		ldr	r3, .L29
 621 0244 0D4A     		ldr	r2, .L29
 622 0246 1268     		ldr	r2, [r2]
 623 0248 1204     		lsls	r2, r2, #16
 624 024a 120C     		lsrs	r2, r2, #16
 625 024c 1A60     		str	r2, [r3]
 160:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 161:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for reading status and address
 162:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 626              		.loc 1 162 0
 627 024e 0120     		movs	r0, #1
 628 0250 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 163:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 629              		.loc 1 163 0
 630 0254 0220     		movs	r0, #2
 631 0256 FFF7FEFF 		bl	ascii_ctrl_bit_set
 164:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 165:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Read values from display
 166:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = ascii_read_controller();
 632              		.loc 1 166 0
 633 025a FC1D     		adds	r4, r7, #7
 634 025c FFF7FEFF 		bl	ascii_read_controller
 635 0260 0300     		movs	r3, r0
 636 0262 2370     		strb	r3, [r4]
 167:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 168:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> output
 169:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer |= 0x55550000;
 637              		.loc 1 169 0
 638 0264 054B     		ldr	r3, .L29
 639 0266 054A     		ldr	r2, .L29
 640 0268 1268     		ldr	r2, [r2]
 641 026a 0549     		ldr	r1, .L29+4
 642 026c 0A43     		orrs	r2, r1
 643 026e 1A60     		str	r2, [r3]
 170:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 171:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 644              		.loc 1 171 0
 645 0270 FB1D     		adds	r3, r7, #7
 646 0272 1B78     		ldrb	r3, [r3]
 172:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 647              		.loc 1 172 0
 648 0274 1800     		movs	r0, r3
 649 0276 BD46     		mov	sp, r7
 650 0278 03B0     		add	sp, sp, #12
 651              		@ sp needed
 652 027a 90BD     		pop	{r4, r7, pc}
 653              	.L30:
 654              		.align	2
 655              	.L29:
 656 027c 00100240 		.word	1073876992
 657 0280 00005555 		.word	1431633920
 658              		.cfi_endproc
 659              	.LFE11:
 661              		.align	1
 662              		.global	ascii_write_controller
 663              		.syntax unified
 664              		.code	16
 665              		.thumb_func
 666              		.fpu softvfp
 668              	ascii_write_controller:
 669              	.LFB12:
 173:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 174:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_controller(unsigned char byte){
 670              		.loc 1 174 0
 671              		.cfi_startproc
 672              		@ args = 0, pretend = 0, frame = 8
 673              		@ frame_needed = 1, uses_anonymous_args = 0
 674 0284 80B5     		push	{r7, lr}
 675              		.cfi_def_cfa_offset 8
 676              		.cfi_offset 7, -8
 677              		.cfi_offset 14, -4
 678 0286 82B0     		sub	sp, sp, #8
 679              		.cfi_def_cfa_offset 16
 680 0288 00AF     		add	r7, sp, #0
 681              		.cfi_def_cfa_register 7
 682 028a 0200     		movs	r2, r0
 683 028c FB1D     		adds	r3, r7, #7
 684 028e 1A70     		strb	r2, [r3]
 175:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 1
 176:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_E);
 685              		.loc 1 176 0
 686 0290 4020     		movs	r0, #64
 687 0292 FFF7FEFF 		bl	ascii_ctrl_bit_set
 177:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 178:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set data register values
 179:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrHigh = byte;
 688              		.loc 1 179 0
 689 0296 064A     		ldr	r2, .L32
 690 0298 FB1D     		adds	r3, r7, #7
 691 029a 1B78     		ldrb	r3, [r3]
 692 029c 1370     		strb	r3, [r2]
 180:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 181:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for 230ns (here at least 250, hope this should still work)
 182:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 693              		.loc 1 182 0
 694 029e FFF7FEFF 		bl	delay_250ns
 183:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 184:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 0
 185:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_E);
 695              		.loc 1 185 0
 696 02a2 4020     		movs	r0, #64
 697 02a4 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 186:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 698              		.loc 1 186 0
 699 02a8 C046     		nop
 700 02aa BD46     		mov	sp, r7
 701 02ac 02B0     		add	sp, sp, #8
 702              		@ sp needed
 703 02ae 80BD     		pop	{r7, pc}
 704              	.L33:
 705              		.align	2
 706              	.L32:
 707 02b0 15100240 		.word	1073877013
 708              		.cfi_endproc
 709              	.LFE12:
 711              		.align	1
 712              		.global	ascii_read_controller
 713              		.syntax unified
 714              		.code	16
 715              		.thumb_func
 716              		.fpu softvfp
 718              	ascii_read_controller:
 719              	.LFB13:
 187:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 188:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_controller(void){
 720              		.loc 1 188 0
 721              		.cfi_startproc
 722              		@ args = 0, pretend = 0, frame = 8
 723              		@ frame_needed = 1, uses_anonymous_args = 0
 724 02b4 80B5     		push	{r7, lr}
 725              		.cfi_def_cfa_offset 8
 726              		.cfi_offset 7, -8
 727              		.cfi_offset 14, -4
 728 02b6 82B0     		sub	sp, sp, #8
 729              		.cfi_def_cfa_offset 16
 730 02b8 00AF     		add	r7, sp, #0
 731              		.cfi_def_cfa_register 7
 189:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 190:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 191:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 1
 192:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_E);
 732              		.loc 1 192 0
 733 02ba 4020     		movs	r0, #64
 734 02bc FFF7FEFF 		bl	ascii_ctrl_bit_set
 193:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 194:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for at least 360ns, here at least 500
 195:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 735              		.loc 1 195 0
 736 02c0 FFF7FEFF 		bl	delay_250ns
 196:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 737              		.loc 1 196 0
 738 02c4 FFF7FEFF 		bl	delay_250ns
 197:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 198:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Read data register
 199:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = portIdrHigh;
 739              		.loc 1 199 0
 740 02c8 064A     		ldr	r2, .L36
 741 02ca FB1D     		adds	r3, r7, #7
 742 02cc 1278     		ldrb	r2, [r2]
 743 02ce 1A70     		strb	r2, [r3]
 200:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 201:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 0
 202:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_E);
 744              		.loc 1 202 0
 745 02d0 4020     		movs	r0, #64
 746 02d2 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 203:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 204:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 747              		.loc 1 204 0
 748 02d6 FB1D     		adds	r3, r7, #7
 749 02d8 1B78     		ldrb	r3, [r3]
 205:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 750              		.loc 1 205 0
 751 02da 1800     		movs	r0, r3
 752 02dc BD46     		mov	sp, r7
 753 02de 02B0     		add	sp, sp, #8
 754              		@ sp needed
 755 02e0 80BD     		pop	{r7, pc}
 756              	.L37:
 757 02e2 C046     		.align	2
 758              	.L36:
 759 02e4 11100240 		.word	1073877009
 760              		.cfi_endproc
 761              	.LFE13:
 763              		.align	1
 764              		.global	ascii_command
 765              		.syntax unified
 766              		.code	16
 767              		.thumb_func
 768              		.fpu softvfp
 770              	ascii_command:
 771              	.LFB14:
 206:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 207:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_command(unsigned char command, unsigned int post_command_delay, unsigned short us){
 772              		.loc 1 207 0
 773              		.cfi_startproc
 774              		@ args = 0, pretend = 0, frame = 8
 775              		@ frame_needed = 1, uses_anonymous_args = 0
 776 02e8 80B5     		push	{r7, lr}
 777              		.cfi_def_cfa_offset 8
 778              		.cfi_offset 7, -8
 779              		.cfi_offset 14, -4
 780 02ea 82B0     		sub	sp, sp, #8
 781              		.cfi_def_cfa_offset 16
 782 02ec 00AF     		add	r7, sp, #0
 783              		.cfi_def_cfa_register 7
 784 02ee 3960     		str	r1, [r7]
 785 02f0 1100     		movs	r1, r2
 786 02f2 FB1D     		adds	r3, r7, #7
 787 02f4 021C     		adds	r2, r0, #0
 788 02f6 1A70     		strb	r2, [r3]
 789 02f8 3B1D     		adds	r3, r7, #4
 790 02fa 0A1C     		adds	r2, r1, #0
 791 02fc 1A80     		strh	r2, [r3]
 208:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare to check if display ready
 209:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 792              		.loc 1 209 0
 793 02fe 0220     		movs	r0, #2
 794 0300 FFF7FEFF 		bl	ascii_ctrl_bit_set
 210:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 795              		.loc 1 210 0
 796 0304 0120     		movs	r0, #1
 797 0306 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 211:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 212:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 213:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(ascii_read_status() & 0x80 != 0);
 798              		.loc 1 213 0
 799 030a C046     		nop
 800              	.L39:
 801              		.loc 1 213 0 is_stmt 0 discriminator 1
 802 030c FFF7FEFF 		bl	ascii_read_status
 803 0310 0300     		movs	r3, r0
 804 0312 1A00     		movs	r2, r3
 805 0314 0123     		movs	r3, #1
 806 0316 1340     		ands	r3, r2
 807 0318 F8D1     		bne	.L39
 214:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(8);
 808              		.loc 1 214 0 is_stmt 1
 809 031a 0820     		movs	r0, #8
 810 031c FFF7FEFF 		bl	delay_mikro
 215:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 216:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Send command
 217:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_cmd(command);
 811              		.loc 1 217 0
 812 0320 FB1D     		adds	r3, r7, #7
 813 0322 1B78     		ldrb	r3, [r3]
 814 0324 1800     		movs	r0, r3
 815 0326 FFF7FEFF 		bl	ascii_write_cmd
 218:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 219:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for the entered amount of time
 220:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(us == 1){
 816              		.loc 1 220 0
 817 032a 3B1D     		adds	r3, r7, #4
 818 032c 1B88     		ldrh	r3, [r3]
 819 032e 012B     		cmp	r3, #1
 820 0330 04D1     		bne	.L40
 221:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_mikro(post_command_delay);
 821              		.loc 1 221 0
 822 0332 3B68     		ldr	r3, [r7]
 823 0334 1800     		movs	r0, r3
 824 0336 FFF7FEFF 		bl	delay_mikro
 222:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     } else {
 223:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_milli(post_command_delay);
 224:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 225:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 825              		.loc 1 225 0
 826 033a 03E0     		b	.L42
 827              	.L40:
 223:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 828              		.loc 1 223 0
 829 033c 3B68     		ldr	r3, [r7]
 830 033e 1800     		movs	r0, r3
 831 0340 FFF7FEFF 		bl	delay_milli
 832              	.L42:
 833              		.loc 1 225 0
 834 0344 C046     		nop
 835 0346 BD46     		mov	sp, r7
 836 0348 02B0     		add	sp, sp, #8
 837              		@ sp needed
 838 034a 80BD     		pop	{r7, pc}
 839              		.cfi_endproc
 840              	.LFE14:
 842              		.align	1
 843              		.global	ascii_write_char
 844              		.syntax unified
 845              		.code	16
 846              		.thumb_func
 847              		.fpu softvfp
 849              	ascii_write_char:
 850              	.LFB15:
 226:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 227:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_char(unsigned char character){
 851              		.loc 1 227 0
 852              		.cfi_startproc
 853              		@ args = 0, pretend = 0, frame = 8
 854              		@ frame_needed = 1, uses_anonymous_args = 0
 855 034c 80B5     		push	{r7, lr}
 856              		.cfi_def_cfa_offset 8
 857              		.cfi_offset 7, -8
 858              		.cfi_offset 14, -4
 859 034e 82B0     		sub	sp, sp, #8
 860              		.cfi_def_cfa_offset 16
 861 0350 00AF     		add	r7, sp, #0
 862              		.cfi_def_cfa_register 7
 863 0352 0200     		movs	r2, r0
 864 0354 FB1D     		adds	r3, r7, #7
 865 0356 1A70     		strb	r2, [r3]
 228:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare to check if display ready
 229:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 866              		.loc 1 229 0
 867 0358 0220     		movs	r0, #2
 868 035a FFF7FEFF 		bl	ascii_ctrl_bit_set
 230:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 869              		.loc 1 230 0
 870 035e 0120     		movs	r0, #1
 871 0360 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 231:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 232:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 233:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(ascii_read_status() & 0x80 != 0);
 872              		.loc 1 233 0
 873 0364 C046     		nop
 874              	.L44:
 875              		.loc 1 233 0 is_stmt 0 discriminator 1
 876 0366 FFF7FEFF 		bl	ascii_read_status
 877 036a 0300     		movs	r3, r0
 878 036c 1A00     		movs	r2, r3
 879 036e 0123     		movs	r3, #1
 880 0370 1340     		ands	r3, r2
 881 0372 F8D1     		bne	.L44
 234:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(8);
 882              		.loc 1 234 0 is_stmt 1
 883 0374 0820     		movs	r0, #8
 884 0376 FFF7FEFF 		bl	delay_mikro
 235:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 236:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write character do display
 237:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_data(character);
 885              		.loc 1 237 0
 886 037a FB1D     		adds	r3, r7, #7
 887 037c 1B78     		ldrb	r3, [r3]
 888 037e 1800     		movs	r0, r3
 889 0380 FFF7FEFF 		bl	ascii_write_data
 238:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 239:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Delay for 43us
 240:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(43);
 890              		.loc 1 240 0
 891 0384 2B20     		movs	r0, #43
 892 0386 FFF7FEFF 		bl	delay_mikro
 241:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 893              		.loc 1 241 0
 894 038a C046     		nop
 895 038c BD46     		mov	sp, r7
 896 038e 02B0     		add	sp, sp, #8
 897              		@ sp needed
 898 0390 80BD     		pop	{r7, pc}
 899              		.cfi_endproc
 900              	.LFE15:
 902              		.align	1
 903              		.global	gotoxy
 904              		.syntax unified
 905              		.code	16
 906              		.thumb_func
 907              		.fpu softvfp
 909              	gotoxy:
 910              	.LFB16:
 242:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 243:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void gotoxy(unsigned int row, unsigned int column){
 911              		.loc 1 243 0
 912              		.cfi_startproc
 913              		@ args = 0, pretend = 0, frame = 16
 914              		@ frame_needed = 1, uses_anonymous_args = 0
 915 0392 80B5     		push	{r7, lr}
 916              		.cfi_def_cfa_offset 8
 917              		.cfi_offset 7, -8
 918              		.cfi_offset 14, -4
 919 0394 84B0     		sub	sp, sp, #16
 920              		.cfi_def_cfa_offset 24
 921 0396 00AF     		add	r7, sp, #0
 922              		.cfi_def_cfa_register 7
 923 0398 7860     		str	r0, [r7, #4]
 924 039a 3960     		str	r1, [r7]
 244:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Make sure row not out of bounds
 245:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(row < 1 || row > 20){
 925              		.loc 1 245 0
 926 039c 7B68     		ldr	r3, [r7, #4]
 927 039e 002B     		cmp	r3, #0
 928 03a0 25D0     		beq	.L52
 929              		.loc 1 245 0 is_stmt 0 discriminator 1
 930 03a2 7B68     		ldr	r3, [r7, #4]
 931 03a4 142B     		cmp	r3, #20
 932 03a6 22D8     		bhi	.L52
 246:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         return;
 247:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 248:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Make sure column not out of bounds
 249:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(column < 1 || column > 2){
 933              		.loc 1 249 0 is_stmt 1
 934 03a8 3B68     		ldr	r3, [r7]
 935 03aa 002B     		cmp	r3, #0
 936 03ac 21D0     		beq	.L53
 937              		.loc 1 249 0 is_stmt 0 discriminator 1
 938 03ae 3B68     		ldr	r3, [r7]
 939 03b0 022B     		cmp	r3, #2
 940 03b2 1ED8     		bhi	.L53
 250:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         return;
 251:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 252:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 253:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set address to the correct location
 254:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char address = row - 1;
 941              		.loc 1 254 0 is_stmt 1
 942 03b4 7B68     		ldr	r3, [r7, #4]
 943 03b6 DAB2     		uxtb	r2, r3
 944 03b8 0F23     		movs	r3, #15
 945 03ba FB18     		adds	r3, r7, r3
 946 03bc 013A     		subs	r2, r2, #1
 947 03be 1A70     		strb	r2, [r3]
 255:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(column == 2){
 948              		.loc 1 255 0
 949 03c0 3B68     		ldr	r3, [r7]
 950 03c2 022B     		cmp	r3, #2
 951 03c4 06D1     		bne	.L51
 256:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         address += 0x40;
 952              		.loc 1 256 0
 953 03c6 0F23     		movs	r3, #15
 954 03c8 FB18     		adds	r3, r7, r3
 955 03ca 0F22     		movs	r2, #15
 956 03cc BA18     		adds	r2, r7, r2
 957 03ce 1278     		ldrb	r2, [r2]
 958 03d0 4032     		adds	r2, r2, #64
 959 03d2 1A70     		strb	r2, [r3]
 960              	.L51:
 257:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 258:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 259:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Send command to mark correct spot
 260:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x80 | address, 39, 1);
 961              		.loc 1 260 0
 962 03d4 0F23     		movs	r3, #15
 963 03d6 FB18     		adds	r3, r7, r3
 964 03d8 1B78     		ldrb	r3, [r3]
 965 03da 8022     		movs	r2, #128
 966 03dc 5242     		rsbs	r2, r2, #0
 967 03de 1343     		orrs	r3, r2
 968 03e0 DBB2     		uxtb	r3, r3
 969 03e2 0122     		movs	r2, #1
 970 03e4 2721     		movs	r1, #39
 971 03e6 1800     		movs	r0, r3
 972 03e8 FFF7FEFF 		bl	ascii_command
 973 03ec 02E0     		b	.L45
 974              	.L52:
 246:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 975              		.loc 1 246 0
 976 03ee C046     		nop
 977 03f0 00E0     		b	.L45
 978              	.L53:
 250:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 979              		.loc 1 250 0
 980 03f2 C046     		nop
 981              	.L45:
 261:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 982              		.loc 1 261 0
 983 03f4 BD46     		mov	sp, r7
 984 03f6 04B0     		add	sp, sp, #16
 985              		@ sp needed
 986 03f8 80BD     		pop	{r7, pc}
 987              		.cfi_endproc
 988              	.LFE16:
 990              		.align	1
 991              		.global	ascii_write_string
 992              		.syntax unified
 993              		.code	16
 994              		.thumb_func
 995              		.fpu softvfp
 997              	ascii_write_string:
 998              	.LFB17:
 262:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 263:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_string(char *s){
 999              		.loc 1 263 0
 1000              		.cfi_startproc
 1001              		@ args = 0, pretend = 0, frame = 8
 1002              		@ frame_needed = 1, uses_anonymous_args = 0
 1003 03fa 80B5     		push	{r7, lr}
 1004              		.cfi_def_cfa_offset 8
 1005              		.cfi_offset 7, -8
 1006              		.cfi_offset 14, -4
 1007 03fc 82B0     		sub	sp, sp, #8
 1008              		.cfi_def_cfa_offset 16
 1009 03fe 00AF     		add	r7, sp, #0
 1010              		.cfi_def_cfa_register 7
 1011 0400 7860     		str	r0, [r7, #4]
 264:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write each character onto the display until the finishing character is reached
 265:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(*s != 0){
 1012              		.loc 1 265 0
 1013 0402 06E0     		b	.L55
 1014              	.L56:
 266:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 1015              		.loc 1 266 0
 1016 0404 7B68     		ldr	r3, [r7, #4]
 1017 0406 5A1C     		adds	r2, r3, #1
 1018 0408 7A60     		str	r2, [r7, #4]
 1019 040a 1B78     		ldrb	r3, [r3]
 1020 040c 1800     		movs	r0, r3
 1021 040e FFF7FEFF 		bl	ascii_write_char
 1022              	.L55:
 265:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 1023              		.loc 1 265 0
 1024 0412 7B68     		ldr	r3, [r7, #4]
 1025 0414 1B78     		ldrb	r3, [r3]
 1026 0416 002B     		cmp	r3, #0
 1027 0418 F4D1     		bne	.L56
 267:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 268:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 1028              		.loc 1 268 0
 1029 041a C046     		nop
 1030 041c BD46     		mov	sp, r7
 1031 041e 02B0     		add	sp, sp, #8
 1032              		@ sp needed
 1033 0420 80BD     		pop	{r7, pc}
 1034              		.cfi_endproc
 1035              	.LFE17:
 1037              	.Letext0:
