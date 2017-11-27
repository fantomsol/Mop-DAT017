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
  15              		.data
  16              		.align	2
  19              	ball_geometry:
  20 0000 0C000000 		.word	12
  21 0004 04000000 		.word	4
  22 0008 04000000 		.word	4
  23 000c 00       		.byte	0
  24 000d 01       		.byte	1
  25 000e 00       		.byte	0
  26 000f 02       		.byte	2
  27 0010 01       		.byte	1
  28 0011 00       		.byte	0
  29 0012 01       		.byte	1
  30 0013 01       		.byte	1
  31 0014 01       		.byte	1
  32 0015 02       		.byte	2
  33 0016 01       		.byte	1
  34 0017 03       		.byte	3
  35 0018 02       		.byte	2
  36 0019 00       		.byte	0
  37 001a 02       		.byte	2
  38 001b 01       		.byte	1
  39 001c 02       		.byte	2
  40 001d 02       		.byte	2
  41 001e 02       		.byte	2
  42 001f 03       		.byte	3
  43 0020 03       		.byte	3
  44 0021 01       		.byte	1
  45 0022 03       		.byte	3
  46 0023 02       		.byte	2
  47 0024 00000000 		.space	16
  47      00000000 
  47      00000000 
  47      00000000 
  48              		.align	2
  51              	ball:
  52 0034 00000000 		.word	ball_geometry
  53 0038 00000000 		.word	0
  54 003c 00000000 		.word	0
  55 0040 01000000 		.word	1
  56 0044 01000000 		.word	1
  57 0048 00000000 		.word	draw_object
  58 004c 00000000 		.word	clear_object
  59 0050 00000000 		.word	move_object
  60 0054 00000000 		.word	set_object_speed
  61              		.section	.start_section,"ax",%progbits
  62              		.align	1
  63              		.global	startup
  64              		.syntax unified
  65              		.code	16
  66              		.thumb_func
  67              		.fpu softvfp
  69              	startup:
  70              	.LFB0:
  71              		.file 1 "E:/DAT017/CodeLite files/Moplaborationer/autopong/startup.c"
   1:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** #include "geometry.h"
   2:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** #include "gpio.h"
   3:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** #include "sys_delay.h"
   4:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 
   5:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** /*
   6:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c ****  * 	startup.c
   7:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c ****  *
   8:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c ****  */
   9:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  10:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 
  11:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** void startup ( void )
  12:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** {
  72              		.loc 1 12 0
  73              		.cfi_startproc
  74              		@ Naked Function: prologue and epilogue provided by programmer.
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 1, uses_anonymous_args = 0
  13:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** __asm volatile(
  77              		.loc 1 13 0
  78              		.syntax divided
  79              	@ 13 "E:/DAT017/CodeLite files/Moplaborationer/autopong/startup.c" 1
  80 0000 0248     		 LDR R0,=0x2001C000
  81 0002 8546     	 MOV SP,R0
  82 0004 FFF7FEFF 	 BL main
  83 0008 FEE7     	_exit: B .
  84              	
  85              	@ 0 "" 2
  14:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  15:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	" MOV SP,R0\n"
  16:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	" BL main\n"				/* call main */
  17:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	"_exit: B .\n"				/* never return */
  18:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	) ;
  19:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** }
  86              		.loc 1 19 0
  87              		.thumb
  88              		.syntax unified
  89 000a C046     		nop
  90              		.cfi_endproc
  91              	.LFE0:
  93              		.text
  94              		.align	1
  95              		.global	init_app
  96              		.syntax unified
  97              		.code	16
  98              		.thumb_func
  99              		.fpu softvfp
 101              	init_app:
 102              	.LFB1:
  20:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 
  21:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** void init_app()
  22:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** {
 103              		.loc 1 22 0
 104              		.cfi_startproc
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 1, uses_anonymous_args = 0
 107 0000 80B5     		push	{r7, lr}
 108              		.cfi_def_cfa_offset 8
 109              		.cfi_offset 7, -8
 110              		.cfi_offset 14, -4
 111 0002 00AF     		add	r7, sp, #0
 112              		.cfi_def_cfa_register 7
  23:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	setup_for_graphic_display();
 113              		.loc 1 23 0
 114 0004 FFF7FEFF 		bl	setup_for_graphic_display
  24:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** }
 115              		.loc 1 24 0
 116 0008 C046     		nop
 117 000a BD46     		mov	sp, r7
 118              		@ sp needed
 119 000c 80BD     		pop	{r7, pc}
 120              		.cfi_endproc
 121              	.LFE1:
 123              		.align	1
 124              		.global	main
 125              		.syntax unified
 126              		.code	16
 127              		.thumb_func
 128              		.fpu softvfp
 130              	main:
 131              	.LFB2:
  25:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 
  26:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** int main(int argc, char **argv)
  27:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** {
 132              		.loc 1 27 0
 133              		.cfi_startproc
 134              		@ args = 0, pretend = 0, frame = 16
 135              		@ frame_needed = 1, uses_anonymous_args = 0
 136 000e 80B5     		push	{r7, lr}
 137              		.cfi_def_cfa_offset 8
 138              		.cfi_offset 7, -8
 139              		.cfi_offset 14, -4
 140 0010 84B0     		sub	sp, sp, #16
 141              		.cfi_def_cfa_offset 24
 142 0012 00AF     		add	r7, sp, #0
 143              		.cfi_def_cfa_register 7
 144 0014 7860     		str	r0, [r7, #4]
 145 0016 3960     		str	r1, [r7]
  28:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	POBJECT p = &ball;
 146              		.loc 1 28 0
 147 0018 0A4B     		ldr	r3, .L5
 148 001a FB60     		str	r3, [r7, #12]
  29:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	init_app();
 149              		.loc 1 29 0
 150 001c FFF7FEFF 		bl	init_app
  30:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	graphic_initialize();
 151              		.loc 1 30 0
 152 0020 FFF7FEFF 		bl	graphic_initialize
  31:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** #ifndef SIMULATOR
  32:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	graphic_clearscreen();
  33:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** #endif
  34:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	p->set_speed(p, 4, 1);
 153              		.loc 1 34 0
 154 0024 FB68     		ldr	r3, [r7, #12]
 155 0026 1B6A     		ldr	r3, [r3, #32]
 156 0028 F868     		ldr	r0, [r7, #12]
 157 002a 0122     		movs	r2, #1
 158 002c 0421     		movs	r1, #4
 159 002e 9847     		blx	r3
 160              	.LVL0:
 161              	.L4:
  35:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 	while(1){
  36:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 		p->move(p);
 162              		.loc 1 36 0 discriminator 1
 163 0030 FB68     		ldr	r3, [r7, #12]
 164 0032 DB69     		ldr	r3, [r3, #28]
 165 0034 FA68     		ldr	r2, [r7, #12]
 166 0036 1000     		movs	r0, r2
 167 0038 9847     		blx	r3
 168              	.LVL1:
  37:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 		delay_milli(40);
 169              		.loc 1 37 0 discriminator 1
 170 003a 2820     		movs	r0, #40
 171 003c FFF7FEFF 		bl	delay_milli
  36:E:/DAT017/CodeLite files/Moplaborationer/autopong\startup.c **** 		delay_milli(40);
 172              		.loc 1 36 0 discriminator 1
 173 0040 F6E7     		b	.L4
 174              	.L6:
 175 0042 C046     		.align	2
 176              	.L5:
 177 0044 34000000 		.word	ball
 178              		.cfi_endproc
 179              	.LFE2:
 181              	.Letext0:
 182              		.file 2 "E:/DAT017/CodeLite files/Moplaborationer/autopong/geometry.h"
