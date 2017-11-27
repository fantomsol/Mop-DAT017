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
  25              		.file 1 "E:/DAT017/CodeLite files/Moplaborationer/keypad/startup.c"
   1:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** /*
   2:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c ****  * 	startup.c
   3:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c ****  *
   4:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c ****  */
   5:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** 
   7:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** void startup ( void )
   8:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "E:/DAT017/CodeLite files/Moplaborationer/keypad/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** 	" MOV SP,R0\n"
  12:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** 	" BL main\n"				/* call main */
  13:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** 	"_exit: B .\n"				/* never return */
  14:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** 	) ;
  15:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** }
  40              		.loc 1 15 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	app_init
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	app_init:
  56              	.LFB1:
  16:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** 
  17:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** void app_init(void){
  57              		.loc 1 17 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  18:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** 	
  19:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** }
  67              		.loc 1 19 0
  68 0004 C046     		nop
  69 0006 BD46     		mov	sp, r7
  70              		@ sp needed
  71 0008 80BD     		pop	{r7, pc}
  72              		.cfi_endproc
  73              	.LFE1:
  75              		.align	1
  76              		.global	main
  77              		.syntax unified
  78              		.code	16
  79              		.thumb_func
  80              		.fpu softvfp
  82              	main:
  83              	.LFB2:
  20:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** 
  21:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** void main(void)
  22:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** {
  84              		.loc 1 22 0
  85              		.cfi_startproc
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 1, uses_anonymous_args = 0
  88 000a 80B5     		push	{r7, lr}
  89              		.cfi_def_cfa_offset 8
  90              		.cfi_offset 7, -8
  91              		.cfi_offset 14, -4
  92 000c 00AF     		add	r7, sp, #0
  93              		.cfi_def_cfa_register 7
  23:E:/DAT017/CodeLite files/Moplaborationer/keypad\startup.c **** }
  94              		.loc 1 23 0
  95 000e C046     		nop
  96 0010 BD46     		mov	sp, r7
  97              		@ sp needed
  98 0012 80BD     		pop	{r7, pc}
  99              		.cfi_endproc
 100              	.LFE2:
 102              	.Letext0:
