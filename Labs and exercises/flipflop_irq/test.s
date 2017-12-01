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
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #if 1
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** /*
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****  * 	startup.c
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****  *
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****  */
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #include "gpio.h"
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #include "syscfg.h"
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #include "exti.h"
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define SYSCFG_EXTICR1 *((volatile unsigned short*)0x40013808)
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define EXTI_IMR *((volatile unsigned int*)0x40013C00)
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define EXTI_RTSR *((volatile unsigned int*)0x40013C08)
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define EXTI_FTSR *((volatile unsigned int*)0x40013C0C)
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define EXTI_PR *((volatile unsigned int *)0x40013C14)
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define NVIC *((volatile unsigned int *) 0xE000E100)
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define EXTI_3_BPOS 0x8
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void init_app(void);
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void interrupt_handler(void);
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** static volatile int counter = 0;
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void startup ( void ){
  26              		.loc 1 25 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** __asm volatile(
  31              		.loc 1 26 0
  32              		.syntax divided
  33              	@ 26 "C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	" MOV SP,R0\n"
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	" BL main\n"				/* call main */
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	"_exit: B .\n"				/* never return */
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	) ;
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
  40              		.loc 1 32 0
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
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void main(void){
  62              		.loc 1 34 0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 1, uses_anonymous_args = 0
  66 0000 80B5     		push	{r7, lr}
  67              		.cfi_def_cfa_offset 8
  68              		.cfi_offset 7, -8
  69              		.cfi_offset 14, -4
  70 0002 00AF     		add	r7, sp, #0
  71              		.cfi_def_cfa_register 7
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     app_init();
  72              		.loc 1 35 0
  73 0004 FFF7FEFF 		bl	app_init
  74              	.L3:
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     while(1){
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         GPIO_D.odrLow = counter;
  75              		.loc 1 37 0 discriminator 1
  76 0008 024A     		ldr	r2, .L4
  77 000a 034B     		ldr	r3, .L4+4
  78 000c 1B68     		ldr	r3, [r3]
  79 000e DBB2     		uxtb	r3, r3
  80 0010 1375     		strb	r3, [r2, #20]
  81 0012 F9E7     		b	.L3
  82              	.L5:
  83              		.align	2
  84              	.L4:
  85 0014 000C0240 		.word	1073875968
  86 0018 00000000 		.word	counter
  87              		.cfi_endproc
  88              	.LFE1:
  90              		.align	1
  91              		.global	app_init
  92              		.syntax unified
  93              		.code	16
  94              		.thumb_func
  95              		.fpu softvfp
  97              	app_init:
  98              	.LFB2:
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     }
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void app_init(void){
  99              		.loc 1 41 0
 100              		.cfi_startproc
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 1, uses_anonymous_args = 0
 103 001c 80B5     		push	{r7, lr}
 104              		.cfi_def_cfa_offset 8
 105              		.cfi_offset 7, -8
 106              		.cfi_offset 14, -4
 107 001e 00AF     		add	r7, sp, #0
 108              		.cfi_def_cfa_register 7
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     /*
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Set up GPIO
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_E.moder &= 0xFFFF0000;
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_E.moder |= 0x00001500;
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_D.moder &= 0xFFFF0000;
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_D.moder |= 0x00005555;
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Reset EXTI3, then connect port E to EXTI3, that means PE3 becomes an interrupt pin
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     SYSCFG_EXTICR1 &= 0x0FFF;
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     SYSCFG_EXTICR1 |= 0x4000;
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Configure EXTI3 for interruptions on negative flank
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     EXTI_IMR |= EXTI_3_BPOS;
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     EXTI_FTSR |= EXTI_3_BPOS;
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     EXTI_RTSR &= ~EXTI_3_BPOS;
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Set up interrupt vector
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     *((void (**) (void))0x2001C064) = interrupt_handler;
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Enable interrupt
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     NVIC |= (1<<9);
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     */
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	GPIO_D.moder = 0x55555555;
 109              		.loc 1 65 0
 110 0020 1B4B     		ldr	r3, .L7
 111 0022 1C4A     		ldr	r2, .L7+4
 112 0024 1A60     		str	r2, [r3]
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	GPIO_E.moder = 0x1500;
 113              		.loc 1 66 0
 114 0026 1C4B     		ldr	r3, .L7+8
 115 0028 A822     		movs	r2, #168
 116 002a 5201     		lsls	r2, r2, #5
 117 002c 1A60     		str	r2, [r3]
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	SYSCFG_EXTICR1 &= 0x0FFF;
 118              		.loc 1 67 0
 119 002e 1B4A     		ldr	r2, .L7+12
 120 0030 1A4B     		ldr	r3, .L7+12
 121 0032 1B88     		ldrh	r3, [r3]
 122 0034 9BB2     		uxth	r3, r3
 123 0036 1B05     		lsls	r3, r3, #20
 124 0038 1B0D     		lsrs	r3, r3, #20
 125 003a 9BB2     		uxth	r3, r3
 126 003c 1380     		strh	r3, [r2]
  68:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	SYSCFG_EXTICR1 |= 0x4000;
 127              		.loc 1 68 0
 128 003e 1749     		ldr	r1, .L7+12
 129 0040 164B     		ldr	r3, .L7+12
 130 0042 1B88     		ldrh	r3, [r3]
 131 0044 9BB2     		uxth	r3, r3
 132 0046 8022     		movs	r2, #128
 133 0048 D201     		lsls	r2, r2, #7
 134 004a 1343     		orrs	r3, r2
 135 004c 9BB2     		uxth	r3, r3
 136 004e 0B80     		strh	r3, [r1]
  69:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	EXTI_IMR |= EXTI_3_BPOS;
 137              		.loc 1 69 0
 138 0050 134B     		ldr	r3, .L7+16
 139 0052 134A     		ldr	r2, .L7+16
 140 0054 1268     		ldr	r2, [r2]
 141 0056 0821     		movs	r1, #8
 142 0058 0A43     		orrs	r2, r1
 143 005a 1A60     		str	r2, [r3]
  70:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	EXTI_FTSR |= EXTI_3_BPOS;
 144              		.loc 1 70 0
 145 005c 114B     		ldr	r3, .L7+20
 146 005e 114A     		ldr	r2, .L7+20
 147 0060 1268     		ldr	r2, [r2]
 148 0062 0821     		movs	r1, #8
 149 0064 0A43     		orrs	r2, r1
 150 0066 1A60     		str	r2, [r3]
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	EXTI_RTSR &= ~EXTI_3_BPOS;
 151              		.loc 1 71 0
 152 0068 0F4B     		ldr	r3, .L7+24
 153 006a 0F4A     		ldr	r2, .L7+24
 154 006c 1268     		ldr	r2, [r2]
 155 006e 0821     		movs	r1, #8
 156 0070 8A43     		bics	r2, r1
 157 0072 1A60     		str	r2, [r3]
  72:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	*((void (**) (void) ) 0x2001C064) = interrupt_handler;
 158              		.loc 1 72 0
 159 0074 0D4B     		ldr	r3, .L7+28
 160 0076 0E4A     		ldr	r2, .L7+32
 161 0078 1A60     		str	r2, [r3]
  73:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	NVIC |= (1<<9);
 162              		.loc 1 73 0
 163 007a 0E4B     		ldr	r3, .L7+36
 164 007c 0D4A     		ldr	r2, .L7+36
 165 007e 1268     		ldr	r2, [r2]
 166 0080 8021     		movs	r1, #128
 167 0082 8900     		lsls	r1, r1, #2
 168 0084 0A43     		orrs	r2, r1
 169 0086 1A60     		str	r2, [r3]
  74:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
 170              		.loc 1 74 0
 171 0088 C046     		nop
 172 008a BD46     		mov	sp, r7
 173              		@ sp needed
 174 008c 80BD     		pop	{r7, pc}
 175              	.L8:
 176 008e C046     		.align	2
 177              	.L7:
 178 0090 000C0240 		.word	1073875968
 179 0094 55555555 		.word	1431655765
 180 0098 00100240 		.word	1073876992
 181 009c 08380140 		.word	1073821704
 182 00a0 003C0140 		.word	1073822720
 183 00a4 0C3C0140 		.word	1073822732
 184 00a8 083C0140 		.word	1073822728
 185 00ac 64C00120 		.word	536985700
 186 00b0 00000000 		.word	interrupt_handler
 187 00b4 00E100E0 		.word	-536813312
 188              		.cfi_endproc
 189              	.LFE2:
 191              		.align	1
 192              		.global	interrupt_handler
 193              		.syntax unified
 194              		.code	16
 195              		.thumb_func
 196              		.fpu softvfp
 198              	interrupt_handler:
 199              	.LFB3:
  75:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  76:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void interrupt_handler(void){
 200              		.loc 1 76 0
 201              		.cfi_startproc
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 1, uses_anonymous_args = 0
 204 00b8 80B5     		push	{r7, lr}
 205              		.cfi_def_cfa_offset 8
 206              		.cfi_offset 7, -8
 207              		.cfi_offset 14, -4
 208 00ba 00AF     		add	r7, sp, #0
 209              		.cfi_def_cfa_register 7
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     if (EXTI_PR & EXTI_3_BPOS){
 210              		.loc 1 77 0
 211 00bc 094B     		ldr	r3, .L12
 212 00be 1B68     		ldr	r3, [r3]
 213 00c0 0822     		movs	r2, #8
 214 00c2 1340     		ands	r3, r2
 215 00c4 0AD0     		beq	.L11
  78:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         counter++;
 216              		.loc 1 78 0
 217 00c6 084B     		ldr	r3, .L12+4
 218 00c8 1B68     		ldr	r3, [r3]
 219 00ca 5A1C     		adds	r2, r3, #1
 220 00cc 064B     		ldr	r3, .L12+4
 221 00ce 1A60     		str	r2, [r3]
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         EXTI_PR |= EXTI_3_BPOS; // ??? dafuq???
 222              		.loc 1 79 0
 223 00d0 044B     		ldr	r3, .L12
 224 00d2 044A     		ldr	r2, .L12
 225 00d4 1268     		ldr	r2, [r2]
 226 00d6 0821     		movs	r1, #8
 227 00d8 0A43     		orrs	r2, r1
 228 00da 1A60     		str	r2, [r3]
 229              	.L11:
  80:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     }
  81:C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
 230              		.loc 1 81 0
 231 00dc C046     		nop
 232 00de BD46     		mov	sp, r7
 233              		@ sp needed
 234 00e0 80BD     		pop	{r7, pc}
 235              	.L13:
 236 00e2 C046     		.align	2
 237              	.L12:
 238 00e4 143C0140 		.word	1073822740
 239 00e8 00000000 		.word	counter
 240              		.cfi_endproc
 241              	.LFE3:
 243              	.Letext0:
 244              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and exercises/flipflop_irq/gpio.h"
