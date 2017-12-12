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
  25              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions/startup.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** /*
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****  * 	startup.c
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****  *
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****  */
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #include "exceptions.h"
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #include "delay_interrupt.h"
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #include "gpio.h"
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #include "exti.h"
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #include "syscfg.h"
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #include "NVIC.h"
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #define SIMULATOR
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #define EXERCISE 4
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #ifdef SIMULATOR
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #define DELAY_COUNT 100
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #else
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #define DELAY_COUNT 1000000
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #endif
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void app_init(void);
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void interrupt_counter(int);
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** extern int systick_flag;
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void startup ( void ){
  26              		.loc 1 27 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** __asm volatile(
  31              		.loc 1 28 0
  32              		.syntax divided
  33              	@ 28 "C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	" MOV SP,R0\n"
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	" BL main\n"				/* call main */
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	"_exit: B .\n"				/* never return */
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 	) ;
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** }
  40              		.loc 1 34 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.global	interruption_count
  48              		.bss
  51              	interruption_count:
  52 0000 00       		.space	1
  53              		.text
  54              		.align	1
  55              		.global	main
  56              		.syntax unified
  57              		.code	16
  58              		.thumb_func
  59              		.fpu softvfp
  61              	main:
  62              	.LFB1:
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #if EXERCISE == 4
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     volatile unsigned char interruption_count = 0;
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #endif // exercise == 4
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void main(void){
  63              		.loc 1 41 0
  64              		.cfi_startproc
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 1, uses_anonymous_args = 0
  67 0000 80B5     		push	{r7, lr}
  68              		.cfi_def_cfa_offset 8
  69              		.cfi_offset 7, -8
  70              		.cfi_offset 14, -4
  71 0002 00AF     		add	r7, sp, #0
  72              		.cfi_def_cfa_register 7
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     app_init();
  73              		.loc 1 42 0
  74 0004 FFF7FEFF 		bl	app_init
  75              	.L3:
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #if EXERCISE == 2
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     delay(DELAY_COUNT);
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.odrLow = 0xFF;
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.odrHigh = 0;
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     while(1){
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         if(GPIO_D.odrHigh == 0){
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****             GPIO_D.odrHigh = 1;
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         } else {
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****             GPIO_D.odrHigh = GPIO_D.odrHigh << 1;
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         }
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         if(systick_flag) break;
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     }
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.odrLow = 0;
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #endif // exercise == 2
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #if EXERCISE == 4
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     while(1){
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         GPIO_D.odrLow = interruption_count;
  76              		.loc 1 61 0 discriminator 1
  77 0008 024A     		ldr	r2, .L4
  78 000a 034B     		ldr	r3, .L4+4
  79 000c 1B78     		ldrb	r3, [r3]
  80 000e DBB2     		uxtb	r3, r3
  81 0010 1375     		strb	r3, [r2, #20]
  82 0012 F9E7     		b	.L3
  83              	.L5:
  84              		.align	2
  85              	.L4:
  86 0014 000C0240 		.word	1073875968
  87 0018 00000000 		.word	interruption_count
  88              		.cfi_endproc
  89              	.LFE1:
  91              		.align	1
  92              		.global	app_init
  93              		.syntax unified
  94              		.code	16
  95              		.thumb_func
  96              		.fpu softvfp
  98              	app_init:
  99              	.LFB2:
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     }
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #endif // exercise == 4
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** }
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void app_init(void){
 100              		.loc 1 66 0
 101              		.cfi_startproc
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 1, uses_anonymous_args = 0
 104 001c 80B5     		push	{r7, lr}
 105              		.cfi_def_cfa_offset 8
 106              		.cfi_offset 7, -8
 107              		.cfi_offset 14, -4
 108 001e 00AF     		add	r7, sp, #0
 109              		.cfi_def_cfa_register 7
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #if EXERCISE == 2
  68:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.moder = 0x55555555;
  69:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     delay_interrupt_init();
  70:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #endif // exercise == 2
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  72:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #if EXERCISE == 4
  73:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_E.moder &= 0xFFFF0000;
 110              		.loc 1 73 0
 111 0020 1D4B     		ldr	r3, .L7
 112 0022 1D4A     		ldr	r2, .L7
 113 0024 1268     		ldr	r2, [r2]
 114 0026 120C     		lsrs	r2, r2, #16
 115 0028 1204     		lsls	r2, r2, #16
 116 002a 1A60     		str	r2, [r3]
  74:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.moder &= 0xFFFF0000;
 117              		.loc 1 74 0
 118 002c 1B4B     		ldr	r3, .L7+4
 119 002e 1B4A     		ldr	r2, .L7+4
 120 0030 1268     		ldr	r2, [r2]
 121 0032 120C     		lsrs	r2, r2, #16
 122 0034 1204     		lsls	r2, r2, #16
 123 0036 1A60     		str	r2, [r3]
  75:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     GPIO_D.moder |= 0x00005555;
 124              		.loc 1 75 0
 125 0038 184B     		ldr	r3, .L7+4
 126 003a 184A     		ldr	r2, .L7+4
 127 003c 1268     		ldr	r2, [r2]
 128 003e 1849     		ldr	r1, .L7+8
 129 0040 0A43     		orrs	r2, r1
 130 0042 1A60     		str	r2, [r3]
  76:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     //Reset EXTI3
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     SYSCFG.exticr1High &= 0x0F;
 131              		.loc 1 77 0
 132 0044 174A     		ldr	r2, .L7+12
 133 0046 174B     		ldr	r3, .L7+12
 134 0048 5B7A     		ldrb	r3, [r3, #9]
 135 004a DBB2     		uxtb	r3, r3
 136 004c 0F21     		movs	r1, #15
 137 004e 0B40     		ands	r3, r1
 138 0050 DBB2     		uxtb	r3, r3
 139 0052 5372     		strb	r3, [r2, #9]
  78:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     //Connect port E to EXTI3, that means PE3 becomes an interrupt pin
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     SYSCFG.exticr1High |= 0x40;
 140              		.loc 1 79 0
 141 0054 134A     		ldr	r2, .L7+12
 142 0056 134B     		ldr	r3, .L7+12
 143 0058 5B7A     		ldrb	r3, [r3, #9]
 144 005a DBB2     		uxtb	r3, r3
 145 005c 4021     		movs	r1, #64
 146 005e 0B43     		orrs	r3, r1
 147 0060 DBB2     		uxtb	r3, r3
 148 0062 5372     		strb	r3, [r2, #9]
  80:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     //Configure EXTI3 for interruptions on negative flank
  81:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     EXTI.imr |= 1<<3; //8, pin 3
 149              		.loc 1 81 0
 150 0064 104B     		ldr	r3, .L7+16
 151 0066 104A     		ldr	r2, .L7+16
 152 0068 1268     		ldr	r2, [r2]
 153 006a 0821     		movs	r1, #8
 154 006c 0A43     		orrs	r2, r1
 155 006e 1A60     		str	r2, [r3]
  82:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     EXTI.ftsr |= 1<<3; //8, pin 3
 156              		.loc 1 82 0
 157 0070 0D4B     		ldr	r3, .L7+16
 158 0072 0D4A     		ldr	r2, .L7+16
 159 0074 D268     		ldr	r2, [r2, #12]
 160 0076 0821     		movs	r1, #8
 161 0078 0A43     		orrs	r2, r1
 162 007a DA60     		str	r2, [r3, #12]
  83:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     
  84:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     // Set up interrupt vector
  85:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     *((void(**)(void))0x2001C064) = interrupt_counter;
 163              		.loc 1 85 0
 164 007c 0B4B     		ldr	r3, .L7+20
 165 007e 0C4A     		ldr	r2, .L7+24
 166 0080 1A60     		str	r2, [r3]
  86:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     
  87:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     NVIC.iser0 |= (1<<9);
 167              		.loc 1 87 0
 168 0082 0C4B     		ldr	r3, .L7+28
 169 0084 0B4A     		ldr	r2, .L7+28
 170 0086 1268     		ldr	r2, [r2]
 171 0088 8021     		movs	r1, #128
 172 008a 8900     		lsls	r1, r1, #2
 173 008c 0A43     		orrs	r2, r1
 174 008e 1A60     		str	r2, [r3]
  88:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** #endif // exercise == 4
  89:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** }
 175              		.loc 1 89 0
 176 0090 C046     		nop
 177 0092 BD46     		mov	sp, r7
 178              		@ sp needed
 179 0094 80BD     		pop	{r7, pc}
 180              	.L8:
 181 0096 C046     		.align	2
 182              	.L7:
 183 0098 00100240 		.word	1073876992
 184 009c 000C0240 		.word	1073875968
 185 00a0 55550000 		.word	21845
 186 00a4 00380140 		.word	1073821696
 187 00a8 003C0140 		.word	1073822720
 188 00ac 64C00120 		.word	536985700
 189 00b0 00000000 		.word	interrupt_counter
 190 00b4 00E100E0 		.word	-536813312
 191              		.cfi_endproc
 192              	.LFE2:
 194              		.align	1
 195              		.global	interrupt_counter
 196              		.syntax unified
 197              		.code	16
 198              		.thumb_func
 199              		.fpu softvfp
 201              	interrupt_counter:
 202              	.LFB3:
  90:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** 
  91:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** void interrupt_counter(int num){
 203              		.loc 1 91 0
 204              		.cfi_startproc
 205              		@ args = 0, pretend = 0, frame = 8
 206              		@ frame_needed = 1, uses_anonymous_args = 0
 207 00b8 80B5     		push	{r7, lr}
 208              		.cfi_def_cfa_offset 8
 209              		.cfi_offset 7, -8
 210              		.cfi_offset 14, -4
 211 00ba 82B0     		sub	sp, sp, #8
 212              		.cfi_def_cfa_offset 16
 213 00bc 00AF     		add	r7, sp, #0
 214              		.cfi_def_cfa_register 7
 215 00be 7860     		str	r0, [r7, #4]
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     if (EXTI.pr & 8 == 8){
 216              		.loc 1 92 0
 217 00c0 0A4B     		ldr	r3, .L12
 218 00c2 5B69     		ldr	r3, [r3, #20]
 219 00c4 0122     		movs	r2, #1
 220 00c6 1340     		ands	r3, r2
 221 00c8 0CD0     		beq	.L11
  93:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         interruption_count++;
 222              		.loc 1 93 0
 223 00ca 094B     		ldr	r3, .L12+4
 224 00cc 1B78     		ldrb	r3, [r3]
 225 00ce DBB2     		uxtb	r3, r3
 226 00d0 0133     		adds	r3, r3, #1
 227 00d2 DAB2     		uxtb	r2, r3
 228 00d4 064B     		ldr	r3, .L12+4
 229 00d6 1A70     		strb	r2, [r3]
  94:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****         EXTI.pr |= 8; // ??? dafuq???
 230              		.loc 1 94 0
 231 00d8 044B     		ldr	r3, .L12
 232 00da 044A     		ldr	r2, .L12
 233 00dc 5269     		ldr	r2, [r2, #20]
 234 00de 0821     		movs	r1, #8
 235 00e0 0A43     		orrs	r2, r1
 236 00e2 5A61     		str	r2, [r3, #20]
 237              	.L11:
  95:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c ****     }
  96:C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions\startup.c **** }
 238              		.loc 1 96 0
 239 00e4 C046     		nop
 240 00e6 BD46     		mov	sp, r7
 241 00e8 02B0     		add	sp, sp, #8
 242              		@ sp needed
 243 00ea 80BD     		pop	{r7, pc}
 244              	.L13:
 245              		.align	2
 246              	.L12:
 247 00ec 003C0140 		.word	1073822720
 248 00f0 00000000 		.word	interruption_count
 249              		.cfi_endproc
 250              	.LFE3:
 252              	.Letext0:
 253              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions/gpio.h"
 254              		.file 3 "C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions/exti.h"
 255              		.file 4 "C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions/syscfg.h"
 256              		.file 5 "C:/School/DAT017/Mop-DAT017/Labs and exercises/interruptions_and_exceptions/NVIC.h"
