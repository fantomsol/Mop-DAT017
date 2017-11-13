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
  25              		.file 1 "C:/Users/lahtig/Documents/Labb1/1_7/startup.c"
   1:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** /*
   2:C:/Users/lahtig/Documents/Labb1/1_7\startup.c ****  * 	startup.c
   3:C:/Users/lahtig/Documents/Labb1/1_7\startup.c ****  *
   4:C:/Users/lahtig/Documents/Labb1/1_7\startup.c ****  */
   5:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** #define USBDM
   6:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	
   7:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   8:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 
   9:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** void startup ( void )
  10:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** {
  26              		.loc 1 10 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  11:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** __asm volatile(
  31              		.loc 1 11 0
  32              		.syntax divided
  33              	@ 11 "C:/Users/lahtig/Documents/Labb1/1_7/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  12:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  13:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	" MOV SP,R0\n"
  14:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	" BL main\n"				/* call main */
  15:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	"_exit: B .\n"				/* never return */
  16:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	) ;
  17:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** }
  40              		.loc 1 17 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	appInit
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	appInit:
  56              	.LFB1:
  18:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 
  19:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** void appInit(void){
  57              		.loc 1 19 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  20:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	#ifdef USBDM
  21:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 		*((unsigned long *) 0x40023830) = 0x18;
  67              		.loc 1 21 0
  68 0004 044B     		ldr	r3, .L3
  69 0006 1822     		movs	r2, #24
  70 0008 1A60     		str	r2, [r3]
  22:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	#endif
  23:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 
  24:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	* ( (unsigned long *) 0x40020C00) = 0x00005555;
  71              		.loc 1 24 0
  72 000a 044B     		ldr	r3, .L3+4
  73 000c 044A     		ldr	r2, .L3+8
  74 000e 1A60     		str	r2, [r3]
  25:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** }
  75              		.loc 1 25 0
  76 0010 C046     		nop
  77 0012 BD46     		mov	sp, r7
  78              		@ sp needed
  79 0014 80BD     		pop	{r7, pc}
  80              	.L4:
  81 0016 C046     		.align	2
  82              	.L3:
  83 0018 30380240 		.word	1073887280
  84 001c 000C0240 		.word	1073875968
  85 0020 55550000 		.word	21845
  86              		.cfi_endproc
  87              	.LFE1:
  89              		.align	1
  90              		.global	main
  91              		.syntax unified
  92              		.code	16
  93              		.thumb_func
  94              		.fpu softvfp
  96              	main:
  97              	.LFB2:
  26:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 
  27:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** void main(void)
  28:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** {
  98              		.loc 1 28 0
  99              		.cfi_startproc
 100              		@ args = 0, pretend = 0, frame = 8
 101              		@ frame_needed = 1, uses_anonymous_args = 0
 102 0024 80B5     		push	{r7, lr}
 103              		.cfi_def_cfa_offset 8
 104              		.cfi_offset 7, -8
 105              		.cfi_offset 14, -4
 106 0026 82B0     		sub	sp, sp, #8
 107              		.cfi_def_cfa_offset 16
 108 0028 00AF     		add	r7, sp, #0
 109              		.cfi_def_cfa_register 7
  29:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	unsigned char c;
  30:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	appInit();
 110              		.loc 1 30 0
 111 002a FFF7FEFF 		bl	appInit
 112              	.L6:
  31:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 	while(1){
  32:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 		c = (unsigned char) *((unsigned short *) 0x40021010);
 113              		.loc 1 32 0 discriminator 1
 114 002e 044B     		ldr	r3, .L7
 115 0030 1A88     		ldrh	r2, [r3]
 116 0032 FB1D     		adds	r3, r7, #7
 117 0034 1A70     		strb	r2, [r3]
  33:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 		* ((unsigned char *) 0x40020C14) = c;
 118              		.loc 1 33 0 discriminator 1
 119 0036 034A     		ldr	r2, .L7+4
 120 0038 FB1D     		adds	r3, r7, #7
 121 003a 1B78     		ldrb	r3, [r3]
 122 003c 1370     		strb	r3, [r2]
  32:C:/Users/lahtig/Documents/Labb1/1_7\startup.c **** 		* ((unsigned char *) 0x40020C14) = c;
 123              		.loc 1 32 0 discriminator 1
 124 003e F6E7     		b	.L6
 125              	.L8:
 126              		.align	2
 127              	.L7:
 128 0040 10100240 		.word	1073877008
 129 0044 140C0240 		.word	1073875988
 130              		.cfi_endproc
 131              	.LFE2:
 133              	.Letext0:
