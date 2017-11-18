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
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define MILLI_TO_MIKRO 1000
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
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Clear display
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
  88:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x6, 39, 1);
 178              		.loc 1 88 0
 179 009a 0122     		movs	r2, #1
 180 009c 2721     		movs	r1, #39
 181 009e 0620     		movs	r0, #6
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
 348 014c FA22     		movs	r2, #250
 349 014e 9200     		lsls	r2, r2, #2
 350 0150 5343     		muls	r3, r2
 351 0152 1800     		movs	r0, r3
 352 0154 FFF7FEFF 		bl	delay_mikro
 111:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 353              		.loc 1 111 0
 354 0158 C046     		nop
 355 015a BD46     		mov	sp, r7
 356 015c 02B0     		add	sp, sp, #8
 357              		@ sp needed
 358 015e 80BD     		pop	{r7, pc}
 359              		.cfi_endproc
 360              	.LFE5:
 362              		.align	1
 363              		.global	ascii_ctrl_bit_set
 364              		.syntax unified
 365              		.code	16
 366              		.thumb_func
 367              		.fpu softvfp
 369              	ascii_ctrl_bit_set:
 370              	.LFB6:
 112:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 113:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_set(unsigned char x){
 371              		.loc 1 113 0
 372              		.cfi_startproc
 373              		@ args = 0, pretend = 0, frame = 8
 374              		@ frame_needed = 1, uses_anonymous_args = 0
 375 0160 80B5     		push	{r7, lr}
 376              		.cfi_def_cfa_offset 8
 377              		.cfi_offset 7, -8
 378              		.cfi_offset 14, -4
 379 0162 82B0     		sub	sp, sp, #8
 380              		.cfi_def_cfa_offset 16
 381 0164 00AF     		add	r7, sp, #0
 382              		.cfi_def_cfa_register 7
 383 0166 0200     		movs	r2, r0
 384 0168 FB1D     		adds	r3, r7, #7
 385 016a 1A70     		strb	r2, [r3]
 114:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set bits that are 1 in x to 1, leave rest be
 115:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrLow |= x;
 386              		.loc 1 115 0
 387 016c 0549     		ldr	r1, .L16
 388 016e 054B     		ldr	r3, .L16
 389 0170 1A78     		ldrb	r2, [r3]
 390 0172 FB1D     		adds	r3, r7, #7
 391 0174 1B78     		ldrb	r3, [r3]
 392 0176 1343     		orrs	r3, r2
 393 0178 DBB2     		uxtb	r3, r3
 394 017a 0B70     		strb	r3, [r1]
 116:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 395              		.loc 1 116 0
 396 017c C046     		nop
 397 017e BD46     		mov	sp, r7
 398 0180 02B0     		add	sp, sp, #8
 399              		@ sp needed
 400 0182 80BD     		pop	{r7, pc}
 401              	.L17:
 402              		.align	2
 403              	.L16:
 404 0184 14100240 		.word	1073877012
 405              		.cfi_endproc
 406              	.LFE6:
 408              		.align	1
 409              		.global	ascii_ctrl_bit_clear
 410              		.syntax unified
 411              		.code	16
 412              		.thumb_func
 413              		.fpu softvfp
 415              	ascii_ctrl_bit_clear:
 416              	.LFB7:
 117:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 118:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_clear(unsigned char x){
 417              		.loc 1 118 0
 418              		.cfi_startproc
 419              		@ args = 0, pretend = 0, frame = 8
 420              		@ frame_needed = 1, uses_anonymous_args = 0
 421 0188 80B5     		push	{r7, lr}
 422              		.cfi_def_cfa_offset 8
 423              		.cfi_offset 7, -8
 424              		.cfi_offset 14, -4
 425 018a 82B0     		sub	sp, sp, #8
 426              		.cfi_def_cfa_offset 16
 427 018c 00AF     		add	r7, sp, #0
 428              		.cfi_def_cfa_register 7
 429 018e 0200     		movs	r2, r0
 430 0190 FB1D     		adds	r3, r7, #7
 431 0192 1A70     		strb	r2, [r3]
 119:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set any bits that are 0 in x to 0, leave rest as they were
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrLow &= x;
 432              		.loc 1 120 0
 433 0194 0549     		ldr	r1, .L19
 434 0196 054B     		ldr	r3, .L19
 435 0198 1B78     		ldrb	r3, [r3]
 436 019a FA1D     		adds	r2, r7, #7
 437 019c 1278     		ldrb	r2, [r2]
 438 019e 1340     		ands	r3, r2
 439 01a0 DBB2     		uxtb	r3, r3
 440 01a2 0B70     		strb	r3, [r1]
 121:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 441              		.loc 1 121 0
 442 01a4 C046     		nop
 443 01a6 BD46     		mov	sp, r7
 444 01a8 02B0     		add	sp, sp, #8
 445              		@ sp needed
 446 01aa 80BD     		pop	{r7, pc}
 447              	.L20:
 448              		.align	2
 449              	.L19:
 450 01ac 14100240 		.word	1073877012
 451              		.cfi_endproc
 452              	.LFE7:
 454              		.align	1
 455              		.global	ascii_write_cmd
 456              		.syntax unified
 457              		.code	16
 458              		.thumb_func
 459              		.fpu softvfp
 461              	ascii_write_cmd:
 462              	.LFB8:
 122:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 123:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_cmd(unsigned char command){
 463              		.loc 1 123 0
 464              		.cfi_startproc
 465              		@ args = 0, pretend = 0, frame = 8
 466              		@ frame_needed = 1, uses_anonymous_args = 0
 467 01b0 80B5     		push	{r7, lr}
 468              		.cfi_def_cfa_offset 8
 469              		.cfi_offset 7, -8
 470              		.cfi_offset 14, -4
 471 01b2 82B0     		sub	sp, sp, #8
 472              		.cfi_def_cfa_offset 16
 473 01b4 00AF     		add	r7, sp, #0
 474              		.cfi_def_cfa_register 7
 475 01b6 0200     		movs	r2, r0
 476 01b8 FB1D     		adds	r3, r7, #7
 477 01ba 1A70     		strb	r2, [r3]
 124:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for sending command
 125:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS | B_RW);
 478              		.loc 1 125 0
 479 01bc 0320     		movs	r0, #3
 480 01be FFF7FEFF 		bl	ascii_ctrl_bit_clear
 126:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 127:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write command
 128:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_controller(command);
 481              		.loc 1 128 0
 482 01c2 FB1D     		adds	r3, r7, #7
 483 01c4 1B78     		ldrb	r3, [r3]
 484 01c6 1800     		movs	r0, r3
 485 01c8 FFF7FEFF 		bl	ascii_write_controller
 129:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 486              		.loc 1 129 0
 487 01cc C046     		nop
 488 01ce BD46     		mov	sp, r7
 489 01d0 02B0     		add	sp, sp, #8
 490              		@ sp needed
 491 01d2 80BD     		pop	{r7, pc}
 492              		.cfi_endproc
 493              	.LFE8:
 495              		.align	1
 496              		.global	ascii_write_data
 497              		.syntax unified
 498              		.code	16
 499              		.thumb_func
 500              		.fpu softvfp
 502              	ascii_write_data:
 503              	.LFB9:
 130:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 131:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_data(unsigned char data){
 504              		.loc 1 131 0
 505              		.cfi_startproc
 506              		@ args = 0, pretend = 0, frame = 8
 507              		@ frame_needed = 1, uses_anonymous_args = 0
 508 01d4 80B5     		push	{r7, lr}
 509              		.cfi_def_cfa_offset 8
 510              		.cfi_offset 7, -8
 511              		.cfi_offset 14, -4
 512 01d6 82B0     		sub	sp, sp, #8
 513              		.cfi_def_cfa_offset 16
 514 01d8 00AF     		add	r7, sp, #0
 515              		.cfi_def_cfa_register 7
 516 01da 0200     		movs	r2, r0
 517 01dc FB1D     		adds	r3, r7, #7
 518 01de 1A70     		strb	r2, [r3]
 132:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for writing data
 133:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RS);
 519              		.loc 1 133 0
 520 01e0 0120     		movs	r0, #1
 521 01e2 FFF7FEFF 		bl	ascii_ctrl_bit_set
 134:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RW);
 522              		.loc 1 134 0
 523 01e6 0220     		movs	r0, #2
 524 01e8 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 135:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 136:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write data
 137:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_controller(data);
 525              		.loc 1 137 0
 526 01ec FB1D     		adds	r3, r7, #7
 527 01ee 1B78     		ldrb	r3, [r3]
 528 01f0 1800     		movs	r0, r3
 529 01f2 FFF7FEFF 		bl	ascii_write_controller
 138:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 530              		.loc 1 138 0
 531 01f6 C046     		nop
 532 01f8 BD46     		mov	sp, r7
 533 01fa 02B0     		add	sp, sp, #8
 534              		@ sp needed
 535 01fc 80BD     		pop	{r7, pc}
 536              		.cfi_endproc
 537              	.LFE9:
 539              		.align	1
 540              		.global	ascii_read_data
 541              		.syntax unified
 542              		.code	16
 543              		.thumb_func
 544              		.fpu softvfp
 546              	ascii_read_data:
 547              	.LFB10:
 139:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 140:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_data(void){
 548              		.loc 1 140 0
 549              		.cfi_startproc
 550              		@ args = 0, pretend = 0, frame = 8
 551              		@ frame_needed = 1, uses_anonymous_args = 0
 552 01fe 90B5     		push	{r4, r7, lr}
 553              		.cfi_def_cfa_offset 12
 554              		.cfi_offset 4, -12
 555              		.cfi_offset 7, -8
 556              		.cfi_offset 14, -4
 557 0200 83B0     		sub	sp, sp, #12
 558              		.cfi_def_cfa_offset 24
 559 0202 00AF     		add	r7, sp, #0
 560              		.cfi_def_cfa_register 7
 141:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 142:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> input
 143:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer &= 0x0000FFFF;
 561              		.loc 1 143 0
 562 0204 0C4B     		ldr	r3, .L25
 563 0206 0C4A     		ldr	r2, .L25
 564 0208 1268     		ldr	r2, [r2]
 565 020a 1204     		lsls	r2, r2, #16
 566 020c 120C     		lsrs	r2, r2, #16
 567 020e 1A60     		str	r2, [r3]
 144:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 145:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for reading data
 146:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RS | B_RW);
 568              		.loc 1 146 0
 569 0210 0320     		movs	r0, #3
 570 0212 FFF7FEFF 		bl	ascii_ctrl_bit_set
 147:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 148:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = ascii_read_controller();
 571              		.loc 1 148 0
 572 0216 FC1D     		adds	r4, r7, #7
 573 0218 FFF7FEFF 		bl	ascii_read_controller
 574 021c 0300     		movs	r3, r0
 575 021e 2370     		strb	r3, [r4]
 149:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 150:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> output
 151:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer |= 0x55550000;
 576              		.loc 1 151 0
 577 0220 054B     		ldr	r3, .L25
 578 0222 054A     		ldr	r2, .L25
 579 0224 1268     		ldr	r2, [r2]
 580 0226 0549     		ldr	r1, .L25+4
 581 0228 0A43     		orrs	r2, r1
 582 022a 1A60     		str	r2, [r3]
 152:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 153:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 583              		.loc 1 153 0
 584 022c FB1D     		adds	r3, r7, #7
 585 022e 1B78     		ldrb	r3, [r3]
 154:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 586              		.loc 1 154 0
 587 0230 1800     		movs	r0, r3
 588 0232 BD46     		mov	sp, r7
 589 0234 03B0     		add	sp, sp, #12
 590              		@ sp needed
 591 0236 90BD     		pop	{r4, r7, pc}
 592              	.L26:
 593              		.align	2
 594              	.L25:
 595 0238 00100240 		.word	1073876992
 596 023c 00005555 		.word	1431633920
 597              		.cfi_endproc
 598              	.LFE10:
 600              		.align	1
 601              		.global	ascii_read_status
 602              		.syntax unified
 603              		.code	16
 604              		.thumb_func
 605              		.fpu softvfp
 607              	ascii_read_status:
 608              	.LFB11:
 155:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 156:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_status(void){
 609              		.loc 1 156 0
 610              		.cfi_startproc
 611              		@ args = 0, pretend = 0, frame = 8
 612              		@ frame_needed = 1, uses_anonymous_args = 0
 613 0240 90B5     		push	{r4, r7, lr}
 614              		.cfi_def_cfa_offset 12
 615              		.cfi_offset 4, -12
 616              		.cfi_offset 7, -8
 617              		.cfi_offset 14, -4
 618 0242 83B0     		sub	sp, sp, #12
 619              		.cfi_def_cfa_offset 24
 620 0244 00AF     		add	r7, sp, #0
 621              		.cfi_def_cfa_register 7
 157:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 158:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> input
 159:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer &= 0x0000FFFF;
 622              		.loc 1 159 0
 623 0246 0E4B     		ldr	r3, .L29
 624 0248 0D4A     		ldr	r2, .L29
 625 024a 1268     		ldr	r2, [r2]
 626 024c 1204     		lsls	r2, r2, #16
 627 024e 120C     		lsrs	r2, r2, #16
 628 0250 1A60     		str	r2, [r3]
 160:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 161:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for reading status and address
 162:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 629              		.loc 1 162 0
 630 0252 0120     		movs	r0, #1
 631 0254 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 163:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 632              		.loc 1 163 0
 633 0258 0220     		movs	r0, #2
 634 025a FFF7FEFF 		bl	ascii_ctrl_bit_set
 164:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 165:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Read values from display
 166:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = ascii_read_controller();
 635              		.loc 1 166 0
 636 025e FC1D     		adds	r4, r7, #7
 637 0260 FFF7FEFF 		bl	ascii_read_controller
 638 0264 0300     		movs	r3, r0
 639 0266 2370     		strb	r3, [r4]
 167:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 168:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> output
 169:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer |= 0x55550000;
 640              		.loc 1 169 0
 641 0268 054B     		ldr	r3, .L29
 642 026a 054A     		ldr	r2, .L29
 643 026c 1268     		ldr	r2, [r2]
 644 026e 0549     		ldr	r1, .L29+4
 645 0270 0A43     		orrs	r2, r1
 646 0272 1A60     		str	r2, [r3]
 170:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 171:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 647              		.loc 1 171 0
 648 0274 FB1D     		adds	r3, r7, #7
 649 0276 1B78     		ldrb	r3, [r3]
 172:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 650              		.loc 1 172 0
 651 0278 1800     		movs	r0, r3
 652 027a BD46     		mov	sp, r7
 653 027c 03B0     		add	sp, sp, #12
 654              		@ sp needed
 655 027e 90BD     		pop	{r4, r7, pc}
 656              	.L30:
 657              		.align	2
 658              	.L29:
 659 0280 00100240 		.word	1073876992
 660 0284 00005555 		.word	1431633920
 661              		.cfi_endproc
 662              	.LFE11:
 664              		.align	1
 665              		.global	ascii_write_controller
 666              		.syntax unified
 667              		.code	16
 668              		.thumb_func
 669              		.fpu softvfp
 671              	ascii_write_controller:
 672              	.LFB12:
 173:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 174:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_controller(unsigned char byte){
 673              		.loc 1 174 0
 674              		.cfi_startproc
 675              		@ args = 0, pretend = 0, frame = 8
 676              		@ frame_needed = 1, uses_anonymous_args = 0
 677 0288 80B5     		push	{r7, lr}
 678              		.cfi_def_cfa_offset 8
 679              		.cfi_offset 7, -8
 680              		.cfi_offset 14, -4
 681 028a 82B0     		sub	sp, sp, #8
 682              		.cfi_def_cfa_offset 16
 683 028c 00AF     		add	r7, sp, #0
 684              		.cfi_def_cfa_register 7
 685 028e 0200     		movs	r2, r0
 686 0290 FB1D     		adds	r3, r7, #7
 687 0292 1A70     		strb	r2, [r3]
 175:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 1
 176:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_E);
 688              		.loc 1 176 0
 689 0294 4020     		movs	r0, #64
 690 0296 FFF7FEFF 		bl	ascii_ctrl_bit_set
 177:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 178:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set data register values
 179:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrHigh = byte;
 691              		.loc 1 179 0
 692 029a 064A     		ldr	r2, .L32
 693 029c FB1D     		adds	r3, r7, #7
 694 029e 1B78     		ldrb	r3, [r3]
 695 02a0 1370     		strb	r3, [r2]
 180:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 181:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for 230ns (here at least 250, hope this should still work)
 182:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 696              		.loc 1 182 0
 697 02a2 FFF7FEFF 		bl	delay_250ns
 183:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 184:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 0
 185:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_E);
 698              		.loc 1 185 0
 699 02a6 4020     		movs	r0, #64
 700 02a8 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 186:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 701              		.loc 1 186 0
 702 02ac C046     		nop
 703 02ae BD46     		mov	sp, r7
 704 02b0 02B0     		add	sp, sp, #8
 705              		@ sp needed
 706 02b2 80BD     		pop	{r7, pc}
 707              	.L33:
 708              		.align	2
 709              	.L32:
 710 02b4 15100240 		.word	1073877013
 711              		.cfi_endproc
 712              	.LFE12:
 714              		.align	1
 715              		.global	ascii_read_controller
 716              		.syntax unified
 717              		.code	16
 718              		.thumb_func
 719              		.fpu softvfp
 721              	ascii_read_controller:
 722              	.LFB13:
 187:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 188:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_controller(void){
 723              		.loc 1 188 0
 724              		.cfi_startproc
 725              		@ args = 0, pretend = 0, frame = 8
 726              		@ frame_needed = 1, uses_anonymous_args = 0
 727 02b8 80B5     		push	{r7, lr}
 728              		.cfi_def_cfa_offset 8
 729              		.cfi_offset 7, -8
 730              		.cfi_offset 14, -4
 731 02ba 82B0     		sub	sp, sp, #8
 732              		.cfi_def_cfa_offset 16
 733 02bc 00AF     		add	r7, sp, #0
 734              		.cfi_def_cfa_register 7
 189:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 190:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 191:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 1
 192:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_E);
 735              		.loc 1 192 0
 736 02be 4020     		movs	r0, #64
 737 02c0 FFF7FEFF 		bl	ascii_ctrl_bit_set
 193:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 194:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for at least 360ns, here at least 500
 195:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 738              		.loc 1 195 0
 739 02c4 FFF7FEFF 		bl	delay_250ns
 196:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 740              		.loc 1 196 0
 741 02c8 FFF7FEFF 		bl	delay_250ns
 197:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 198:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Read data register
 199:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = portIdrHigh;
 742              		.loc 1 199 0
 743 02cc 064A     		ldr	r2, .L36
 744 02ce FB1D     		adds	r3, r7, #7
 745 02d0 1278     		ldrb	r2, [r2]
 746 02d2 1A70     		strb	r2, [r3]
 200:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 201:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 0
 202:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_E);
 747              		.loc 1 202 0
 748 02d4 4020     		movs	r0, #64
 749 02d6 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 203:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 204:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 750              		.loc 1 204 0
 751 02da FB1D     		adds	r3, r7, #7
 752 02dc 1B78     		ldrb	r3, [r3]
 205:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 753              		.loc 1 205 0
 754 02de 1800     		movs	r0, r3
 755 02e0 BD46     		mov	sp, r7
 756 02e2 02B0     		add	sp, sp, #8
 757              		@ sp needed
 758 02e4 80BD     		pop	{r7, pc}
 759              	.L37:
 760 02e6 C046     		.align	2
 761              	.L36:
 762 02e8 11100240 		.word	1073877009
 763              		.cfi_endproc
 764              	.LFE13:
 766              		.align	1
 767              		.global	ascii_command
 768              		.syntax unified
 769              		.code	16
 770              		.thumb_func
 771              		.fpu softvfp
 773              	ascii_command:
 774              	.LFB14:
 206:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 207:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_command(unsigned char command, unsigned int post_command_delay, unsigned short us){
 775              		.loc 1 207 0
 776              		.cfi_startproc
 777              		@ args = 0, pretend = 0, frame = 8
 778              		@ frame_needed = 1, uses_anonymous_args = 0
 779 02ec 80B5     		push	{r7, lr}
 780              		.cfi_def_cfa_offset 8
 781              		.cfi_offset 7, -8
 782              		.cfi_offset 14, -4
 783 02ee 82B0     		sub	sp, sp, #8
 784              		.cfi_def_cfa_offset 16
 785 02f0 00AF     		add	r7, sp, #0
 786              		.cfi_def_cfa_register 7
 787 02f2 3960     		str	r1, [r7]
 788 02f4 1100     		movs	r1, r2
 789 02f6 FB1D     		adds	r3, r7, #7
 790 02f8 021C     		adds	r2, r0, #0
 791 02fa 1A70     		strb	r2, [r3]
 792 02fc 3B1D     		adds	r3, r7, #4
 793 02fe 0A1C     		adds	r2, r1, #0
 794 0300 1A80     		strh	r2, [r3]
 208:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare to check if display ready
 209:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 795              		.loc 1 209 0
 796 0302 0220     		movs	r0, #2
 797 0304 FFF7FEFF 		bl	ascii_ctrl_bit_set
 210:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 798              		.loc 1 210 0
 799 0308 0120     		movs	r0, #1
 800 030a FFF7FEFF 		bl	ascii_ctrl_bit_clear
 211:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 212:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 213:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(ascii_read_status() & 0x80 != 0);
 801              		.loc 1 213 0
 802 030e C046     		nop
 803              	.L39:
 804              		.loc 1 213 0 is_stmt 0 discriminator 1
 805 0310 FFF7FEFF 		bl	ascii_read_status
 806 0314 0300     		movs	r3, r0
 807 0316 1A00     		movs	r2, r3
 808 0318 0123     		movs	r3, #1
 809 031a 1340     		ands	r3, r2
 810 031c F8D1     		bne	.L39
 214:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(8);
 811              		.loc 1 214 0 is_stmt 1
 812 031e 0820     		movs	r0, #8
 813 0320 FFF7FEFF 		bl	delay_mikro
 215:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 216:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Send command
 217:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_cmd(command);
 814              		.loc 1 217 0
 815 0324 FB1D     		adds	r3, r7, #7
 816 0326 1B78     		ldrb	r3, [r3]
 817 0328 1800     		movs	r0, r3
 818 032a FFF7FEFF 		bl	ascii_write_cmd
 218:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 219:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for the entered amount of time
 220:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(us == 1){
 819              		.loc 1 220 0
 820 032e 3B1D     		adds	r3, r7, #4
 821 0330 1B88     		ldrh	r3, [r3]
 822 0332 012B     		cmp	r3, #1
 823 0334 04D1     		bne	.L40
 221:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_mikro(post_command_delay);
 824              		.loc 1 221 0
 825 0336 3B68     		ldr	r3, [r7]
 826 0338 1800     		movs	r0, r3
 827 033a FFF7FEFF 		bl	delay_mikro
 222:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     } else {
 223:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_milli(post_command_delay);
 224:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 225:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 828              		.loc 1 225 0
 829 033e 03E0     		b	.L42
 830              	.L40:
 223:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 831              		.loc 1 223 0
 832 0340 3B68     		ldr	r3, [r7]
 833 0342 1800     		movs	r0, r3
 834 0344 FFF7FEFF 		bl	delay_milli
 835              	.L42:
 836              		.loc 1 225 0
 837 0348 C046     		nop
 838 034a BD46     		mov	sp, r7
 839 034c 02B0     		add	sp, sp, #8
 840              		@ sp needed
 841 034e 80BD     		pop	{r7, pc}
 842              		.cfi_endproc
 843              	.LFE14:
 845              		.align	1
 846              		.global	ascii_write_char
 847              		.syntax unified
 848              		.code	16
 849              		.thumb_func
 850              		.fpu softvfp
 852              	ascii_write_char:
 853              	.LFB15:
 226:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 227:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_char(unsigned char character){
 854              		.loc 1 227 0
 855              		.cfi_startproc
 856              		@ args = 0, pretend = 0, frame = 8
 857              		@ frame_needed = 1, uses_anonymous_args = 0
 858 0350 80B5     		push	{r7, lr}
 859              		.cfi_def_cfa_offset 8
 860              		.cfi_offset 7, -8
 861              		.cfi_offset 14, -4
 862 0352 82B0     		sub	sp, sp, #8
 863              		.cfi_def_cfa_offset 16
 864 0354 00AF     		add	r7, sp, #0
 865              		.cfi_def_cfa_register 7
 866 0356 0200     		movs	r2, r0
 867 0358 FB1D     		adds	r3, r7, #7
 868 035a 1A70     		strb	r2, [r3]
 228:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare to check if display ready
 229:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 869              		.loc 1 229 0
 870 035c 0220     		movs	r0, #2
 871 035e FFF7FEFF 		bl	ascii_ctrl_bit_set
 230:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 872              		.loc 1 230 0
 873 0362 0120     		movs	r0, #1
 874 0364 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 231:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 232:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 233:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(ascii_read_status() & 0x80 != 0);
 875              		.loc 1 233 0
 876 0368 C046     		nop
 877              	.L44:
 878              		.loc 1 233 0 is_stmt 0 discriminator 1
 879 036a FFF7FEFF 		bl	ascii_read_status
 880 036e 0300     		movs	r3, r0
 881 0370 1A00     		movs	r2, r3
 882 0372 0123     		movs	r3, #1
 883 0374 1340     		ands	r3, r2
 884 0376 F8D1     		bne	.L44
 234:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(8);
 885              		.loc 1 234 0 is_stmt 1
 886 0378 0820     		movs	r0, #8
 887 037a FFF7FEFF 		bl	delay_mikro
 235:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 236:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write character do display
 237:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_data(character);
 888              		.loc 1 237 0
 889 037e FB1D     		adds	r3, r7, #7
 890 0380 1B78     		ldrb	r3, [r3]
 891 0382 1800     		movs	r0, r3
 892 0384 FFF7FEFF 		bl	ascii_write_data
 238:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 239:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Delay for 43us
 240:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(43);
 893              		.loc 1 240 0
 894 0388 2B20     		movs	r0, #43
 895 038a FFF7FEFF 		bl	delay_mikro
 241:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 896              		.loc 1 241 0
 897 038e C046     		nop
 898 0390 BD46     		mov	sp, r7
 899 0392 02B0     		add	sp, sp, #8
 900              		@ sp needed
 901 0394 80BD     		pop	{r7, pc}
 902              		.cfi_endproc
 903              	.LFE15:
 905              		.align	1
 906              		.global	gotoxy
 907              		.syntax unified
 908              		.code	16
 909              		.thumb_func
 910              		.fpu softvfp
 912              	gotoxy:
 913              	.LFB16:
 242:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 243:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void gotoxy(unsigned int row, unsigned int column){
 914              		.loc 1 243 0
 915              		.cfi_startproc
 916              		@ args = 0, pretend = 0, frame = 16
 917              		@ frame_needed = 1, uses_anonymous_args = 0
 918 0396 80B5     		push	{r7, lr}
 919              		.cfi_def_cfa_offset 8
 920              		.cfi_offset 7, -8
 921              		.cfi_offset 14, -4
 922 0398 84B0     		sub	sp, sp, #16
 923              		.cfi_def_cfa_offset 24
 924 039a 00AF     		add	r7, sp, #0
 925              		.cfi_def_cfa_register 7
 926 039c 7860     		str	r0, [r7, #4]
 927 039e 3960     		str	r1, [r7]
 244:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Make sure row not out of bounds
 245:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(row < 1 || row > 20){
 928              		.loc 1 245 0
 929 03a0 7B68     		ldr	r3, [r7, #4]
 930 03a2 002B     		cmp	r3, #0
 931 03a4 25D0     		beq	.L52
 932              		.loc 1 245 0 is_stmt 0 discriminator 1
 933 03a6 7B68     		ldr	r3, [r7, #4]
 934 03a8 142B     		cmp	r3, #20
 935 03aa 22D8     		bhi	.L52
 246:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         return;
 247:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 248:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Make sure column not out of bounds
 249:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(column < 1 || column > 2){
 936              		.loc 1 249 0 is_stmt 1
 937 03ac 3B68     		ldr	r3, [r7]
 938 03ae 002B     		cmp	r3, #0
 939 03b0 21D0     		beq	.L53
 940              		.loc 1 249 0 is_stmt 0 discriminator 1
 941 03b2 3B68     		ldr	r3, [r7]
 942 03b4 022B     		cmp	r3, #2
 943 03b6 1ED8     		bhi	.L53
 250:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         return;
 251:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 252:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 253:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set address to the correct location
 254:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char address = row - 1;
 944              		.loc 1 254 0 is_stmt 1
 945 03b8 7B68     		ldr	r3, [r7, #4]
 946 03ba DAB2     		uxtb	r2, r3
 947 03bc 0F23     		movs	r3, #15
 948 03be FB18     		adds	r3, r7, r3
 949 03c0 013A     		subs	r2, r2, #1
 950 03c2 1A70     		strb	r2, [r3]
 255:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(column == 2){
 951              		.loc 1 255 0
 952 03c4 3B68     		ldr	r3, [r7]
 953 03c6 022B     		cmp	r3, #2
 954 03c8 06D1     		bne	.L51
 256:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         address += 0x40;
 955              		.loc 1 256 0
 956 03ca 0F23     		movs	r3, #15
 957 03cc FB18     		adds	r3, r7, r3
 958 03ce 0F22     		movs	r2, #15
 959 03d0 BA18     		adds	r2, r7, r2
 960 03d2 1278     		ldrb	r2, [r2]
 961 03d4 4032     		adds	r2, r2, #64
 962 03d6 1A70     		strb	r2, [r3]
 963              	.L51:
 257:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 258:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 259:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Send command to mark correct spot
 260:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x80 | address, 39, 1);
 964              		.loc 1 260 0
 965 03d8 0F23     		movs	r3, #15
 966 03da FB18     		adds	r3, r7, r3
 967 03dc 1B78     		ldrb	r3, [r3]
 968 03de 8022     		movs	r2, #128
 969 03e0 5242     		rsbs	r2, r2, #0
 970 03e2 1343     		orrs	r3, r2
 971 03e4 DBB2     		uxtb	r3, r3
 972 03e6 0122     		movs	r2, #1
 973 03e8 2721     		movs	r1, #39
 974 03ea 1800     		movs	r0, r3
 975 03ec FFF7FEFF 		bl	ascii_command
 976 03f0 02E0     		b	.L45
 977              	.L52:
 246:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 978              		.loc 1 246 0
 979 03f2 C046     		nop
 980 03f4 00E0     		b	.L45
 981              	.L53:
 250:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 982              		.loc 1 250 0
 983 03f6 C046     		nop
 984              	.L45:
 261:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 985              		.loc 1 261 0
 986 03f8 BD46     		mov	sp, r7
 987 03fa 04B0     		add	sp, sp, #16
 988              		@ sp needed
 989 03fc 80BD     		pop	{r7, pc}
 990              		.cfi_endproc
 991              	.LFE16:
 993              		.align	1
 994              		.global	ascii_write_string
 995              		.syntax unified
 996              		.code	16
 997              		.thumb_func
 998              		.fpu softvfp
 1000              	ascii_write_string:
 1001              	.LFB17:
 262:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 263:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_string(char *s){
 1002              		.loc 1 263 0
 1003              		.cfi_startproc
 1004              		@ args = 0, pretend = 0, frame = 8
 1005              		@ frame_needed = 1, uses_anonymous_args = 0
 1006 03fe 80B5     		push	{r7, lr}
 1007              		.cfi_def_cfa_offset 8
 1008              		.cfi_offset 7, -8
 1009              		.cfi_offset 14, -4
 1010 0400 82B0     		sub	sp, sp, #8
 1011              		.cfi_def_cfa_offset 16
 1012 0402 00AF     		add	r7, sp, #0
 1013              		.cfi_def_cfa_register 7
 1014 0404 7860     		str	r0, [r7, #4]
 264:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write each character onto the display until the finishing character is reached
 265:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(*s != 0){
 1015              		.loc 1 265 0
 1016 0406 06E0     		b	.L55
 1017              	.L56:
 266:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 1018              		.loc 1 266 0
 1019 0408 7B68     		ldr	r3, [r7, #4]
 1020 040a 5A1C     		adds	r2, r3, #1
 1021 040c 7A60     		str	r2, [r7, #4]
 1022 040e 1B78     		ldrb	r3, [r3]
 1023 0410 1800     		movs	r0, r3
 1024 0412 FFF7FEFF 		bl	ascii_write_char
 1025              	.L55:
 265:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 1026              		.loc 1 265 0
 1027 0416 7B68     		ldr	r3, [r7, #4]
 1028 0418 1B78     		ldrb	r3, [r3]
 1029 041a 002B     		cmp	r3, #0
 1030 041c F4D1     		bne	.L56
 267:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 268:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 1031              		.loc 1 268 0
 1032 041e C046     		nop
 1033 0420 BD46     		mov	sp, r7
 1034 0422 02B0     		add	sp, sp, #8
 1035              		@ sp needed
 1036 0424 80BD     		pop	{r7, pc}
 1037              		.cfi_endproc
 1038              	.LFE17:
 1040              	.Letext0:
