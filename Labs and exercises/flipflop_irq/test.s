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
  25              		.file 1 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq/startup.c"
   1:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #if 1
   2:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** /*
   3:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****  * 	startup.c
   4:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****  *
   5:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****  */
   6:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #include "gpio.h"
   7:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #include "syscfg.h"
   8:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #include "exti.h"
   9:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  10:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define EXTI_3_BPOS 0x8
  11:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** #define NVIC *((volatile unsigned int *) 0xE000E100)
  12:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  13:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  14:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void init_app(void);
  15:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void interrupt_handler(void);
  16:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  17:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** static volatile int counter = 0;
  18:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  19:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void startup ( void ){
  26              		.loc 1 19 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  20:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** __asm volatile(
  31              		.loc 1 20 0
  32              		.syntax divided
  33              	@ 20 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  21:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  22:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	" MOV SP,R0\n"
  23:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	" BL main\n"				/* call main */
  24:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	"_exit: B .\n"				/* never return */
  25:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	) ;
  26:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
  40              		.loc 1 26 0
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
  54              		.global	interrupt_handler
  55              		.syntax unified
  56              		.code	16
  57              		.thumb_func
  58              		.fpu softvfp
  60              	interrupt_handler:
  61              	.LFB1:
  27:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  28:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  29:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void interrupt_handler(void){
  62              		.loc 1 29 0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 1, uses_anonymous_args = 0
  66 0000 80B5     		push	{r7, lr}
  67              		.cfi_def_cfa_offset 8
  68              		.cfi_offset 7, -8
  69              		.cfi_offset 14, -4
  70 0002 00AF     		add	r7, sp, #0
  71              		.cfi_def_cfa_register 7
  30:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     if (EXTI.pr & EXTI_3_BPOS){
  72              		.loc 1 30 0
  73 0004 094B     		ldr	r3, .L5
  74 0006 5B69     		ldr	r3, [r3, #20]
  75 0008 0822     		movs	r2, #8
  76 000a 1340     		ands	r3, r2
  77 000c 0AD0     		beq	.L4
  31:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         counter++;
  78              		.loc 1 31 0
  79 000e 084B     		ldr	r3, .L5+4
  80 0010 1B68     		ldr	r3, [r3]
  81 0012 5A1C     		adds	r2, r3, #1
  82 0014 064B     		ldr	r3, .L5+4
  83 0016 1A60     		str	r2, [r3]
  32:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         EXTI.pr |= EXTI_3_BPOS; // ??? dafuq???
  84              		.loc 1 32 0
  85 0018 044B     		ldr	r3, .L5
  86 001a 044A     		ldr	r2, .L5
  87 001c 5269     		ldr	r2, [r2, #20]
  88 001e 0821     		movs	r1, #8
  89 0020 0A43     		orrs	r2, r1
  90 0022 5A61     		str	r2, [r3, #20]
  91              	.L4:
  33:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     }
  34:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
  92              		.loc 1 34 0
  93 0024 C046     		nop
  94 0026 BD46     		mov	sp, r7
  95              		@ sp needed
  96 0028 80BD     		pop	{r7, pc}
  97              	.L6:
  98 002a C046     		.align	2
  99              	.L5:
 100 002c 003C0140 		.word	1073822720
 101 0030 00000000 		.word	counter
 102              		.cfi_endproc
 103              	.LFE1:
 105              		.align	1
 106              		.global	app_init
 107              		.syntax unified
 108              		.code	16
 109              		.thumb_func
 110              		.fpu softvfp
 112              	app_init:
 113              	.LFB2:
  35:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  36:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void app_init(void){
 114              		.loc 1 36 0
 115              		.cfi_startproc
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 1, uses_anonymous_args = 0
 118 0034 80B5     		push	{r7, lr}
 119              		.cfi_def_cfa_offset 8
 120              		.cfi_offset 7, -8
 121              		.cfi_offset 14, -4
 122 0036 00AF     		add	r7, sp, #0
 123              		.cfi_def_cfa_register 7
  37:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Set up GPIO
  38:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_E.moder &= 0xFFFF0000;
 124              		.loc 1 38 0
 125 0038 224B     		ldr	r3, .L8
 126 003a 224A     		ldr	r2, .L8
 127 003c 1268     		ldr	r2, [r2]
 128 003e 120C     		lsrs	r2, r2, #16
 129 0040 1204     		lsls	r2, r2, #16
 130 0042 1A60     		str	r2, [r3]
  39:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_E.moder |= 0x00001500;
 131              		.loc 1 39 0
 132 0044 1F4B     		ldr	r3, .L8
 133 0046 1F4A     		ldr	r2, .L8
 134 0048 1268     		ldr	r2, [r2]
 135 004a A821     		movs	r1, #168
 136 004c 4901     		lsls	r1, r1, #5
 137 004e 0A43     		orrs	r2, r1
 138 0050 1A60     		str	r2, [r3]
  40:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_D.moder &= 0xFFFF0000;
 139              		.loc 1 40 0
 140 0052 1D4B     		ldr	r3, .L8+4
 141 0054 1C4A     		ldr	r2, .L8+4
 142 0056 1268     		ldr	r2, [r2]
 143 0058 120C     		lsrs	r2, r2, #16
 144 005a 1204     		lsls	r2, r2, #16
 145 005c 1A60     		str	r2, [r3]
  41:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     GPIO_D.moder |= 0x00005555;
 146              		.loc 1 41 0
 147 005e 1A4B     		ldr	r3, .L8+4
 148 0060 194A     		ldr	r2, .L8+4
 149 0062 1268     		ldr	r2, [r2]
 150 0064 1949     		ldr	r1, .L8+8
 151 0066 0A43     		orrs	r2, r1
 152 0068 1A60     		str	r2, [r3]
  42:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  43:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Reset EXTI3, then connect port E to EXTI3, that means PE3 becomes an interrupt pin
  44:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  45:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	//fungerar
  46:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	//SYSCFG.exticr &= 0x0FFF;
  47:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	//SYSCFG.exticr |= 0x4000;
  48:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	
  49:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	//fungerar ej
  50:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	SYSCFG.exticr1 &= 0x0FFF;
 153              		.loc 1 50 0
 154 006a 194B     		ldr	r3, .L8+12
 155 006c 184A     		ldr	r2, .L8+12
 156 006e 9268     		ldr	r2, [r2, #8]
 157 0070 1205     		lsls	r2, r2, #20
 158 0072 120D     		lsrs	r2, r2, #20
 159 0074 9A60     		str	r2, [r3, #8]
  51:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	SYSCFG.exticr1 |= 0x4000;
 160              		.loc 1 51 0
 161 0076 164B     		ldr	r3, .L8+12
 162 0078 154A     		ldr	r2, .L8+12
 163 007a 9268     		ldr	r2, [r2, #8]
 164 007c 8021     		movs	r1, #128
 165 007e C901     		lsls	r1, r1, #7
 166 0080 0A43     		orrs	r2, r1
 167 0082 9A60     		str	r2, [r3, #8]
  52:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  53:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Configure EXTI3 for interruptions on negative flank
  54:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     EXTI.imr |= EXTI_3_BPOS;
 168              		.loc 1 54 0
 169 0084 134B     		ldr	r3, .L8+16
 170 0086 134A     		ldr	r2, .L8+16
 171 0088 1268     		ldr	r2, [r2]
 172 008a 0821     		movs	r1, #8
 173 008c 0A43     		orrs	r2, r1
 174 008e 1A60     		str	r2, [r3]
  55:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	EXTI.ftsr |= EXTI_3_BPOS;
 175              		.loc 1 55 0
 176 0090 104B     		ldr	r3, .L8+16
 177 0092 104A     		ldr	r2, .L8+16
 178 0094 D268     		ldr	r2, [r2, #12]
 179 0096 0821     		movs	r1, #8
 180 0098 0A43     		orrs	r2, r1
 181 009a DA60     		str	r2, [r3, #12]
  56:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	EXTI.rtsr &= ~EXTI_3_BPOS;
 182              		.loc 1 56 0
 183 009c 0D4B     		ldr	r3, .L8+16
 184 009e 0D4A     		ldr	r2, .L8+16
 185 00a0 9268     		ldr	r2, [r2, #8]
 186 00a2 0821     		movs	r1, #8
 187 00a4 8A43     		bics	r2, r1
 188 00a6 9A60     		str	r2, [r3, #8]
  57:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 	
  58:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Set up interrupt vector
  59:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     *((void (**) (void))0x2001C064) = interrupt_handler;
 189              		.loc 1 59 0
 190 00a8 0B4B     		ldr	r3, .L8+20
 191 00aa 0C4A     		ldr	r2, .L8+24
 192 00ac 1A60     		str	r2, [r3]
  60:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     
  61:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     // Enable interrupt
  62:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     NVIC |= (1<<9);
 193              		.loc 1 62 0
 194 00ae 0C4B     		ldr	r3, .L8+28
 195 00b0 0B4A     		ldr	r2, .L8+28
 196 00b2 1268     		ldr	r2, [r2]
 197 00b4 8021     		movs	r1, #128
 198 00b6 8900     		lsls	r1, r1, #2
 199 00b8 0A43     		orrs	r2, r1
 200 00ba 1A60     		str	r2, [r3]
  63:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** }
 201              		.loc 1 63 0
 202 00bc C046     		nop
 203 00be BD46     		mov	sp, r7
 204              		@ sp needed
 205 00c0 80BD     		pop	{r7, pc}
 206              	.L9:
 207 00c2 C046     		.align	2
 208              	.L8:
 209 00c4 00100240 		.word	1073876992
 210 00c8 000C0240 		.word	1073875968
 211 00cc 55550000 		.word	21845
 212 00d0 00380140 		.word	1073821696
 213 00d4 003C0140 		.word	1073822720
 214 00d8 64C00120 		.word	536985700
 215 00dc 00000000 		.word	interrupt_handler
 216 00e0 00E100E0 		.word	-536813312
 217              		.cfi_endproc
 218              	.LFE2:
 220              		.align	1
 221              		.global	main
 222              		.syntax unified
 223              		.code	16
 224              		.thumb_func
 225              		.fpu softvfp
 227              	main:
 228              	.LFB3:
  64:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 
  65:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** void main(void){
 229              		.loc 1 65 0
 230              		.cfi_startproc
 231              		@ args = 0, pretend = 0, frame = 8
 232              		@ frame_needed = 1, uses_anonymous_args = 0
 233 00e4 80B5     		push	{r7, lr}
 234              		.cfi_def_cfa_offset 8
 235              		.cfi_offset 7, -8
 236              		.cfi_offset 14, -4
 237 00e6 82B0     		sub	sp, sp, #8
 238              		.cfi_def_cfa_offset 16
 239 00e8 00AF     		add	r7, sp, #0
 240              		.cfi_def_cfa_register 7
  66:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     app_init();
 241              		.loc 1 66 0
 242 00ea FFF7FEFF 		bl	app_init
 243              	.L11:
 244              	.LBB2:
  67:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     while(1){
  68:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****         GPIO_D.odrLow = counter;
 245              		.loc 1 68 0 discriminator 1
 246 00ee 044A     		ldr	r2, .L12
 247 00f0 044B     		ldr	r3, .L12+4
 248 00f2 1B68     		ldr	r3, [r3]
 249 00f4 DBB2     		uxtb	r3, r3
 250 00f6 1375     		strb	r3, [r2, #20]
  69:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c **** 		int y = 0;
 251              		.loc 1 69 0 discriminator 1
 252 00f8 0023     		movs	r3, #0
 253 00fa 7B60     		str	r3, [r7, #4]
 254              	.LBE2:
  67:C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq\startup.c ****     while(1){
 255              		.loc 1 67 0 discriminator 1
 256 00fc F7E7     		b	.L11
 257              	.L13:
 258 00fe C046     		.align	2
 259              	.L12:
 260 0100 000C0240 		.word	1073875968
 261 0104 00000000 		.word	counter
 262              		.cfi_endproc
 263              	.LFE3:
 265              	.Letext0:
 266              		.file 2 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq/gpio.h"
 267              		.file 3 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq/syscfg.h"
 268              		.file 4 "C:/Users/Lumo/Documents/Mop-DAT017/Labs and exercises/flipflop_irq/exti.h"
