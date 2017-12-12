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
  25              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq/startup.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** /*
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****  * 	startup.c
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****  *
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****  */
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #include "gpio.h"
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #include "syscfg.h"
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #include "exti.h"
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define EXERCISE 5
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define EXTI_3_BPOS 0x8
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define NVIC *((volatile unsigned int *) 0xE000E100)
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define IRQ0 0x1
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define IRQ1 0x2
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define IRQ2 0x4
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define IRQ 0x8
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define RST0 0x10
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define RST1 0x20
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define RST2 0x40
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void init_app(void);
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void interrupt_handler(void);
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void reset_irq_pin(unsigned char);
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** static volatile int counter = 0;
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void startup ( void ){
  26              		.loc 1 29 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** __asm volatile(
  31              		.loc 1 30 0
  32              		.syntax divided
  33              	@ 30 "C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	" MOV SP,R0\n"
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	" BL main\n"				/* call main */
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	"_exit: B .\n"				/* never return */
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	) ;
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
  40              		.loc 1 36 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.bss
  48              		.align	2
  49              	counter:
  50 0000 00000000 		.space	4
  52              		.text
  53              		.align	1
  54              		.global	main
  55              		.syntax unified
  56              		.code	16
  57              		.thumb_func
  58              		.fpu softvfp
  60              	main:
  61              	.LFB1:
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void main(void){
  62              		.loc 1 38 0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 1, uses_anonymous_args = 0
  66 0000 80B5     		push	{r7, lr}
  67              		.cfi_def_cfa_offset 8
  68              		.cfi_offset 7, -8
  69              		.cfi_offset 14, -4
  70 0002 00AF     		add	r7, sp, #0
  71              		.cfi_def_cfa_register 7
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     app_init();
  72              		.loc 1 39 0
  73 0004 FFF7FEFF 		bl	app_init
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #if EXERCISE == 4
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     while(1){
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         GPIO_D.odrLow = counter;
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 		int y = 0;
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     }
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #endif // exercise 4
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #if EXERCISE == 5
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_D.odrHigh = 0;
  74              		.loc 1 48 0
  75 0008 044B     		ldr	r3, .L4
  76 000a 0022     		movs	r2, #0
  77 000c 5A75     		strb	r2, [r3, #21]
  78              	.L3:
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     while(1){
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         GPIO_D.odrLow = counter;
  79              		.loc 1 50 0 discriminator 1
  80 000e 034A     		ldr	r2, .L4
  81 0010 034B     		ldr	r3, .L4+4
  82 0012 1B68     		ldr	r3, [r3]
  83 0014 DBB2     		uxtb	r3, r3
  84 0016 1375     		strb	r3, [r2, #20]
  85 0018 F9E7     		b	.L3
  86              	.L5:
  87 001a C046     		.align	2
  88              	.L4:
  89 001c 000C0240 		.word	1073875968
  90 0020 00000000 		.word	counter
  91              		.cfi_endproc
  92              	.LFE1:
  94              		.align	1
  95              		.global	app_init
  96              		.syntax unified
  97              		.code	16
  98              		.thumb_func
  99              		.fpu softvfp
 101              	app_init:
 102              	.LFB2:
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     }
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #endif // exercise 5
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void app_init(void){
 103              		.loc 1 55 0
 104              		.cfi_startproc
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 1, uses_anonymous_args = 0
 107 0024 80B5     		push	{r7, lr}
 108              		.cfi_def_cfa_offset 8
 109              		.cfi_offset 7, -8
 110              		.cfi_offset 14, -4
 111 0026 00AF     		add	r7, sp, #0
 112              		.cfi_def_cfa_register 7
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #if EXERCISE < 6
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Set up GPIO
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_E.moder &= 0xFFFF0000;
 113              		.loc 1 58 0
 114 0028 1D4B     		ldr	r3, .L7
 115 002a 1D4A     		ldr	r2, .L7
 116 002c 1268     		ldr	r2, [r2]
 117 002e 120C     		lsrs	r2, r2, #16
 118 0030 1204     		lsls	r2, r2, #16
 119 0032 1A60     		str	r2, [r3]
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_E.moder |= 0x00001500;
 120              		.loc 1 59 0
 121 0034 1A4B     		ldr	r3, .L7
 122 0036 1A4A     		ldr	r2, .L7
 123 0038 1268     		ldr	r2, [r2]
 124 003a A821     		movs	r1, #168
 125 003c 4901     		lsls	r1, r1, #5
 126 003e 0A43     		orrs	r2, r1
 127 0040 1A60     		str	r2, [r3]
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #if EXERCISE == 4
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_D.moder &= 0xFFFF0000;
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_D.moder |= 0x00005555;
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #else
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_D.moder = 0x55555555;
 128              		.loc 1 65 0
 129 0042 184B     		ldr	r3, .L7+4
 130 0044 184A     		ldr	r2, .L7+8
 131 0046 1A60     		str	r2, [r3]
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #endif // Different values for GPIO_D.moder based on exercise
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  68:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Reset EXTI3, then connect port E to EXTI3, that means PE3 becomes an interrupt pin
  69:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  70:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	//fungerar
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	SYSCFG.exticr &= 0x0FFF;
 132              		.loc 1 71 0
 133 0048 184B     		ldr	r3, .L7+12
 134 004a 184A     		ldr	r2, .L7+12
 135 004c 9268     		ldr	r2, [r2, #8]
 136 004e 1205     		lsls	r2, r2, #20
 137 0050 120D     		lsrs	r2, r2, #20
 138 0052 9A60     		str	r2, [r3, #8]
  72:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	SYSCFG.exticr |= 0x4000;
 139              		.loc 1 72 0
 140 0054 154B     		ldr	r3, .L7+12
 141 0056 154A     		ldr	r2, .L7+12
 142 0058 9268     		ldr	r2, [r2, #8]
 143 005a 8021     		movs	r1, #128
 144 005c C901     		lsls	r1, r1, #7
 145 005e 0A43     		orrs	r2, r1
 146 0060 9A60     		str	r2, [r3, #8]
  73:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	
  74:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	//fungerar också
  75:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	//SYSCFG.exticr1 &= 0x0FFF;
  76:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	//SYSCFG.exticr1 |= 0x4000;
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  78:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Configure EXTI3 for interruptions on negative flank
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     EXTI.imr |= EXTI_3_BPOS;
 147              		.loc 1 79 0
 148 0062 134B     		ldr	r3, .L7+16
 149 0064 124A     		ldr	r2, .L7+16
 150 0066 1268     		ldr	r2, [r2]
 151 0068 0821     		movs	r1, #8
 152 006a 0A43     		orrs	r2, r1
 153 006c 1A60     		str	r2, [r3]
  80:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	EXTI.ftsr |= EXTI_3_BPOS;
 154              		.loc 1 80 0
 155 006e 104B     		ldr	r3, .L7+16
 156 0070 0F4A     		ldr	r2, .L7+16
 157 0072 D268     		ldr	r2, [r2, #12]
 158 0074 0821     		movs	r1, #8
 159 0076 0A43     		orrs	r2, r1
 160 0078 DA60     		str	r2, [r3, #12]
  81:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	EXTI.rtsr &= ~EXTI_3_BPOS;
 161              		.loc 1 81 0
 162 007a 0D4B     		ldr	r3, .L7+16
 163 007c 0C4A     		ldr	r2, .L7+16
 164 007e 9268     		ldr	r2, [r2, #8]
 165 0080 0821     		movs	r1, #8
 166 0082 8A43     		bics	r2, r1
 167 0084 9A60     		str	r2, [r3, #8]
  82:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	
  83:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Set up interrupt vector
  84:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     *((void (**) (void))0x2001C064) = interrupt_handler;
 168              		.loc 1 84 0
 169 0086 0B4B     		ldr	r3, .L7+20
 170 0088 0B4A     		ldr	r2, .L7+24
 171 008a 1A60     		str	r2, [r3]
  85:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  86:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Enable interrupt
  87:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     NVIC |= (1<<9);
 172              		.loc 1 87 0
 173 008c 0B4B     		ldr	r3, .L7+28
 174 008e 0B4A     		ldr	r2, .L7+28
 175 0090 1268     		ldr	r2, [r2]
 176 0092 8021     		movs	r1, #128
 177 0094 8900     		lsls	r1, r1, #2
 178 0096 0A43     		orrs	r2, r1
 179 0098 1A60     		str	r2, [r3]
  88:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #endif // exercise 4 or 5
  89:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
 180              		.loc 1 89 0
 181 009a C046     		nop
 182 009c BD46     		mov	sp, r7
 183              		@ sp needed
 184 009e 80BD     		pop	{r7, pc}
 185              	.L8:
 186              		.align	2
 187              	.L7:
 188 00a0 00100240 		.word	1073876992
 189 00a4 000C0240 		.word	1073875968
 190 00a8 55555555 		.word	1431655765
 191 00ac 00380140 		.word	1073821696
 192 00b0 003C0140 		.word	1073822720
 193 00b4 64C00120 		.word	536985700
 194 00b8 00000000 		.word	interrupt_handler
 195 00bc 00E100E0 		.word	-536813312
 196              		.cfi_endproc
 197              	.LFE2:
 199              		.align	1
 200              		.global	interrupt_handler
 201              		.syntax unified
 202              		.code	16
 203              		.thumb_func
 204              		.fpu softvfp
 206              	interrupt_handler:
 207              	.LFB3:
  90:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  91:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void interrupt_handler(void){
 208              		.loc 1 91 0
 209              		.cfi_startproc
 210              		@ args = 0, pretend = 0, frame = 8
 211              		@ frame_needed = 1, uses_anonymous_args = 0
 212 00c0 80B5     		push	{r7, lr}
 213              		.cfi_def_cfa_offset 8
 214              		.cfi_offset 7, -8
 215              		.cfi_offset 14, -4
 216 00c2 82B0     		sub	sp, sp, #8
 217              		.cfi_def_cfa_offset 16
 218 00c4 00AF     		add	r7, sp, #0
 219              		.cfi_def_cfa_register 7
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #if EXERCISE == 4
  93:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     if (EXTI.pr & EXTI_3_BPOS){
  94:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         counter++;
  95:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         EXTI.pr |= EXTI_3_BPOS; //denna bit nollställs då den ettställs. makes perfect sense.
  96:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     }
  97:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #endif // exercise 4
  98:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  99:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #if EXERCISE == 5
 100:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     unsigned char exti_pr = EXTI.pr;
 220              		.loc 1 100 0
 221 00c6 204B     		ldr	r3, .L15
 222 00c8 5A69     		ldr	r2, [r3, #20]
 223 00ca FB1D     		adds	r3, r7, #7
 224 00cc 1A70     		strb	r2, [r3]
 101:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     if(exti_pr & IRQ){
 225              		.loc 1 101 0
 226 00ce FB1D     		adds	r3, r7, #7
 227 00d0 1B78     		ldrb	r3, [r3]
 228 00d2 0822     		movs	r2, #8
 229 00d4 1340     		ands	r3, r2
 230 00d6 32D0     		beq	.L14
 102:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         if(GPIO_E.idrLow & IRQ0){
 231              		.loc 1 102 0
 232 00d8 1C4B     		ldr	r3, .L15+4
 233 00da 1B7C     		ldrb	r3, [r3, #16]
 234 00dc DBB2     		uxtb	r3, r3
 235 00de 1A00     		movs	r2, r3
 236 00e0 0123     		movs	r3, #1
 237 00e2 1340     		ands	r3, r2
 238 00e4 07D0     		beq	.L11
 103:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****             reset_irq_pin(RST0);
 239              		.loc 1 103 0
 240 00e6 1020     		movs	r0, #16
 241 00e8 FFF7FEFF 		bl	reset_irq_pin
 104:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****             counter++;
 242              		.loc 1 104 0
 243 00ec 184B     		ldr	r3, .L15+8
 244 00ee 1B68     		ldr	r3, [r3]
 245 00f0 5A1C     		adds	r2, r3, #1
 246 00f2 174B     		ldr	r3, .L15+8
 247 00f4 1A60     		str	r2, [r3]
 248              	.L11:
 105:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         }
 106:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         if(GPIO_E.idrLow & IRQ1){
 249              		.loc 1 106 0
 250 00f6 154B     		ldr	r3, .L15+4
 251 00f8 1B7C     		ldrb	r3, [r3, #16]
 252 00fa DBB2     		uxtb	r3, r3
 253 00fc 1A00     		movs	r2, r3
 254 00fe 0223     		movs	r3, #2
 255 0100 1340     		ands	r3, r2
 256 0102 05D0     		beq	.L12
 107:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****             reset_irq_pin(RST1);
 257              		.loc 1 107 0
 258 0104 2020     		movs	r0, #32
 259 0106 FFF7FEFF 		bl	reset_irq_pin
 108:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****             counter = 0;
 260              		.loc 1 108 0
 261 010a 114B     		ldr	r3, .L15+8
 262 010c 0022     		movs	r2, #0
 263 010e 1A60     		str	r2, [r3]
 264              	.L12:
 109:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         }
 110:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         if(GPIO_E.idrLow & IRQ2){
 265              		.loc 1 110 0
 266 0110 0E4B     		ldr	r3, .L15+4
 267 0112 1B7C     		ldrb	r3, [r3, #16]
 268 0114 DBB2     		uxtb	r3, r3
 269 0116 1A00     		movs	r2, r3
 270 0118 0423     		movs	r3, #4
 271 011a 1340     		ands	r3, r2
 272 011c 09D0     		beq	.L13
 111:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****             reset_irq_pin(RST2);
 273              		.loc 1 111 0
 274 011e 4020     		movs	r0, #64
 275 0120 FFF7FEFF 		bl	reset_irq_pin
 112:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****             GPIO_D.odrHigh ^= 0xFF;
 276              		.loc 1 112 0
 277 0124 0B4A     		ldr	r2, .L15+12
 278 0126 0B4B     		ldr	r3, .L15+12
 279 0128 5B7D     		ldrb	r3, [r3, #21]
 280 012a DBB2     		uxtb	r3, r3
 281 012c DB43     		mvns	r3, r3
 282 012e DBB2     		uxtb	r3, r3
 283 0130 5375     		strb	r3, [r2, #21]
 284              	.L13:
 113:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         }
 114:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         EXTI.pr |= IRQ;
 285              		.loc 1 114 0
 286 0132 054B     		ldr	r3, .L15
 287 0134 044A     		ldr	r2, .L15
 288 0136 5269     		ldr	r2, [r2, #20]
 289 0138 0821     		movs	r1, #8
 290 013a 0A43     		orrs	r2, r1
 291 013c 5A61     		str	r2, [r3, #20]
 292              	.L14:
 115:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     }
 116:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #endif // exercise 5
 117:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
 293              		.loc 1 117 0
 294 013e C046     		nop
 295 0140 BD46     		mov	sp, r7
 296 0142 02B0     		add	sp, sp, #8
 297              		@ sp needed
 298 0144 80BD     		pop	{r7, pc}
 299              	.L16:
 300 0146 C046     		.align	2
 301              	.L15:
 302 0148 003C0140 		.word	1073822720
 303 014c 00100240 		.word	1073876992
 304 0150 00000000 		.word	counter
 305 0154 000C0240 		.word	1073875968
 306              		.cfi_endproc
 307              	.LFE3:
 309              		.align	1
 310              		.global	reset_irq_pin
 311              		.syntax unified
 312              		.code	16
 313              		.thumb_func
 314              		.fpu softvfp
 316              	reset_irq_pin:
 317              	.LFB4:
 118:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
 119:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void reset_irq_pin(unsigned char pin){
 318              		.loc 1 119 0
 319              		.cfi_startproc
 320              		@ args = 0, pretend = 0, frame = 8
 321              		@ frame_needed = 1, uses_anonymous_args = 0
 322 0158 80B5     		push	{r7, lr}
 323              		.cfi_def_cfa_offset 8
 324              		.cfi_offset 7, -8
 325              		.cfi_offset 14, -4
 326 015a 82B0     		sub	sp, sp, #8
 327              		.cfi_def_cfa_offset 16
 328 015c 00AF     		add	r7, sp, #0
 329              		.cfi_def_cfa_register 7
 330 015e 0200     		movs	r2, r0
 331 0160 FB1D     		adds	r3, r7, #7
 332 0162 1A70     		strb	r2, [r3]
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Resets an IRQ-pin by turning its reset value on and off again
 121:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_E.odrLow |= pin;
 333              		.loc 1 121 0
 334 0164 0D49     		ldr	r1, .L18
 335 0166 0D4B     		ldr	r3, .L18
 336 0168 1B7D     		ldrb	r3, [r3, #20]
 337 016a DAB2     		uxtb	r2, r3
 338 016c FB1D     		adds	r3, r7, #7
 339 016e 1B78     		ldrb	r3, [r3]
 340 0170 1343     		orrs	r3, r2
 341 0172 DBB2     		uxtb	r3, r3
 342 0174 0B75     		strb	r3, [r1, #20]
 122:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_E.odrLow &= ~pin;
 343              		.loc 1 122 0
 344 0176 0949     		ldr	r1, .L18
 345 0178 084B     		ldr	r3, .L18
 346 017a 1B7D     		ldrb	r3, [r3, #20]
 347 017c DBB2     		uxtb	r3, r3
 348 017e 5BB2     		sxtb	r3, r3
 349 0180 FA1D     		adds	r2, r7, #7
 350 0182 1278     		ldrb	r2, [r2]
 351 0184 52B2     		sxtb	r2, r2
 352 0186 D243     		mvns	r2, r2
 353 0188 52B2     		sxtb	r2, r2
 354 018a 1340     		ands	r3, r2
 355 018c 5BB2     		sxtb	r3, r3
 356 018e DBB2     		uxtb	r3, r3
 357 0190 0B75     		strb	r3, [r1, #20]
 123:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
 358              		.loc 1 123 0
 359 0192 C046     		nop
 360 0194 BD46     		mov	sp, r7
 361 0196 02B0     		add	sp, sp, #8
 362              		@ sp needed
 363 0198 80BD     		pop	{r7, pc}
 364              	.L19:
 365 019a C046     		.align	2
 366              	.L18:
 367 019c 00100240 		.word	1073876992
 368              		.cfi_endproc
 369              	.LFE4:
 371              	.Letext0:
 372              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq/gpio.h"
 373              		.file 3 "C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq/syscfg.h"
 374              		.file 4 "C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq/exti.h"
