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
  11              		.file	"sys_delay.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	delay_250ns
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	delay_250ns:
  23              	.LFB0:
  24              		.file 1 "E:/DAT017/CodeLite files/Moplaborationer/asciidisplay/sys_delay.c"
   1:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** #include "sys_delay.h"
   2:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 
   3:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// Delays the thread 250 ns.
   4:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///
   5:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// NOTE: 		The routine is not exact but takes a MINIMUM of 
   6:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///				250 ns.
   7:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** void delay_250ns( void )
   8:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** {
  25              		.loc 1 8 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 00AF     		add	r7, sp, #0
  34              		.cfi_def_cfa_register 7
   9:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// ----------------------
  10:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// = Återställ räknaren =
  11:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// ----------------------
  12:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// Nollställ register STK_CTRL.
  13:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	SYS_TICK->STK_CTRL = 0;
  35              		.loc 1 13 0
  36 0004 0C4B     		ldr	r3, .L3
  37 0006 0022     		movs	r2, #0
  38 0008 1A60     		str	r2, [r3]
  14:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	
  15:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// -------------------------
  16:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// = Ladda in räknarvärdet =
  17:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// -------------------------
  18:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// 		168 ticks/µs 		* 1000
  19:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// => 	168'000 ticks/ns 	/ 4
  20:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// => 	42'000 ticks for a wait of 250 ns.
  21:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	SYS_TICK->STK_LOAD = 0x0000A410;
  39              		.loc 1 21 0
  40 000a 0B4B     		ldr	r3, .L3
  41 000c 0B4A     		ldr	r2, .L3+4
  42 000e 5A60     		str	r2, [r3, #4]
  22:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	
  23:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// -----------------------------
  24:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// = Nollställ räknarregistret =
  25:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// -----------------------------
  26:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// Nolställ register STK_VAL.
  27:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	SYS_TICK->STK_VAL = 0;
  43              		.loc 1 27 0
  44 0010 094B     		ldr	r3, .L3
  45 0012 0022     		movs	r2, #0
  46 0014 9A60     		str	r2, [r3, #8]
  28:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	
  29:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// ---------------------
  30:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// = Start om räknaren =
  31:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// ---------------------
  32:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// Ettställ bitar 2 och 0.
  33:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// Nollställ bitar 31-3 och 1.
  34:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	SYS_TICK->STK_CTRL = 0x00000005;
  47              		.loc 1 34 0
  48 0016 084B     		ldr	r3, .L3
  49 0018 0522     		movs	r2, #5
  50 001a 1A60     		str	r2, [r3]
  35:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	
  36:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// -----------------------------------------
  37:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// = Vänta tills räknaren har räknat klart =
  38:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// -----------------------------------------
  39:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// Väntar tills COUNTFLAG = 1.
  40:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	while(SYS_TICK->STK_CTRL & 0x00010000) { }
  51              		.loc 1 40 0
  52 001c C046     		nop
  53              	.L2:
  54              		.loc 1 40 0 is_stmt 0 discriminator 1
  55 001e 064B     		ldr	r3, .L3
  56 0020 1A68     		ldr	r2, [r3]
  57 0022 8023     		movs	r3, #128
  58 0024 5B02     		lsls	r3, r3, #9
  59 0026 1340     		ands	r3, r2
  60 0028 F9D1     		bne	.L2
  41:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	
  42:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// ----------------------
  43:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// = Återställ räknaren =
  44:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// ----------------------
  45:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// Nollställ register STK_CTRL.
  46:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	SYS_TICK->STK_CTRL = 0;
  61              		.loc 1 46 0 is_stmt 1
  62 002a 034B     		ldr	r3, .L3
  63 002c 0022     		movs	r2, #0
  64 002e 1A60     		str	r2, [r3]
  47:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** }
  65              		.loc 1 47 0
  66 0030 C046     		nop
  67 0032 BD46     		mov	sp, r7
  68              		@ sp needed
  69 0034 80BD     		pop	{r7, pc}
  70              	.L4:
  71 0036 C046     		.align	2
  72              	.L3:
  73 0038 10E000E0 		.word	-536813552
  74 003c 10A40000 		.word	42000
  75              		.cfi_endproc
  76              	.LFE0:
  78              		.global	__aeabi_uidiv
  79              		.align	1
  80              		.global	delay_mikro
  81              		.syntax unified
  82              		.code	16
  83              		.thumb_func
  84              		.fpu softvfp
  86              	delay_mikro:
  87              	.LFB1:
  48:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 
  49:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// Delays the thread a given amount of µs.
  50:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///
  51:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// NOTE:		The routine is not exact but takes a MINIMUM of 
  52:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///				'us' µs.
  53:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///
  54:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// NOTE (1):	This way of implementing the dealy using the 
  55:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///				'delay_250ns()' function is suboptimal as you reset
  56:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///				the STK_CTRL register twice between every iteration
  57:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///				of the for loop.
  58:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// 			
  59:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** void delay_mikro( unsigned int us )
  60:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** {
  88              		.loc 1 60 0
  89              		.cfi_startproc
  90              		@ args = 0, pretend = 0, frame = 16
  91              		@ frame_needed = 1, uses_anonymous_args = 0
  92 0040 80B5     		push	{r7, lr}
  93              		.cfi_def_cfa_offset 8
  94              		.cfi_offset 7, -8
  95              		.cfi_offset 14, -4
  96 0042 84B0     		sub	sp, sp, #16
  97              		.cfi_def_cfa_offset 24
  98 0044 00AF     		add	r7, sp, #0
  99              		.cfi_def_cfa_register 7
 100 0046 7860     		str	r0, [r7, #4]
  61:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** #ifdef SIMULATOR
  62:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	us = us / 1000;
 101              		.loc 1 62 0
 102 0048 7A68     		ldr	r2, [r7, #4]
 103 004a FA23     		movs	r3, #250
 104 004c 9900     		lsls	r1, r3, #2
 105 004e 1000     		movs	r0, r2
 106 0050 FFF7FEFF 		bl	__aeabi_uidiv
 107              	.LVL0:
 108 0054 0300     		movs	r3, r0
 109 0056 7B60     		str	r3, [r7, #4]
  63:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	us++;
 110              		.loc 1 63 0
 111 0058 7B68     		ldr	r3, [r7, #4]
 112 005a 0133     		adds	r3, r3, #1
 113 005c 7B60     		str	r3, [r7, #4]
  64:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** #endif
  65:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// Convert the given time to a number of 250 ns delays.
  66:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	unsigned int delays = us * 4;
 114              		.loc 1 66 0
 115 005e 7B68     		ldr	r3, [r7, #4]
 116 0060 9B00     		lsls	r3, r3, #2
 117 0062 BB60     		str	r3, [r7, #8]
  67:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	unsigned int i;
  68:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	for(i = 0; i < delays; i++)
 118              		.loc 1 68 0
 119 0064 0023     		movs	r3, #0
 120 0066 FB60     		str	r3, [r7, #12]
 121 0068 04E0     		b	.L6
 122              	.L7:
  69:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	{
  70:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 		delay_250ns();
 123              		.loc 1 70 0 discriminator 3
 124 006a FFF7FEFF 		bl	delay_250ns
  68:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	{
 125              		.loc 1 68 0 discriminator 3
 126 006e FB68     		ldr	r3, [r7, #12]
 127 0070 0133     		adds	r3, r3, #1
 128 0072 FB60     		str	r3, [r7, #12]
 129              	.L6:
  68:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	{
 130              		.loc 1 68 0 is_stmt 0 discriminator 1
 131 0074 FA68     		ldr	r2, [r7, #12]
 132 0076 BB68     		ldr	r3, [r7, #8]
 133 0078 9A42     		cmp	r2, r3
 134 007a F6D3     		bcc	.L7
  71:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	}
  72:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** }
 135              		.loc 1 72 0 is_stmt 1
 136 007c C046     		nop
 137 007e BD46     		mov	sp, r7
 138 0080 04B0     		add	sp, sp, #16
 139              		@ sp needed
 140 0082 80BD     		pop	{r7, pc}
 141              		.cfi_endproc
 142              	.LFE1:
 144              		.align	1
 145              		.global	delay_milli
 146              		.syntax unified
 147              		.code	16
 148              		.thumb_func
 149              		.fpu softvfp
 151              	delay_milli:
 152              	.LFB2:
  73:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 
  74:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// Dealys the thread a given amount of ms.
  75:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///
  76:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// NOTE:		The routine is not exact but takes a MINIMUM of 
  77:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///				'us' µs.
  78:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///
  79:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// NOTE (1):	This way of implementing the dealy using the 
  80:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///				'delay_250ns()' function is suboptimal as you reset
  81:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///				the 'STK_CTRL' register twice between every iteration
  82:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** ///				of the for loop.
  83:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** /// 			
  84:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** void delay_milli( unsigned int ms )
  85:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** {
 153              		.loc 1 85 0
 154              		.cfi_startproc
 155              		@ args = 0, pretend = 0, frame = 16
 156              		@ frame_needed = 1, uses_anonymous_args = 0
 157 0084 80B5     		push	{r7, lr}
 158              		.cfi_def_cfa_offset 8
 159              		.cfi_offset 7, -8
 160              		.cfi_offset 14, -4
 161 0086 84B0     		sub	sp, sp, #16
 162              		.cfi_def_cfa_offset 24
 163 0088 00AF     		add	r7, sp, #0
 164              		.cfi_def_cfa_register 7
 165 008a 7860     		str	r0, [r7, #4]
  86:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** #ifdef SIMULATOR
  87:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	ms = ms / 1000;
 166              		.loc 1 87 0
 167 008c 7A68     		ldr	r2, [r7, #4]
 168 008e FA23     		movs	r3, #250
 169 0090 9900     		lsls	r1, r3, #2
 170 0092 1000     		movs	r0, r2
 171 0094 FFF7FEFF 		bl	__aeabi_uidiv
 172              	.LVL1:
 173 0098 0300     		movs	r3, r0
 174 009a 7B60     		str	r3, [r7, #4]
  88:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	ms++;
 175              		.loc 1 88 0
 176 009c 7B68     		ldr	r3, [r7, #4]
 177 009e 0133     		adds	r3, r3, #1
 178 00a0 7B60     		str	r3, [r7, #4]
  89:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** #endif
  90:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	// Convert the given time to a number of 250 ns delays.
  91:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	unsigned int delays = ms * 4000;
 179              		.loc 1 91 0
 180 00a2 7B68     		ldr	r3, [r7, #4]
 181 00a4 FA22     		movs	r2, #250
 182 00a6 1201     		lsls	r2, r2, #4
 183 00a8 5343     		muls	r3, r2
 184 00aa BB60     		str	r3, [r7, #8]
  92:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	unsigned int i;
  93:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	for(i = 0; i < delays; i++)
 185              		.loc 1 93 0
 186 00ac 0023     		movs	r3, #0
 187 00ae FB60     		str	r3, [r7, #12]
 188 00b0 04E0     		b	.L9
 189              	.L10:
  94:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	{
  95:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 		delay_250ns();
 190              		.loc 1 95 0 discriminator 3
 191 00b2 FFF7FEFF 		bl	delay_250ns
  93:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	{
 192              		.loc 1 93 0 discriminator 3
 193 00b6 FB68     		ldr	r3, [r7, #12]
 194 00b8 0133     		adds	r3, r3, #1
 195 00ba FB60     		str	r3, [r7, #12]
 196              	.L9:
  93:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	{
 197              		.loc 1 93 0 is_stmt 0 discriminator 1
 198 00bc FA68     		ldr	r2, [r7, #12]
 199 00be BB68     		ldr	r3, [r7, #8]
 200 00c0 9A42     		cmp	r2, r3
 201 00c2 F6D3     		bcc	.L10
  96:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** 	}
  97:E:/DAT017/CodeLite files/Moplaborationer/asciidisplay\sys_delay.c **** }...
 202              		.loc 1 97 0 is_stmt 1
 203 00c4 C046     		nop
 204 00c6 BD46     		mov	sp, r7
 205 00c8 04B0     		add	sp, sp, #16
 206              		@ sp needed
 207 00ca 80BD     		pop	{r7, pc}
 208              		.cfi_endproc
 209              	.LFE2:
 211              	.Letext0:
 212              		.file 2 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 213              		.file 3 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
 214              		.file 4 "E:/DAT017/CodeLite files/Moplaborationer/asciidisplay/sys_delay.h"
