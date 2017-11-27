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
  24              		.file 1 "E:/DAT017/CodeLite files/Moplaborationer/delay/sys_delay.c"
   1:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** #include "sys_delay.h"
   2:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 
   3:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// Delays the thread 250 ns.
   4:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///
   5:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// NOTE: 		The routine is not exact but takes a MINIMUM of 
   6:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///				250 ns.
   7:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** void delay_250ns( void )
   8:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** {
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
   9:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// ----------------------
  10:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// = Återställ räknaren =
  11:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// ----------------------
  12:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// Nollställ register STK_CTRL.
  13:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	SYS_TICK->STK_CTRL = 0;
  35              		.loc 1 13 0
  36 0004 0C4B     		ldr	r3, .L3
  37 0006 0022     		movs	r2, #0
  38 0008 1A60     		str	r2, [r3]
  14:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	
  15:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// -------------------------
  16:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// = Ladda in räknarvärdet =
  17:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// -------------------------
  18:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// 		168 ticks/µs 		* 1000
  19:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// => 	168'000 ticks/ns 	/ 4
  20:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// => 	42'000 ticks for a wait of 250 ns.
  21:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	SYS_TICK->STK_LOAD = 0x0000A410;
  39              		.loc 1 21 0
  40 000a 0B4B     		ldr	r3, .L3
  41 000c 0B4A     		ldr	r2, .L3+4
  42 000e 5A60     		str	r2, [r3, #4]
  22:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	
  23:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// -----------------------------
  24:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// = Nollställ räknarregistret =
  25:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// -----------------------------
  26:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// Nolställ register STK_VAL.
  27:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	SYS_TICK->STK_VAL = 0;
  43              		.loc 1 27 0
  44 0010 094B     		ldr	r3, .L3
  45 0012 0022     		movs	r2, #0
  46 0014 9A60     		str	r2, [r3, #8]
  28:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	
  29:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// ---------------------
  30:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// = Start om räknaren =
  31:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// ---------------------
  32:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// Ettställ bitar 2 och 0.
  33:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// Nollställ bitar 31-3 och 1.
  34:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	SYS_TICK->STK_CTRL = 0x00000005;
  47              		.loc 1 34 0
  48 0016 084B     		ldr	r3, .L3
  49 0018 0522     		movs	r2, #5
  50 001a 1A60     		str	r2, [r3]
  35:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	
  36:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// -----------------------------------------
  37:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// = Vänta tills räknaren har räknat klart =
  38:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// -----------------------------------------
  39:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// Väntar tills COUNTFLAG = 1.
  40:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	while(SYS_TICK->STK_CTRL & 0x00010000) { }
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
  41:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	
  42:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// ----------------------
  43:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// = Återställ räknaren =
  44:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// ----------------------
  45:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// Nollställ register STK_CTRL.
  46:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	SYS_TICK->STK_CTRL = 0;
  61              		.loc 1 46 0 is_stmt 1
  62 002a 034B     		ldr	r3, .L3
  63 002c 0022     		movs	r2, #0
  64 002e 1A60     		str	r2, [r3]
  47:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** }
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
  78              		.align	1
  79              		.global	delay_mikro
  80              		.syntax unified
  81              		.code	16
  82              		.thumb_func
  83              		.fpu softvfp
  85              	delay_mikro:
  86              	.LFB1:
  48:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 
  49:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// Delays the thread a given amount of µs.
  50:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///
  51:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// NOTE:		The routine is not exact but takes a MINIMUM of 
  52:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///				'us' µs.
  53:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///
  54:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// NOTE (1):	This way of implementing the dealy using the 
  55:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///				'delay_250ns()' function is suboptimal as you reset
  56:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///				the STK_CTRL register twice between every iteration
  57:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///				of the for loop.
  58:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// 			
  59:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** void delay_mikro( unsigned int us )
  60:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** {
  87              		.loc 1 60 0
  88              		.cfi_startproc
  89              		@ args = 0, pretend = 0, frame = 16
  90              		@ frame_needed = 1, uses_anonymous_args = 0
  91 0040 80B5     		push	{r7, lr}
  92              		.cfi_def_cfa_offset 8
  93              		.cfi_offset 7, -8
  94              		.cfi_offset 14, -4
  95 0042 84B0     		sub	sp, sp, #16
  96              		.cfi_def_cfa_offset 24
  97 0044 00AF     		add	r7, sp, #0
  98              		.cfi_def_cfa_register 7
  99 0046 7860     		str	r0, [r7, #4]
  61:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// Convert the given time to a number of 250 ns delays.
  62:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	unsigned int delays = us * 4;
 100              		.loc 1 62 0
 101 0048 7B68     		ldr	r3, [r7, #4]
 102 004a 9B00     		lsls	r3, r3, #2
 103 004c BB60     		str	r3, [r7, #8]
  63:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	unsigned int i;
  64:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	for(i = 0; i < delays; i++)
 104              		.loc 1 64 0
 105 004e 0023     		movs	r3, #0
 106 0050 FB60     		str	r3, [r7, #12]
 107 0052 04E0     		b	.L6
 108              	.L7:
  65:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	{
  66:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 		delay_250ns();
 109              		.loc 1 66 0 discriminator 3
 110 0054 FFF7FEFF 		bl	delay_250ns
  64:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	{
 111              		.loc 1 64 0 discriminator 3
 112 0058 FB68     		ldr	r3, [r7, #12]
 113 005a 0133     		adds	r3, r3, #1
 114 005c FB60     		str	r3, [r7, #12]
 115              	.L6:
  64:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	{
 116              		.loc 1 64 0 is_stmt 0 discriminator 1
 117 005e FA68     		ldr	r2, [r7, #12]
 118 0060 BB68     		ldr	r3, [r7, #8]
 119 0062 9A42     		cmp	r2, r3
 120 0064 F6D3     		bcc	.L7
  67:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	}
  68:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** }
 121              		.loc 1 68 0 is_stmt 1
 122 0066 C046     		nop
 123 0068 BD46     		mov	sp, r7
 124 006a 04B0     		add	sp, sp, #16
 125              		@ sp needed
 126 006c 80BD     		pop	{r7, pc}
 127              		.cfi_endproc
 128              	.LFE1:
 130              		.global	__aeabi_uidiv
 131              		.align	1
 132              		.global	delay_milli
 133              		.syntax unified
 134              		.code	16
 135              		.thumb_func
 136              		.fpu softvfp
 138              	delay_milli:
 139              	.LFB2:
  69:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 
  70:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// Dealys the thread a given amount of ms.
  71:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///
  72:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// NOTE:		The routine is not exact but takes a MINIMUM of 
  73:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///				'us' µs.
  74:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///
  75:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// NOTE (1):	This way of implementing the dealy using the 
  76:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///				'delay_250ns()' function is suboptimal as you reset
  77:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///				the 'STK_CTRL' register twice between every iteration
  78:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** ///				of the for loop.
  79:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** /// 			
  80:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** void delay_milli( unsigned int ms )
  81:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** {
 140              		.loc 1 81 0
 141              		.cfi_startproc
 142              		@ args = 0, pretend = 0, frame = 16
 143              		@ frame_needed = 1, uses_anonymous_args = 0
 144 006e 80B5     		push	{r7, lr}
 145              		.cfi_def_cfa_offset 8
 146              		.cfi_offset 7, -8
 147              		.cfi_offset 14, -4
 148 0070 84B0     		sub	sp, sp, #16
 149              		.cfi_def_cfa_offset 24
 150 0072 00AF     		add	r7, sp, #0
 151              		.cfi_def_cfa_register 7
 152 0074 7860     		str	r0, [r7, #4]
  82:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** #ifdef SIMULATOR
  83:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	ms = ms / 1000;
 153              		.loc 1 83 0
 154 0076 7A68     		ldr	r2, [r7, #4]
 155 0078 FA23     		movs	r3, #250
 156 007a 9900     		lsls	r1, r3, #2
 157 007c 1000     		movs	r0, r2
 158 007e FFF7FEFF 		bl	__aeabi_uidiv
 159              	.LVL0:
 160 0082 0300     		movs	r3, r0
 161 0084 7B60     		str	r3, [r7, #4]
  84:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	ms++;
 162              		.loc 1 84 0
 163 0086 7B68     		ldr	r3, [r7, #4]
 164 0088 0133     		adds	r3, r3, #1
 165 008a 7B60     		str	r3, [r7, #4]
  85:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** #endif
  86:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	// Convert the given time to a number of 250 ns delays.
  87:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	unsigned int delays = ms * 4000;
 166              		.loc 1 87 0
 167 008c 7B68     		ldr	r3, [r7, #4]
 168 008e FA22     		movs	r2, #250
 169 0090 1201     		lsls	r2, r2, #4
 170 0092 5343     		muls	r3, r2
 171 0094 BB60     		str	r3, [r7, #8]
  88:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	unsigned int i;
  89:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	for(i = 0; i < delays; i++)
 172              		.loc 1 89 0
 173 0096 0023     		movs	r3, #0
 174 0098 FB60     		str	r3, [r7, #12]
 175 009a 04E0     		b	.L9
 176              	.L10:
  90:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	{
  91:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 		delay_250ns();
 177              		.loc 1 91 0 discriminator 3
 178 009c FFF7FEFF 		bl	delay_250ns
  89:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	{
 179              		.loc 1 89 0 discriminator 3
 180 00a0 FB68     		ldr	r3, [r7, #12]
 181 00a2 0133     		adds	r3, r3, #1
 182 00a4 FB60     		str	r3, [r7, #12]
 183              	.L9:
  89:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	{
 184              		.loc 1 89 0 is_stmt 0 discriminator 1
 185 00a6 FA68     		ldr	r2, [r7, #12]
 186 00a8 BB68     		ldr	r3, [r7, #8]
 187 00aa 9A42     		cmp	r2, r3
 188 00ac F6D3     		bcc	.L10
  92:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** 	}
  93:E:/DAT017/CodeLite files/Moplaborationer/delay\sys_delay.c **** }...
 189              		.loc 1 93 0 is_stmt 1
 190 00ae C046     		nop
 191 00b0 BD46     		mov	sp, r7
 192 00b2 04B0     		add	sp, sp, #16
 193              		@ sp needed
 194 00b4 80BD     		pop	{r7, pc}
 195              		.cfi_endproc
 196              	.LFE2:
 198              	.Letext0:
 199              		.file 2 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 200              		.file 3 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
 201              		.file 4 "E:/DAT017/CodeLite files/Moplaborationer/delay/sys_delay.h"
