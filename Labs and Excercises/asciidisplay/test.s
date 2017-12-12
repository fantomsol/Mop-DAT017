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
  50 0000 4C756D6F 		.ascii	"Lumo och Lattes\000"
  50      206F6368 
  50      204C6174 
  50      74657300 
  51              		.align	2
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
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define COUNT_VAL ((unsigned int)(45))
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define MILLI_TO_MIKRO 1000
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define PORT_E 0x40021000
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portModer *((volatile unsigned int*)PORT_E)
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portOTyper *((volatile unsigned int*)(PORT_E+0x4))
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portOSpeedr *((volatile unsigned int*)(PORT_E+0x8))
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portPupdr *((volatile unsigned int*)(PORT_E+0xC))
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portIdrLow *((volatile unsigned char*)(PORT_E+0x10))
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portIdrHigh *((volatile unsigned char*)(PORT_E+0x11))
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portOdrLow *((volatile unsigned char*)(PORT_E+0x14))
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define portOdrHigh *((volatile unsigned char*)(PORT_E+0x15))
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define B_E 0x40
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define B_SELECT 0x4
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define B_RW 0x2
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define B_RS 0x1
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** #define CLOCK *((volatile unsigned  long*)0x40023830)
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void app_init(void);
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_250ns(void);
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_mikro(unsigned int);
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_milli(unsigned int);
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_set(unsigned char);
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_clear(unsigned char);
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_cmd(unsigned char);
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_data(unsigned char);
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_status(void);
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_data(void);
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_controller(unsigned char);
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_controller(void);
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_command(unsigned char, unsigned int, unsigned short);
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_char(unsigned char);
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void gotoxy(unsigned int, unsigned int);
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_string(char*);
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void main(void){
  64              		.loc 1 61 0
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
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     char *s;
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     char test1[] = "Lumo och Lattes";
  77              		.loc 1 63 0
  78 0006 1423     		movs	r3, #20
  79 0008 FB18     		adds	r3, r7, r3
  80 000a 1C4A     		ldr	r2, .L7
  81 000c 13CA     		ldmia	r2!, {r0, r1, r4}
  82 000e 13C3     		stmia	r3!, {r0, r1, r4}
  83 0010 1268     		ldr	r2, [r2]
  84 0012 1A60     		str	r2, [r3]
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     char test2[] = "Display - test";
  85              		.loc 1 64 0
  86 0014 3B1D     		adds	r3, r7, #4
  87 0016 1A4A     		ldr	r2, .L7+4
  88 0018 13CA     		ldmia	r2!, {r0, r1, r4}
  89 001a 13C3     		stmia	r3!, {r0, r1, r4}
  90 001c 1188     		ldrh	r1, [r2]
  91 001e 1980     		strh	r1, [r3]
  92 0020 9278     		ldrb	r2, [r2, #2]
  93 0022 9A70     		strb	r2, [r3, #2]
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     app_init();
  94              		.loc 1 66 0
  95 0024 FFF7FEFF 		bl	app_init
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     //ascii_init();
  68:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     gotoxy(1, 2);
  96              		.loc 1 68 0
  97 0028 0221     		movs	r1, #2
  98 002a 0120     		movs	r0, #1
  99 002c FFF7FEFF 		bl	gotoxy
  69:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     s = test1;
 100              		.loc 1 69 0
 101 0030 1423     		movs	r3, #20
 102 0032 FB18     		adds	r3, r7, r3
 103 0034 7B62     		str	r3, [r7, #36]
  70:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write each character onto the display until the finishing character is reached
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(*s != 0){
 104              		.loc 1 71 0
 105 0036 06E0     		b	.L3
 106              	.L4:
  72:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 107              		.loc 1 72 0
 108 0038 7B6A     		ldr	r3, [r7, #36]
 109 003a 5A1C     		adds	r2, r3, #1
 110 003c 7A62     		str	r2, [r7, #36]
 111 003e 1B78     		ldrb	r3, [r3]
 112 0040 1800     		movs	r0, r3
 113 0042 FFF7FEFF 		bl	ascii_write_char
 114              	.L3:
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 115              		.loc 1 71 0
 116 0046 7B6A     		ldr	r3, [r7, #36]
 117 0048 1B78     		ldrb	r3, [r3]
 118 004a 002B     		cmp	r3, #0
 119 004c F4D1     		bne	.L4
  73:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
  74:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     gotoxy(1, 1);
 120              		.loc 1 74 0
 121 004e 0121     		movs	r1, #1
 122 0050 0120     		movs	r0, #1
 123 0052 FFF7FEFF 		bl	gotoxy
  75:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     s = test2;
 124              		.loc 1 75 0
 125 0056 3B1D     		adds	r3, r7, #4
 126 0058 7B62     		str	r3, [r7, #36]
  76:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write each character onto the display until the finishing character is reached
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(*s != 0){
 127              		.loc 1 77 0
 128 005a 06E0     		b	.L5
 129              	.L6:
  78:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 130              		.loc 1 78 0
 131 005c 7B6A     		ldr	r3, [r7, #36]
 132 005e 5A1C     		adds	r2, r3, #1
 133 0060 7A62     		str	r2, [r7, #36]
 134 0062 1B78     		ldrb	r3, [r3]
 135 0064 1800     		movs	r0, r3
 136 0066 FFF7FEFF 		bl	ascii_write_char
 137              	.L5:
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 138              		.loc 1 77 0
 139 006a 7B6A     		ldr	r3, [r7, #36]
 140 006c 1B78     		ldrb	r3, [r3]
 141 006e 002B     		cmp	r3, #0
 142 0070 F4D1     		bne	.L6
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
  80:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 143              		.loc 1 80 0
 144 0072 C046     		nop
 145 0074 BD46     		mov	sp, r7
 146 0076 0BB0     		add	sp, sp, #44
 147              		@ sp needed
 148 0078 90BD     		pop	{r4, r7, pc}
 149              	.L8:
 150 007a C046     		.align	2
 151              	.L7:
 152 007c 00000000 		.word	.LC0
 153 0080 10000000 		.word	.LC2
 154              		.cfi_endproc
 155              	.LFE1:
 157              		.align	1
 158              		.global	app_init
 159              		.syntax unified
 160              		.code	16
 161              		.thumb_func
 162              		.fpu softvfp
 164              	app_init:
 165              	.LFB2:
  81:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
  82:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void app_init(void){
 166              		.loc 1 82 0
 167              		.cfi_startproc
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 1, uses_anonymous_args = 0
 170 0084 80B5     		push	{r7, lr}
 171              		.cfi_def_cfa_offset 8
 172              		.cfi_offset 7, -8
 173              		.cfi_offset 14, -4
 174 0086 00AF     		add	r7, sp, #0
 175              		.cfi_def_cfa_register 7
  83:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Clock inits
  84:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     CLOCK = 0x18;
 176              		.loc 1 84 0
 177 0088 0E4B     		ldr	r3, .L10
 178 008a 1822     		movs	r2, #24
 179 008c 1A60     		str	r2, [r3]
  85:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     /*__asm volatile(
  86:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     " LDR R0,=0x08000209\n"
  87:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     " BLX R0\n");*/
  88:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  89:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E -> output
  90:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer = 0x55555555;
 180              		.loc 1 90 0
 181 008e 0E4B     		ldr	r3, .L10+4
 182 0090 0E4A     		ldr	r2, .L10+8
 183 0092 1A60     		str	r2, [r3]
  91:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // ***DISPLAY INIT***
  93:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  94:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set address register to 0, reset cursor
  95:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     //ascii_command(0x2, 2, 0);
  96:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
  97:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // 2 rows, characters are 5x8 dots
  98:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x38, 39, 1);
 184              		.loc 1 98 0
 185 0094 0122     		movs	r2, #1
 186 0096 2721     		movs	r1, #39
 187 0098 3820     		movs	r0, #56
 188 009a FFF7FEFF 		bl	ascii_command
  99:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Turn on display, turn on cursor, cursor not blinking
 100:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0xE, 39, 1);
 189              		.loc 1 100 0
 190 009e 0122     		movs	r2, #1
 191 00a0 2721     		movs	r1, #39
 192 00a2 0E20     		movs	r0, #14
 193 00a4 FFF7FEFF 		bl	ascii_command
 101:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Clear display
 102:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x1, 2, 0);
 194              		.loc 1 102 0
 195 00a8 0022     		movs	r2, #0
 196 00aa 0221     		movs	r1, #2
 197 00ac 0120     		movs	r0, #1
 198 00ae FFF7FEFF 		bl	ascii_command
 103:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Increment mode, no shift
 104:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x6, 39, 1);
 199              		.loc 1 104 0
 200 00b2 0122     		movs	r2, #1
 201 00b4 2721     		movs	r1, #39
 202 00b6 0620     		movs	r0, #6
 203 00b8 FFF7FEFF 		bl	ascii_command
 105:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 204              		.loc 1 105 0
 205 00bc C046     		nop
 206 00be BD46     		mov	sp, r7
 207              		@ sp needed
 208 00c0 80BD     		pop	{r7, pc}
 209              	.L11:
 210 00c2 C046     		.align	2
 211              	.L10:
 212 00c4 30380240 		.word	1073887280
 213 00c8 00100240 		.word	1073876992
 214 00cc 55555555 		.word	1431655765
 215              		.cfi_endproc
 216              	.LFE2:
 218              		.align	1
 219              		.global	delay_250ns
 220              		.syntax unified
 221              		.code	16
 222              		.thumb_func
 223              		.fpu softvfp
 225              	delay_250ns:
 226              	.LFB3:
 106:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 107:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_250ns(void){
 227              		.loc 1 107 0
 228              		.cfi_startproc
 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 1, uses_anonymous_args = 0
 231 00d0 80B5     		push	{r7, lr}
 232              		.cfi_def_cfa_offset 8
 233              		.cfi_offset 7, -8
 234              		.cfi_offset 14, -4
 235 00d2 00AF     		add	r7, sp, #0
 236              		.cfi_def_cfa_register 7
 108:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_CTRL &= 0xFFFEFFF8;
 237              		.loc 1 108 0
 238 00d4 104B     		ldr	r3, .L13
 239 00d6 104A     		ldr	r2, .L13
 240 00d8 1268     		ldr	r2, [r2]
 241 00da 1049     		ldr	r1, .L13+4
 242 00dc 0A40     		ands	r2, r1
 243 00de 1A60     		str	r2, [r3]
 109:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_LOAD &= 0xFF000000;
 244              		.loc 1 109 0
 245 00e0 0F4B     		ldr	r3, .L13+8
 246 00e2 0F4A     		ldr	r2, .L13+8
 247 00e4 1268     		ldr	r2, [r2]
 248 00e6 120E     		lsrs	r2, r2, #24
 249 00e8 1206     		lsls	r2, r2, #24
 250 00ea 1A60     		str	r2, [r3]
 110:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_LOAD |= COUNT_VAL-1;
 251              		.loc 1 110 0
 252 00ec 0C4B     		ldr	r3, .L13+8
 253 00ee 0C4A     		ldr	r2, .L13+8
 254 00f0 1268     		ldr	r2, [r2]
 255 00f2 2C21     		movs	r1, #44
 256 00f4 0A43     		orrs	r2, r1
 257 00f6 1A60     		str	r2, [r3]
 111:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_VAL = 0;
 258              		.loc 1 111 0
 259 00f8 0A4B     		ldr	r3, .L13+12
 260 00fa 0022     		movs	r2, #0
 261 00fc 1A60     		str	r2, [r3]
 112:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_CTRL = 0x5;
 262              		.loc 1 112 0
 263 00fe 064B     		ldr	r3, .L13
 264 0100 0522     		movs	r2, #5
 265 0102 1A60     		str	r2, [r3]
 113:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 114:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(STK_CTRL & 0x00010000 == 0);
 266              		.loc 1 114 0
 267 0104 C046     		nop
 268 0106 044B     		ldr	r3, .L13
 269 0108 1B68     		ldr	r3, [r3]
 115:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 116:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     STK_CTRL = 0;
 270              		.loc 1 116 0
 271 010a 034B     		ldr	r3, .L13
 272 010c 0022     		movs	r2, #0
 273 010e 1A60     		str	r2, [r3]
 117:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 274              		.loc 1 117 0
 275 0110 C046     		nop
 276 0112 BD46     		mov	sp, r7
 277              		@ sp needed
 278 0114 80BD     		pop	{r7, pc}
 279              	.L14:
 280 0116 C046     		.align	2
 281              	.L13:
 282 0118 10E000E0 		.word	-536813552
 283 011c F8FFFEFF 		.word	-65544
 284 0120 14E000E0 		.word	-536813548
 285 0124 18E000E0 		.word	-536813544
 286              		.cfi_endproc
 287              	.LFE3:
 289              		.align	1
 290              		.global	delay_mikro
 291              		.syntax unified
 292              		.code	16
 293              		.thumb_func
 294              		.fpu softvfp
 296              	delay_mikro:
 297              	.LFB4:
 118:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 119:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_mikro(unsigned int us){
 298              		.loc 1 119 0
 299              		.cfi_startproc
 300              		@ args = 0, pretend = 0, frame = 16
 301              		@ frame_needed = 1, uses_anonymous_args = 0
 302 0128 80B5     		push	{r7, lr}
 303              		.cfi_def_cfa_offset 8
 304              		.cfi_offset 7, -8
 305              		.cfi_offset 14, -4
 306 012a 84B0     		sub	sp, sp, #16
 307              		.cfi_def_cfa_offset 24
 308 012c 00AF     		add	r7, sp, #0
 309              		.cfi_def_cfa_register 7
 310 012e 7860     		str	r0, [r7, #4]
 311              	.LBB2:
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     for(int i=0; i < us*4; i++){
 312              		.loc 1 120 0
 313 0130 0023     		movs	r3, #0
 314 0132 FB60     		str	r3, [r7, #12]
 315 0134 04E0     		b	.L16
 316              	.L17:
 121:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_250ns();
 317              		.loc 1 121 0 discriminator 3
 318 0136 FFF7FEFF 		bl	delay_250ns
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     for(int i=0; i < us*4; i++){
 319              		.loc 1 120 0 discriminator 3
 320 013a FB68     		ldr	r3, [r7, #12]
 321 013c 0133     		adds	r3, r3, #1
 322 013e FB60     		str	r3, [r7, #12]
 323              	.L16:
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     for(int i=0; i < us*4; i++){
 324              		.loc 1 120 0 is_stmt 0 discriminator 1
 325 0140 7B68     		ldr	r3, [r7, #4]
 326 0142 9A00     		lsls	r2, r3, #2
 327 0144 FB68     		ldr	r3, [r7, #12]
 328 0146 9A42     		cmp	r2, r3
 329 0148 F5D8     		bhi	.L17
 330              	.LBE2:
 122:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 123:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 331              		.loc 1 123 0 is_stmt 1
 332 014a C046     		nop
 333 014c BD46     		mov	sp, r7
 334 014e 04B0     		add	sp, sp, #16
 335              		@ sp needed
 336 0150 80BD     		pop	{r7, pc}
 337              		.cfi_endproc
 338              	.LFE4:
 340              		.align	1
 341              		.global	delay_milli
 342              		.syntax unified
 343              		.code	16
 344              		.thumb_func
 345              		.fpu softvfp
 347              	delay_milli:
 348              	.LFB5:
 124:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 125:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void delay_milli(unsigned int ms){
 349              		.loc 1 125 0
 350              		.cfi_startproc
 351              		@ args = 0, pretend = 0, frame = 8
 352              		@ frame_needed = 1, uses_anonymous_args = 0
 353 0152 80B5     		push	{r7, lr}
 354              		.cfi_def_cfa_offset 8
 355              		.cfi_offset 7, -8
 356              		.cfi_offset 14, -4
 357 0154 82B0     		sub	sp, sp, #8
 358              		.cfi_def_cfa_offset 16
 359 0156 00AF     		add	r7, sp, #0
 360              		.cfi_def_cfa_register 7
 361 0158 7860     		str	r0, [r7, #4]
 126:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(ms*MILLI_TO_MIKRO);
 362              		.loc 1 126 0
 363 015a 7B68     		ldr	r3, [r7, #4]
 364 015c FA22     		movs	r2, #250
 365 015e 9200     		lsls	r2, r2, #2
 366 0160 5343     		muls	r3, r2
 367 0162 1800     		movs	r0, r3
 368 0164 FFF7FEFF 		bl	delay_mikro
 127:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 369              		.loc 1 127 0
 370 0168 C046     		nop
 371 016a BD46     		mov	sp, r7
 372 016c 02B0     		add	sp, sp, #8
 373              		@ sp needed
 374 016e 80BD     		pop	{r7, pc}
 375              		.cfi_endproc
 376              	.LFE5:
 378              		.align	1
 379              		.global	ascii_ctrl_bit_set
 380              		.syntax unified
 381              		.code	16
 382              		.thumb_func
 383              		.fpu softvfp
 385              	ascii_ctrl_bit_set:
 386              	.LFB6:
 128:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 129:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_set(unsigned char x){
 387              		.loc 1 129 0
 388              		.cfi_startproc
 389              		@ args = 0, pretend = 0, frame = 16
 390              		@ frame_needed = 1, uses_anonymous_args = 0
 391 0170 80B5     		push	{r7, lr}
 392              		.cfi_def_cfa_offset 8
 393              		.cfi_offset 7, -8
 394              		.cfi_offset 14, -4
 395 0172 84B0     		sub	sp, sp, #16
 396              		.cfi_def_cfa_offset 24
 397 0174 00AF     		add	r7, sp, #0
 398              		.cfi_def_cfa_register 7
 399 0176 0200     		movs	r2, r0
 400 0178 FB1D     		adds	r3, r7, #7
 401 017a 1A70     		strb	r2, [r3]
 130:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set bits that are 1 in x to 1, leave rest be
 131:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char port_val = portOdrLow;
 402              		.loc 1 131 0
 403 017c 0C4A     		ldr	r2, .L20
 404 017e 0F23     		movs	r3, #15
 405 0180 FB18     		adds	r3, r7, r3
 406 0182 1278     		ldrb	r2, [r2]
 407 0184 1A70     		strb	r2, [r3]
 132:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     port_val |= x;
 408              		.loc 1 132 0
 409 0186 0F23     		movs	r3, #15
 410 0188 FB18     		adds	r3, r7, r3
 411 018a 0F22     		movs	r2, #15
 412 018c B918     		adds	r1, r7, r2
 413 018e FA1D     		adds	r2, r7, #7
 414 0190 0978     		ldrb	r1, [r1]
 415 0192 1278     		ldrb	r2, [r2]
 416 0194 0A43     		orrs	r2, r1
 417 0196 1A70     		strb	r2, [r3]
 133:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrLow = port_val | B_SELECT;
 418              		.loc 1 133 0
 419 0198 054A     		ldr	r2, .L20
 420 019a 0F23     		movs	r3, #15
 421 019c FB18     		adds	r3, r7, r3
 422 019e 1B78     		ldrb	r3, [r3]
 423 01a0 0421     		movs	r1, #4
 424 01a2 0B43     		orrs	r3, r1
 425 01a4 DBB2     		uxtb	r3, r3
 426 01a6 1370     		strb	r3, [r2]
 134:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     //delay_250ns();
 135:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 427              		.loc 1 135 0
 428 01a8 C046     		nop
 429 01aa BD46     		mov	sp, r7
 430 01ac 04B0     		add	sp, sp, #16
 431              		@ sp needed
 432 01ae 80BD     		pop	{r7, pc}
 433              	.L21:
 434              		.align	2
 435              	.L20:
 436 01b0 14100240 		.word	1073877012
 437              		.cfi_endproc
 438              	.LFE6:
 440              		.align	1
 441              		.global	ascii_ctrl_bit_clear
 442              		.syntax unified
 443              		.code	16
 444              		.thumb_func
 445              		.fpu softvfp
 447              	ascii_ctrl_bit_clear:
 448              	.LFB7:
 136:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 137:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_ctrl_bit_clear(unsigned char x){
 449              		.loc 1 137 0
 450              		.cfi_startproc
 451              		@ args = 0, pretend = 0, frame = 16
 452              		@ frame_needed = 1, uses_anonymous_args = 0
 453 01b4 80B5     		push	{r7, lr}
 454              		.cfi_def_cfa_offset 8
 455              		.cfi_offset 7, -8
 456              		.cfi_offset 14, -4
 457 01b6 84B0     		sub	sp, sp, #16
 458              		.cfi_def_cfa_offset 24
 459 01b8 00AF     		add	r7, sp, #0
 460              		.cfi_def_cfa_register 7
 461 01ba 0200     		movs	r2, r0
 462 01bc FB1D     		adds	r3, r7, #7
 463 01be 1A70     		strb	r2, [r3]
 138:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set any bits that are 0 in x to 0, leave rest as they were
 139:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char port_val = portOdrLow;
 464              		.loc 1 139 0
 465 01c0 0D4A     		ldr	r2, .L23
 466 01c2 0F23     		movs	r3, #15
 467 01c4 FB18     		adds	r3, r7, r3
 468 01c6 1278     		ldrb	r2, [r2]
 469 01c8 1A70     		strb	r2, [r3]
 140:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     port_val &= x ^ 0xFF;
 470              		.loc 1 140 0
 471 01ca FB1D     		adds	r3, r7, #7
 472 01cc 1B78     		ldrb	r3, [r3]
 473 01ce DB43     		mvns	r3, r3
 474 01d0 DAB2     		uxtb	r2, r3
 475 01d2 0F23     		movs	r3, #15
 476 01d4 FB18     		adds	r3, r7, r3
 477 01d6 0F21     		movs	r1, #15
 478 01d8 7918     		adds	r1, r7, r1
 479 01da 0978     		ldrb	r1, [r1]
 480 01dc 0A40     		ands	r2, r1
 481 01de 1A70     		strb	r2, [r3]
 141:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrLow = port_val | B_SELECT;
 482              		.loc 1 141 0
 483 01e0 054A     		ldr	r2, .L23
 484 01e2 0F23     		movs	r3, #15
 485 01e4 FB18     		adds	r3, r7, r3
 486 01e6 1B78     		ldrb	r3, [r3]
 487 01e8 0421     		movs	r1, #4
 488 01ea 0B43     		orrs	r3, r1
 489 01ec DBB2     		uxtb	r3, r3
 490 01ee 1370     		strb	r3, [r2]
 142:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     //delay_250ns();
 143:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 491              		.loc 1 143 0
 492 01f0 C046     		nop
 493 01f2 BD46     		mov	sp, r7
 494 01f4 04B0     		add	sp, sp, #16
 495              		@ sp needed
 496 01f6 80BD     		pop	{r7, pc}
 497              	.L24:
 498              		.align	2
 499              	.L23:
 500 01f8 14100240 		.word	1073877012
 501              		.cfi_endproc
 502              	.LFE7:
 504              		.align	1
 505              		.global	ascii_write_cmd
 506              		.syntax unified
 507              		.code	16
 508              		.thumb_func
 509              		.fpu softvfp
 511              	ascii_write_cmd:
 512              	.LFB8:
 144:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 145:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_cmd(unsigned char command){
 513              		.loc 1 145 0
 514              		.cfi_startproc
 515              		@ args = 0, pretend = 0, frame = 8
 516              		@ frame_needed = 1, uses_anonymous_args = 0
 517 01fc 80B5     		push	{r7, lr}
 518              		.cfi_def_cfa_offset 8
 519              		.cfi_offset 7, -8
 520              		.cfi_offset 14, -4
 521 01fe 82B0     		sub	sp, sp, #8
 522              		.cfi_def_cfa_offset 16
 523 0200 00AF     		add	r7, sp, #0
 524              		.cfi_def_cfa_register 7
 525 0202 0200     		movs	r2, r0
 526 0204 FB1D     		adds	r3, r7, #7
 527 0206 1A70     		strb	r2, [r3]
 146:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for sending command
 147:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 528              		.loc 1 147 0
 529 0208 0120     		movs	r0, #1
 530 020a FFF7FEFF 		bl	ascii_ctrl_bit_clear
 148:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear( B_RW);
 531              		.loc 1 148 0
 532 020e 0220     		movs	r0, #2
 533 0210 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 149:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 150:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write command
 151:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_controller(command);
 534              		.loc 1 151 0
 535 0214 FB1D     		adds	r3, r7, #7
 536 0216 1B78     		ldrb	r3, [r3]
 537 0218 1800     		movs	r0, r3
 538 021a FFF7FEFF 		bl	ascii_write_controller
 152:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 539              		.loc 1 152 0
 540 021e C046     		nop
 541 0220 BD46     		mov	sp, r7
 542 0222 02B0     		add	sp, sp, #8
 543              		@ sp needed
 544 0224 80BD     		pop	{r7, pc}
 545              		.cfi_endproc
 546              	.LFE8:
 548              		.align	1
 549              		.global	ascii_write_data
 550              		.syntax unified
 551              		.code	16
 552              		.thumb_func
 553              		.fpu softvfp
 555              	ascii_write_data:
 556              	.LFB9:
 153:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 154:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_data(unsigned char data){
 557              		.loc 1 154 0
 558              		.cfi_startproc
 559              		@ args = 0, pretend = 0, frame = 8
 560              		@ frame_needed = 1, uses_anonymous_args = 0
 561 0226 80B5     		push	{r7, lr}
 562              		.cfi_def_cfa_offset 8
 563              		.cfi_offset 7, -8
 564              		.cfi_offset 14, -4
 565 0228 82B0     		sub	sp, sp, #8
 566              		.cfi_def_cfa_offset 16
 567 022a 00AF     		add	r7, sp, #0
 568              		.cfi_def_cfa_register 7
 569 022c 0200     		movs	r2, r0
 570 022e FB1D     		adds	r3, r7, #7
 571 0230 1A70     		strb	r2, [r3]
 155:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for writing data
 156:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RS);
 572              		.loc 1 156 0
 573 0232 0120     		movs	r0, #1
 574 0234 FFF7FEFF 		bl	ascii_ctrl_bit_set
 157:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RW);
 575              		.loc 1 157 0
 576 0238 0220     		movs	r0, #2
 577 023a FFF7FEFF 		bl	ascii_ctrl_bit_clear
 158:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 159:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write data
 160:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_controller(data);
 578              		.loc 1 160 0
 579 023e FB1D     		adds	r3, r7, #7
 580 0240 1B78     		ldrb	r3, [r3]
 581 0242 1800     		movs	r0, r3
 582 0244 FFF7FEFF 		bl	ascii_write_controller
 161:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 583              		.loc 1 161 0
 584 0248 C046     		nop
 585 024a BD46     		mov	sp, r7
 586 024c 02B0     		add	sp, sp, #8
 587              		@ sp needed
 588 024e 80BD     		pop	{r7, pc}
 589              		.cfi_endproc
 590              	.LFE9:
 592              		.align	1
 593              		.global	ascii_read_data
 594              		.syntax unified
 595              		.code	16
 596              		.thumb_func
 597              		.fpu softvfp
 599              	ascii_read_data:
 600              	.LFB10:
 162:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 163:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_data(void){
 601              		.loc 1 163 0
 602              		.cfi_startproc
 603              		@ args = 0, pretend = 0, frame = 8
 604              		@ frame_needed = 1, uses_anonymous_args = 0
 605 0250 90B5     		push	{r4, r7, lr}
 606              		.cfi_def_cfa_offset 12
 607              		.cfi_offset 4, -12
 608              		.cfi_offset 7, -8
 609              		.cfi_offset 14, -4
 610 0252 83B0     		sub	sp, sp, #12
 611              		.cfi_def_cfa_offset 24
 612 0254 00AF     		add	r7, sp, #0
 613              		.cfi_def_cfa_register 7
 164:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 165:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> input
 166:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer &= 0x0000FFFF;
 614              		.loc 1 166 0
 615 0256 0E4B     		ldr	r3, .L29
 616 0258 0D4A     		ldr	r2, .L29
 617 025a 1268     		ldr	r2, [r2]
 618 025c 1204     		lsls	r2, r2, #16
 619 025e 120C     		lsrs	r2, r2, #16
 620 0260 1A60     		str	r2, [r3]
 167:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 168:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for reading data
 169:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 621              		.loc 1 169 0
 622 0262 0220     		movs	r0, #2
 623 0264 FFF7FEFF 		bl	ascii_ctrl_bit_set
 170:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RS);
 624              		.loc 1 170 0
 625 0268 0120     		movs	r0, #1
 626 026a FFF7FEFF 		bl	ascii_ctrl_bit_set
 171:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 172:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = ascii_read_controller();
 627              		.loc 1 172 0
 628 026e FC1D     		adds	r4, r7, #7
 629 0270 FFF7FEFF 		bl	ascii_read_controller
 630 0274 0300     		movs	r3, r0
 631 0276 2370     		strb	r3, [r4]
 173:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 174:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> output
 175:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer |= 0x55550000;
 632              		.loc 1 175 0
 633 0278 054B     		ldr	r3, .L29
 634 027a 054A     		ldr	r2, .L29
 635 027c 1268     		ldr	r2, [r2]
 636 027e 0549     		ldr	r1, .L29+4
 637 0280 0A43     		orrs	r2, r1
 638 0282 1A60     		str	r2, [r3]
 176:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 177:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 639              		.loc 1 177 0
 640 0284 FB1D     		adds	r3, r7, #7
 641 0286 1B78     		ldrb	r3, [r3]
 178:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 642              		.loc 1 178 0
 643 0288 1800     		movs	r0, r3
 644 028a BD46     		mov	sp, r7
 645 028c 03B0     		add	sp, sp, #12
 646              		@ sp needed
 647 028e 90BD     		pop	{r4, r7, pc}
 648              	.L30:
 649              		.align	2
 650              	.L29:
 651 0290 00100240 		.word	1073876992
 652 0294 00005555 		.word	1431633920
 653              		.cfi_endproc
 654              	.LFE10:
 656              		.align	1
 657              		.global	ascii_read_status
 658              		.syntax unified
 659              		.code	16
 660              		.thumb_func
 661              		.fpu softvfp
 663              	ascii_read_status:
 664              	.LFB11:
 179:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 180:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_status(void){
 665              		.loc 1 180 0
 666              		.cfi_startproc
 667              		@ args = 0, pretend = 0, frame = 8
 668              		@ frame_needed = 1, uses_anonymous_args = 0
 669 0298 90B5     		push	{r4, r7, lr}
 670              		.cfi_def_cfa_offset 12
 671              		.cfi_offset 4, -12
 672              		.cfi_offset 7, -8
 673              		.cfi_offset 14, -4
 674 029a 83B0     		sub	sp, sp, #12
 675              		.cfi_def_cfa_offset 24
 676 029c 00AF     		add	r7, sp, #0
 677              		.cfi_def_cfa_register 7
 181:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 182:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> input
 183:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer &= 0x0000FFFF;
 678              		.loc 1 183 0
 679 029e 0E4B     		ldr	r3, .L33
 680 02a0 0D4A     		ldr	r2, .L33
 681 02a2 1268     		ldr	r2, [r2]
 682 02a4 1204     		lsls	r2, r2, #16
 683 02a6 120C     		lsrs	r2, r2, #16
 684 02a8 1A60     		str	r2, [r3]
 184:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 185:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare display for reading status and address
 186:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 685              		.loc 1 186 0
 686 02aa 0120     		movs	r0, #1
 687 02ac FFF7FEFF 		bl	ascii_ctrl_bit_clear
 187:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 688              		.loc 1 187 0
 689 02b0 0220     		movs	r0, #2
 690 02b2 FFF7FEFF 		bl	ascii_ctrl_bit_set
 188:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 189:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Read values from display
 190:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = ascii_read_controller();
 691              		.loc 1 190 0
 692 02b6 FC1D     		adds	r4, r7, #7
 693 02b8 FFF7FEFF 		bl	ascii_read_controller
 694 02bc 0300     		movs	r3, r0
 695 02be 2370     		strb	r3, [r4]
 191:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 192:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Port E 8-15 -> output
 193:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portModer |= 0x55550000;
 696              		.loc 1 193 0
 697 02c0 054B     		ldr	r3, .L33
 698 02c2 054A     		ldr	r2, .L33
 699 02c4 1268     		ldr	r2, [r2]
 700 02c6 0549     		ldr	r1, .L33+4
 701 02c8 0A43     		orrs	r2, r1
 702 02ca 1A60     		str	r2, [r3]
 194:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 195:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 703              		.loc 1 195 0
 704 02cc FB1D     		adds	r3, r7, #7
 705 02ce 1B78     		ldrb	r3, [r3]
 196:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 706              		.loc 1 196 0
 707 02d0 1800     		movs	r0, r3
 708 02d2 BD46     		mov	sp, r7
 709 02d4 03B0     		add	sp, sp, #12
 710              		@ sp needed
 711 02d6 90BD     		pop	{r4, r7, pc}
 712              	.L34:
 713              		.align	2
 714              	.L33:
 715 02d8 00100240 		.word	1073876992
 716 02dc 00005555 		.word	1431633920
 717              		.cfi_endproc
 718              	.LFE11:
 720              		.align	1
 721              		.global	ascii_write_controller
 722              		.syntax unified
 723              		.code	16
 724              		.thumb_func
 725              		.fpu softvfp
 727              	ascii_write_controller:
 728              	.LFB12:
 197:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 198:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_controller(unsigned char byte){
 729              		.loc 1 198 0
 730              		.cfi_startproc
 731              		@ args = 0, pretend = 0, frame = 8
 732              		@ frame_needed = 1, uses_anonymous_args = 0
 733 02e0 80B5     		push	{r7, lr}
 734              		.cfi_def_cfa_offset 8
 735              		.cfi_offset 7, -8
 736              		.cfi_offset 14, -4
 737 02e2 82B0     		sub	sp, sp, #8
 738              		.cfi_def_cfa_offset 16
 739 02e4 00AF     		add	r7, sp, #0
 740              		.cfi_def_cfa_register 7
 741 02e6 0200     		movs	r2, r0
 742 02e8 FB1D     		adds	r3, r7, #7
 743 02ea 1A70     		strb	r2, [r3]
 199:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 1
 200:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_E);
 744              		.loc 1 200 0
 745 02ec 4020     		movs	r0, #64
 746 02ee FFF7FEFF 		bl	ascii_ctrl_bit_set
 201:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 202:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set data register values
 203:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     portOdrHigh = byte;
 747              		.loc 1 203 0
 748 02f2 064A     		ldr	r2, .L36
 749 02f4 FB1D     		adds	r3, r7, #7
 750 02f6 1B78     		ldrb	r3, [r3]
 751 02f8 1370     		strb	r3, [r2]
 204:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 205:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for 230ns (here at least 250, hope this should still work)
 206:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 752              		.loc 1 206 0
 753 02fa FFF7FEFF 		bl	delay_250ns
 207:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 208:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 0
 209:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_E);
 754              		.loc 1 209 0
 755 02fe 4020     		movs	r0, #64
 756 0300 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 210:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 757              		.loc 1 210 0
 758 0304 C046     		nop
 759 0306 BD46     		mov	sp, r7
 760 0308 02B0     		add	sp, sp, #8
 761              		@ sp needed
 762 030a 80BD     		pop	{r7, pc}
 763              	.L37:
 764              		.align	2
 765              	.L36:
 766 030c 15100240 		.word	1073877013
 767              		.cfi_endproc
 768              	.LFE12:
 770              		.align	1
 771              		.global	ascii_read_controller
 772              		.syntax unified
 773              		.code	16
 774              		.thumb_func
 775              		.fpu softvfp
 777              	ascii_read_controller:
 778              	.LFB13:
 211:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 212:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** unsigned char ascii_read_controller(void){
 779              		.loc 1 212 0
 780              		.cfi_startproc
 781              		@ args = 0, pretend = 0, frame = 8
 782              		@ frame_needed = 1, uses_anonymous_args = 0
 783 0310 80B5     		push	{r7, lr}
 784              		.cfi_def_cfa_offset 8
 785              		.cfi_offset 7, -8
 786              		.cfi_offset 14, -4
 787 0312 82B0     		sub	sp, sp, #8
 788              		.cfi_def_cfa_offset 16
 789 0314 00AF     		add	r7, sp, #0
 790              		.cfi_def_cfa_register 7
 213:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char return_value;
 214:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 215:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 1
 216:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_E);
 791              		.loc 1 216 0
 792 0316 4020     		movs	r0, #64
 793 0318 FFF7FEFF 		bl	ascii_ctrl_bit_set
 217:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 218:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for at least 360ns, here at least 500
 219:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 794              		.loc 1 219 0
 795 031c FFF7FEFF 		bl	delay_250ns
 220:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_250ns();
 796              		.loc 1 220 0
 797 0320 FFF7FEFF 		bl	delay_250ns
 221:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 222:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Read data register
 223:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return_value = portIdrHigh;
 798              		.loc 1 223 0
 799 0324 064A     		ldr	r2, .L40
 800 0326 FB1D     		adds	r3, r7, #7
 801 0328 1278     		ldrb	r2, [r2]
 802 032a 1A70     		strb	r2, [r3]
 224:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 225:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set enable flag to 0
 226:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_E);
 803              		.loc 1 226 0
 804 032c 4020     		movs	r0, #64
 805 032e FFF7FEFF 		bl	ascii_ctrl_bit_clear
 227:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 228:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     return return_value;
 806              		.loc 1 228 0
 807 0332 FB1D     		adds	r3, r7, #7
 808 0334 1B78     		ldrb	r3, [r3]
 229:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 809              		.loc 1 229 0
 810 0336 1800     		movs	r0, r3
 811 0338 BD46     		mov	sp, r7
 812 033a 02B0     		add	sp, sp, #8
 813              		@ sp needed
 814 033c 80BD     		pop	{r7, pc}
 815              	.L41:
 816 033e C046     		.align	2
 817              	.L40:
 818 0340 11100240 		.word	1073877009
 819              		.cfi_endproc
 820              	.LFE13:
 822              		.align	1
 823              		.global	ascii_command
 824              		.syntax unified
 825              		.code	16
 826              		.thumb_func
 827              		.fpu softvfp
 829              	ascii_command:
 830              	.LFB14:
 230:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 231:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_command(unsigned char command, unsigned int post_command_delay, unsigned short us){
 831              		.loc 1 231 0
 832              		.cfi_startproc
 833              		@ args = 0, pretend = 0, frame = 8
 834              		@ frame_needed = 1, uses_anonymous_args = 0
 835 0344 80B5     		push	{r7, lr}
 836              		.cfi_def_cfa_offset 8
 837              		.cfi_offset 7, -8
 838              		.cfi_offset 14, -4
 839 0346 82B0     		sub	sp, sp, #8
 840              		.cfi_def_cfa_offset 16
 841 0348 00AF     		add	r7, sp, #0
 842              		.cfi_def_cfa_register 7
 843 034a 3960     		str	r1, [r7]
 844 034c 1100     		movs	r1, r2
 845 034e FB1D     		adds	r3, r7, #7
 846 0350 021C     		adds	r2, r0, #0
 847 0352 1A70     		strb	r2, [r3]
 848 0354 3B1D     		adds	r3, r7, #4
 849 0356 0A1C     		adds	r2, r1, #0
 850 0358 1A80     		strh	r2, [r3]
 232:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare to check if display ready
 233:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     //ascii_ctrl_bit_set(B_RW);
 234:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     //ascii_ctrl_bit_clear(B_RS);
 235:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 236:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 237:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while((ascii_read_status() & 0x80) != 0);
 851              		.loc 1 237 0
 852 035a C046     		nop
 853              	.L43:
 854              		.loc 1 237 0 is_stmt 0 discriminator 1
 855 035c FFF7FEFF 		bl	ascii_read_status
 856 0360 0300     		movs	r3, r0
 857 0362 5BB2     		sxtb	r3, r3
 858 0364 002B     		cmp	r3, #0
 859 0366 F9DB     		blt	.L43
 238:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(8);
 860              		.loc 1 238 0 is_stmt 1
 861 0368 0820     		movs	r0, #8
 862 036a FFF7FEFF 		bl	delay_mikro
 239:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 240:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Send command
 241:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_cmd(command);
 863              		.loc 1 241 0
 864 036e FB1D     		adds	r3, r7, #7
 865 0370 1B78     		ldrb	r3, [r3]
 866 0372 1800     		movs	r0, r3
 867 0374 FFF7FEFF 		bl	ascii_write_cmd
 242:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 243:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait for the entered amount of time
 244:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(us == 1){
 868              		.loc 1 244 0
 869 0378 3B1D     		adds	r3, r7, #4
 870 037a 1B88     		ldrh	r3, [r3]
 871 037c 012B     		cmp	r3, #1
 872 037e 04D1     		bne	.L44
 245:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_mikro(post_command_delay);
 873              		.loc 1 245 0
 874 0380 3B68     		ldr	r3, [r7]
 875 0382 1800     		movs	r0, r3
 876 0384 FFF7FEFF 		bl	delay_mikro
 246:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     } else {
 247:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         delay_milli(post_command_delay);
 248:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 249:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 877              		.loc 1 249 0
 878 0388 03E0     		b	.L46
 879              	.L44:
 247:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 880              		.loc 1 247 0
 881 038a 3B68     		ldr	r3, [r7]
 882 038c 1800     		movs	r0, r3
 883 038e FFF7FEFF 		bl	delay_milli
 884              	.L46:
 885              		.loc 1 249 0
 886 0392 C046     		nop
 887 0394 BD46     		mov	sp, r7
 888 0396 02B0     		add	sp, sp, #8
 889              		@ sp needed
 890 0398 80BD     		pop	{r7, pc}
 891              		.cfi_endproc
 892              	.LFE14:
 894              		.align	1
 895              		.global	ascii_write_char
 896              		.syntax unified
 897              		.code	16
 898              		.thumb_func
 899              		.fpu softvfp
 901              	ascii_write_char:
 902              	.LFB15:
 250:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 251:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_char(unsigned char character){
 903              		.loc 1 251 0
 904              		.cfi_startproc
 905              		@ args = 0, pretend = 0, frame = 8
 906              		@ frame_needed = 1, uses_anonymous_args = 0
 907 039a 80B5     		push	{r7, lr}
 908              		.cfi_def_cfa_offset 8
 909              		.cfi_offset 7, -8
 910              		.cfi_offset 14, -4
 911 039c 82B0     		sub	sp, sp, #8
 912              		.cfi_def_cfa_offset 16
 913 039e 00AF     		add	r7, sp, #0
 914              		.cfi_def_cfa_register 7
 915 03a0 0200     		movs	r2, r0
 916 03a2 FB1D     		adds	r3, r7, #7
 917 03a4 1A70     		strb	r2, [r3]
 252:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Prepare to check if display ready
 253:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_set(B_RW);
 918              		.loc 1 253 0
 919 03a6 0220     		movs	r0, #2
 920 03a8 FFF7FEFF 		bl	ascii_ctrl_bit_set
 254:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_ctrl_bit_clear(B_RS);
 921              		.loc 1 254 0
 922 03ac 0120     		movs	r0, #1
 923 03ae FFF7FEFF 		bl	ascii_ctrl_bit_clear
 255:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 256:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 257:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while((ascii_read_status() & 0x80) != 0);
 924              		.loc 1 257 0
 925 03b2 C046     		nop
 926              	.L48:
 927              		.loc 1 257 0 is_stmt 0 discriminator 1
 928 03b4 FFF7FEFF 		bl	ascii_read_status
 929 03b8 0300     		movs	r3, r0
 930 03ba 5BB2     		sxtb	r3, r3
 931 03bc 002B     		cmp	r3, #0
 932 03be F9DB     		blt	.L48
 258:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(8);
 933              		.loc 1 258 0 is_stmt 1
 934 03c0 0820     		movs	r0, #8
 935 03c2 FFF7FEFF 		bl	delay_mikro
 259:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 260:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write character do display
 261:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_write_data(character);
 936              		.loc 1 261 0
 937 03c6 FB1D     		adds	r3, r7, #7
 938 03c8 1B78     		ldrb	r3, [r3]
 939 03ca 1800     		movs	r0, r3
 940 03cc FFF7FEFF 		bl	ascii_write_data
 262:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 263:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Delay for 43us
 264:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     delay_mikro(43);
 941              		.loc 1 264 0
 942 03d0 2B20     		movs	r0, #43
 943 03d2 FFF7FEFF 		bl	delay_mikro
 265:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 944              		.loc 1 265 0
 945 03d6 C046     		nop
 946 03d8 BD46     		mov	sp, r7
 947 03da 02B0     		add	sp, sp, #8
 948              		@ sp needed
 949 03dc 80BD     		pop	{r7, pc}
 950              		.cfi_endproc
 951              	.LFE15:
 953              		.align	1
 954              		.global	gotoxy
 955              		.syntax unified
 956              		.code	16
 957              		.thumb_func
 958              		.fpu softvfp
 960              	gotoxy:
 961              	.LFB16:
 266:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 267:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void gotoxy(unsigned int row, unsigned int column){
 962              		.loc 1 267 0
 963              		.cfi_startproc
 964              		@ args = 0, pretend = 0, frame = 16
 965              		@ frame_needed = 1, uses_anonymous_args = 0
 966 03de 80B5     		push	{r7, lr}
 967              		.cfi_def_cfa_offset 8
 968              		.cfi_offset 7, -8
 969              		.cfi_offset 14, -4
 970 03e0 84B0     		sub	sp, sp, #16
 971              		.cfi_def_cfa_offset 24
 972 03e2 00AF     		add	r7, sp, #0
 973              		.cfi_def_cfa_register 7
 974 03e4 7860     		str	r0, [r7, #4]
 975 03e6 3960     		str	r1, [r7]
 268:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Make sure row not out of bounds
 269:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(row < 1 || row > 20){
 976              		.loc 1 269 0
 977 03e8 7B68     		ldr	r3, [r7, #4]
 978 03ea 002B     		cmp	r3, #0
 979 03ec 25D0     		beq	.L56
 980              		.loc 1 269 0 is_stmt 0 discriminator 1
 981 03ee 7B68     		ldr	r3, [r7, #4]
 982 03f0 142B     		cmp	r3, #20
 983 03f2 22D8     		bhi	.L56
 270:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         return;
 271:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 272:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Make sure column not out of bounds
 273:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(column < 1 || column > 2){
 984              		.loc 1 273 0 is_stmt 1
 985 03f4 3B68     		ldr	r3, [r7]
 986 03f6 002B     		cmp	r3, #0
 987 03f8 21D0     		beq	.L57
 988              		.loc 1 273 0 is_stmt 0 discriminator 1
 989 03fa 3B68     		ldr	r3, [r7]
 990 03fc 022B     		cmp	r3, #2
 991 03fe 1ED8     		bhi	.L57
 274:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         return;
 275:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 276:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 277:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Set address to the correct location
 278:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     unsigned char address = row - 1;
 992              		.loc 1 278 0 is_stmt 1
 993 0400 7B68     		ldr	r3, [r7, #4]
 994 0402 DAB2     		uxtb	r2, r3
 995 0404 0F23     		movs	r3, #15
 996 0406 FB18     		adds	r3, r7, r3
 997 0408 013A     		subs	r2, r2, #1
 998 040a 1A70     		strb	r2, [r3]
 279:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     if(column == 2){
 999              		.loc 1 279 0
 1000 040c 3B68     		ldr	r3, [r7]
 1001 040e 022B     		cmp	r3, #2
 1002 0410 06D1     		bne	.L55
 280:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         address += 0x40;
 1003              		.loc 1 280 0
 1004 0412 0F23     		movs	r3, #15
 1005 0414 FB18     		adds	r3, r7, r3
 1006 0416 0F22     		movs	r2, #15
 1007 0418 BA18     		adds	r2, r7, r2
 1008 041a 1278     		ldrb	r2, [r2]
 1009 041c 4032     		adds	r2, r2, #64
 1010 041e 1A70     		strb	r2, [r3]
 1011              	.L55:
 281:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 282:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     
 283:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Send command to mark correct spot
 284:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     ascii_command(0x80 | address, 39, 1);
 1012              		.loc 1 284 0
 1013 0420 0F23     		movs	r3, #15
 1014 0422 FB18     		adds	r3, r7, r3
 1015 0424 1B78     		ldrb	r3, [r3]
 1016 0426 8022     		movs	r2, #128
 1017 0428 5242     		rsbs	r2, r2, #0
 1018 042a 1343     		orrs	r3, r2
 1019 042c DBB2     		uxtb	r3, r3
 1020 042e 0122     		movs	r2, #1
 1021 0430 2721     		movs	r1, #39
 1022 0432 1800     		movs	r0, r3
 1023 0434 FFF7FEFF 		bl	ascii_command
 1024 0438 02E0     		b	.L49
 1025              	.L56:
 270:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 1026              		.loc 1 270 0
 1027 043a C046     		nop
 1028 043c 00E0     		b	.L49
 1029              	.L57:
 274:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 1030              		.loc 1 274 0
 1031 043e C046     		nop
 1032              	.L49:
 285:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 1033              		.loc 1 285 0
 1034 0440 BD46     		mov	sp, r7
 1035 0442 04B0     		add	sp, sp, #16
 1036              		@ sp needed
 1037 0444 80BD     		pop	{r7, pc}
 1038              		.cfi_endproc
 1039              	.LFE16:
 1041              		.align	1
 1042              		.global	ascii_write_string
 1043              		.syntax unified
 1044              		.code	16
 1045              		.thumb_func
 1046              		.fpu softvfp
 1048              	ascii_write_string:
 1049              	.LFB17:
 286:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** 
 287:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** void ascii_write_string(char *s){
 1050              		.loc 1 287 0
 1051              		.cfi_startproc
 1052              		@ args = 0, pretend = 0, frame = 8
 1053              		@ frame_needed = 1, uses_anonymous_args = 0
 1054 0446 80B5     		push	{r7, lr}
 1055              		.cfi_def_cfa_offset 8
 1056              		.cfi_offset 7, -8
 1057              		.cfi_offset 14, -4
 1058 0448 82B0     		sub	sp, sp, #8
 1059              		.cfi_def_cfa_offset 16
 1060 044a 00AF     		add	r7, sp, #0
 1061              		.cfi_def_cfa_register 7
 1062 044c 7860     		str	r0, [r7, #4]
 288:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     // Write each character onto the display until the finishing character is reached
 289:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     while(*s != 0){
 1063              		.loc 1 289 0
 1064 044e 06E0     		b	.L59
 1065              	.L60:
 290:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 1066              		.loc 1 290 0
 1067 0450 7B68     		ldr	r3, [r7, #4]
 1068 0452 5A1C     		adds	r2, r3, #1
 1069 0454 7A60     		str	r2, [r7, #4]
 1070 0456 1B78     		ldrb	r3, [r3]
 1071 0458 1800     		movs	r0, r3
 1072 045a FFF7FEFF 		bl	ascii_write_char
 1073              	.L59:
 289:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****         ascii_write_char(*s++);
 1074              		.loc 1 289 0
 1075 045e 7B68     		ldr	r3, [r7, #4]
 1076 0460 1B78     		ldrb	r3, [r3]
 1077 0462 002B     		cmp	r3, #0
 1078 0464 F4D1     		bne	.L60
 291:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c ****     }
 292:C:/School/DAT017/Mop-DAT017/Labs and exercises/asciidisplay\startup.c **** }
 1079              		.loc 1 292 0
 1080 0466 C046     		nop
 1081 0468 BD46     		mov	sp, r7
 1082 046a 02B0     		add	sp, sp, #8
 1083              		@ sp needed
 1084 046c 80BD     		pop	{r7, pc}
 1085              		.cfi_endproc
 1086              	.LFE17:
 1088              	.Letext0:
