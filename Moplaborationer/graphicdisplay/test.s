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
  11              		.file	"geometry.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.global	ball_geometry
  16              		.data
  17              		.align	2
  20              	ball_geometry:
  21 0000 0C000000 		.word	12
  22 0004 04000000 		.word	4
  23 0008 04000000 		.word	4
  24 000c 00       		.byte	0
  25 000d 01       		.byte	1
  26 000e 00       		.byte	0
  27 000f 02       		.byte	2
  28 0010 01       		.byte	1
  29 0011 00       		.byte	0
  30 0012 02       		.byte	2
  31 0013 00       		.byte	0
  32 0014 02       		.byte	2
  33 0015 00       		.byte	0
  34 0016 03       		.byte	3
  35 0017 00       		.byte	0
  36 0018 02       		.byte	2
  37 0019 00       		.byte	0
  38 001a 02       		.byte	2
  39 001b 01       		.byte	1
  40 001c 02       		.byte	2
  41 001d 02       		.byte	2
  42 001e 02       		.byte	2
  43 001f 03       		.byte	3
  44 0020 03       		.byte	3
  45 0021 01       		.byte	1
  46 0022 03       		.byte	3
  47 0023 02       		.byte	2
  48 0024 00000000 		.space	16
  48      00000000 
  48      00000000 
  48      00000000 
  49              		.text
  50              		.align	1
  51              		.global	set_object_speed
  52              		.syntax unified
  53              		.code	16
  54              		.thumb_func
  55              		.fpu softvfp
  57              	set_object_speed:
  58              	.LFB0:
  59              		.file 1 "E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay/geometry.c"
   1:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** #include "geometry.h"
   2:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 
   3:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** void set_object_speed(POBJECT o, int speedx, int speedy) {
  60              		.loc 1 3 0
  61              		.cfi_startproc
  62              		@ args = 0, pretend = 0, frame = 16
  63              		@ frame_needed = 1, uses_anonymous_args = 0
  64 0000 80B5     		push	{r7, lr}
  65              		.cfi_def_cfa_offset 8
  66              		.cfi_offset 7, -8
  67              		.cfi_offset 14, -4
  68 0002 84B0     		sub	sp, sp, #16
  69              		.cfi_def_cfa_offset 24
  70 0004 00AF     		add	r7, sp, #0
  71              		.cfi_def_cfa_register 7
  72 0006 F860     		str	r0, [r7, #12]
  73 0008 B960     		str	r1, [r7, #8]
  74 000a 7A60     		str	r2, [r7, #4]
   4:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	o->dirx = speedx;
  75              		.loc 1 4 0
  76 000c FB68     		ldr	r3, [r7, #12]
  77 000e BA68     		ldr	r2, [r7, #8]
  78 0010 5A60     		str	r2, [r3, #4]
   5:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	o->diry = speedy;
  79              		.loc 1 5 0
  80 0012 FB68     		ldr	r3, [r7, #12]
  81 0014 7A68     		ldr	r2, [r7, #4]
  82 0016 9A60     		str	r2, [r3, #8]
   6:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** }
  83              		.loc 1 6 0
  84 0018 C046     		nop
  85 001a BD46     		mov	sp, r7
  86 001c 04B0     		add	sp, sp, #16
  87              		@ sp needed
  88 001e 80BD     		pop	{r7, pc}
  89              		.cfi_endproc
  90              	.LFE0:
  92              		.align	1
  93              		.global	draw_object
  94              		.syntax unified
  95              		.code	16
  96              		.thumb_func
  97              		.fpu softvfp
  99              	draw_object:
 100              	.LFB1:
   7:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 
   8:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** void draw_object(POBJECT o) {
 101              		.loc 1 8 0
 102              		.cfi_startproc
 103              		@ args = 0, pretend = 0, frame = 16
 104              		@ frame_needed = 1, uses_anonymous_args = 0
 105 0020 80B5     		push	{r7, lr}
 106              		.cfi_def_cfa_offset 8
 107              		.cfi_offset 7, -8
 108              		.cfi_offset 14, -4
 109 0022 84B0     		sub	sp, sp, #16
 110              		.cfi_def_cfa_offset 24
 111 0024 00AF     		add	r7, sp, #0
 112              		.cfi_def_cfa_register 7
 113 0026 7860     		str	r0, [r7, #4]
 114              	.LBB2:
   9:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	for(int i = 0; i < o->geo->numpoints; i++) {
 115              		.loc 1 9 0
 116 0028 0023     		movs	r3, #0
 117 002a FB60     		str	r3, [r7, #12]
 118 002c 1CE0     		b	.L3
 119              	.L4:
 120              	.LBB3:
  10:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		pixel(
  11:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 			o->posx + o->geo->px[i].x,
 121              		.loc 1 11 0 discriminator 3
 122 002e 7B68     		ldr	r3, [r7, #4]
 123 0030 DA68     		ldr	r2, [r3, #12]
 124 0032 7B68     		ldr	r3, [r7, #4]
 125 0034 1968     		ldr	r1, [r3]
 126 0036 FB68     		ldr	r3, [r7, #12]
 127 0038 0433     		adds	r3, r3, #4
 128 003a 5B00     		lsls	r3, r3, #1
 129 003c CB18     		adds	r3, r1, r3
 130 003e 0433     		adds	r3, r3, #4
 131 0040 1B78     		ldrb	r3, [r3]
  10:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		pixel(
 132              		.loc 1 10 0 discriminator 3
 133 0042 D018     		adds	r0, r2, r3
  12:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 			o->posy + o->geo->px[i].y,
 134              		.loc 1 12 0 discriminator 3
 135 0044 7B68     		ldr	r3, [r7, #4]
 136 0046 1A69     		ldr	r2, [r3, #16]
 137 0048 7B68     		ldr	r3, [r7, #4]
 138 004a 1968     		ldr	r1, [r3]
 139 004c FB68     		ldr	r3, [r7, #12]
 140 004e 0433     		adds	r3, r3, #4
 141 0050 5B00     		lsls	r3, r3, #1
 142 0052 CB18     		adds	r3, r1, r3
 143 0054 0533     		adds	r3, r3, #5
 144 0056 1B78     		ldrb	r3, [r3]
  10:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		pixel(
 145              		.loc 1 10 0 discriminator 3
 146 0058 D318     		adds	r3, r2, r3
 147 005a 0122     		movs	r2, #1
 148 005c 1900     		movs	r1, r3
 149 005e FFF7FEFF 		bl	pixel
 150              	.LBE3:
   9:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	for(int i = 0; i < o->geo->numpoints; i++) {
 151              		.loc 1 9 0 discriminator 3
 152 0062 FB68     		ldr	r3, [r7, #12]
 153 0064 0133     		adds	r3, r3, #1
 154 0066 FB60     		str	r3, [r7, #12]
 155              	.L3:
   9:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	for(int i = 0; i < o->geo->numpoints; i++) {
 156              		.loc 1 9 0 is_stmt 0 discriminator 1
 157 0068 7B68     		ldr	r3, [r7, #4]
 158 006a 1B68     		ldr	r3, [r3]
 159 006c 1A68     		ldr	r2, [r3]
 160 006e FB68     		ldr	r3, [r7, #12]
 161 0070 9A42     		cmp	r2, r3
 162 0072 DCDC     		bgt	.L4
 163              	.LBE2:
  13:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 			1
  14:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		);
  15:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	}
  16:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** }
 164              		.loc 1 16 0 is_stmt 1
 165 0074 C046     		nop
 166 0076 BD46     		mov	sp, r7
 167 0078 04B0     		add	sp, sp, #16
 168              		@ sp needed
 169 007a 80BD     		pop	{r7, pc}
 170              		.cfi_endproc
 171              	.LFE1:
 173              		.align	1
 174              		.global	clear_object
 175              		.syntax unified
 176              		.code	16
 177              		.thumb_func
 178              		.fpu softvfp
 180              	clear_object:
 181              	.LFB2:
  17:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 
  18:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** void clear_object(POBJECT o) {
 182              		.loc 1 18 0
 183              		.cfi_startproc
 184              		@ args = 0, pretend = 0, frame = 16
 185              		@ frame_needed = 1, uses_anonymous_args = 0
 186 007c 80B5     		push	{r7, lr}
 187              		.cfi_def_cfa_offset 8
 188              		.cfi_offset 7, -8
 189              		.cfi_offset 14, -4
 190 007e 84B0     		sub	sp, sp, #16
 191              		.cfi_def_cfa_offset 24
 192 0080 00AF     		add	r7, sp, #0
 193              		.cfi_def_cfa_register 7
 194 0082 7860     		str	r0, [r7, #4]
 195              	.LBB4:
  19:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	for(int i = 0; i < o->geo->numpoints; i++) {
 196              		.loc 1 19 0
 197 0084 0023     		movs	r3, #0
 198 0086 FB60     		str	r3, [r7, #12]
 199 0088 1CE0     		b	.L6
 200              	.L7:
 201              	.LBB5:
  20:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		pixel(
  21:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 			o->posx + o->geo->px[i].x,
 202              		.loc 1 21 0 discriminator 3
 203 008a 7B68     		ldr	r3, [r7, #4]
 204 008c DA68     		ldr	r2, [r3, #12]
 205 008e 7B68     		ldr	r3, [r7, #4]
 206 0090 1968     		ldr	r1, [r3]
 207 0092 FB68     		ldr	r3, [r7, #12]
 208 0094 0433     		adds	r3, r3, #4
 209 0096 5B00     		lsls	r3, r3, #1
 210 0098 CB18     		adds	r3, r1, r3
 211 009a 0433     		adds	r3, r3, #4
 212 009c 1B78     		ldrb	r3, [r3]
  20:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		pixel(
 213              		.loc 1 20 0 discriminator 3
 214 009e D018     		adds	r0, r2, r3
  22:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 			o->posy + o->geo->px[i].y,
 215              		.loc 1 22 0 discriminator 3
 216 00a0 7B68     		ldr	r3, [r7, #4]
 217 00a2 1A69     		ldr	r2, [r3, #16]
 218 00a4 7B68     		ldr	r3, [r7, #4]
 219 00a6 1968     		ldr	r1, [r3]
 220 00a8 FB68     		ldr	r3, [r7, #12]
 221 00aa 0433     		adds	r3, r3, #4
 222 00ac 5B00     		lsls	r3, r3, #1
 223 00ae CB18     		adds	r3, r1, r3
 224 00b0 0533     		adds	r3, r3, #5
 225 00b2 1B78     		ldrb	r3, [r3]
  20:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		pixel(
 226              		.loc 1 20 0 discriminator 3
 227 00b4 D318     		adds	r3, r2, r3
 228 00b6 0022     		movs	r2, #0
 229 00b8 1900     		movs	r1, r3
 230 00ba FFF7FEFF 		bl	pixel
 231              	.LBE5:
  19:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	for(int i = 0; i < o->geo->numpoints; i++) {
 232              		.loc 1 19 0 discriminator 3
 233 00be FB68     		ldr	r3, [r7, #12]
 234 00c0 0133     		adds	r3, r3, #1
 235 00c2 FB60     		str	r3, [r7, #12]
 236              	.L6:
  19:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	for(int i = 0; i < o->geo->numpoints; i++) {
 237              		.loc 1 19 0 is_stmt 0 discriminator 1
 238 00c4 7B68     		ldr	r3, [r7, #4]
 239 00c6 1B68     		ldr	r3, [r3]
 240 00c8 1A68     		ldr	r2, [r3]
 241 00ca FB68     		ldr	r3, [r7, #12]
 242 00cc 9A42     		cmp	r2, r3
 243 00ce DCDC     		bgt	.L7
 244              	.LBE4:
  23:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 			0
  24:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		);
  25:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	}
  26:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** }
 245              		.loc 1 26 0 is_stmt 1
 246 00d0 C046     		nop
 247 00d2 BD46     		mov	sp, r7
 248 00d4 04B0     		add	sp, sp, #16
 249              		@ sp needed
 250 00d6 80BD     		pop	{r7, pc}
 251              		.cfi_endproc
 252              	.LFE2:
 254              		.align	1
 255              		.global	move_object
 256              		.syntax unified
 257              		.code	16
 258              		.thumb_func
 259              		.fpu softvfp
 261              	move_object:
 262              	.LFB3:
  27:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 
  28:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** void move_object(POBJECT o) {
 263              		.loc 1 28 0
 264              		.cfi_startproc
 265              		@ args = 0, pretend = 0, frame = 16
 266              		@ frame_needed = 1, uses_anonymous_args = 0
 267 00d8 80B5     		push	{r7, lr}
 268              		.cfi_def_cfa_offset 8
 269              		.cfi_offset 7, -8
 270              		.cfi_offset 14, -4
 271 00da 84B0     		sub	sp, sp, #16
 272              		.cfi_def_cfa_offset 24
 273 00dc 00AF     		add	r7, sp, #0
 274              		.cfi_def_cfa_register 7
 275 00de 7860     		str	r0, [r7, #4]
  29:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	clear_object(o);
 276              		.loc 1 29 0
 277 00e0 7B68     		ldr	r3, [r7, #4]
 278 00e2 1800     		movs	r0, r3
 279 00e4 FFF7FEFF 		bl	clear_object
  30:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	unsigned char newx, newy;
  31:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	newx = o->posx + o->dirx;
 280              		.loc 1 31 0
 281 00e8 7B68     		ldr	r3, [r7, #4]
 282 00ea DB68     		ldr	r3, [r3, #12]
 283 00ec D9B2     		uxtb	r1, r3
 284 00ee 7B68     		ldr	r3, [r7, #4]
 285 00f0 5B68     		ldr	r3, [r3, #4]
 286 00f2 DAB2     		uxtb	r2, r3
 287 00f4 0F23     		movs	r3, #15
 288 00f6 FB18     		adds	r3, r7, r3
 289 00f8 8A18     		adds	r2, r1, r2
 290 00fa 1A70     		strb	r2, [r3]
  32:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	newy = o->posy + o->diry;
 291              		.loc 1 32 0
 292 00fc 7B68     		ldr	r3, [r7, #4]
 293 00fe 1B69     		ldr	r3, [r3, #16]
 294 0100 D9B2     		uxtb	r1, r3
 295 0102 7B68     		ldr	r3, [r7, #4]
 296 0104 9B68     		ldr	r3, [r3, #8]
 297 0106 DAB2     		uxtb	r2, r3
 298 0108 0E23     		movs	r3, #14
 299 010a FB18     		adds	r3, r7, r3
 300 010c 8A18     		adds	r2, r1, r2
 301 010e 1A70     		strb	r2, [r3]
  33:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	if(newx < 1 || newx + o->geo->sizex > 128) {
 302              		.loc 1 33 0
 303 0110 0F23     		movs	r3, #15
 304 0112 FB18     		adds	r3, r7, r3
 305 0114 1B78     		ldrb	r3, [r3]
 306 0116 002B     		cmp	r3, #0
 307 0118 08D0     		beq	.L9
 308              		.loc 1 33 0 is_stmt 0 discriminator 1
 309 011a 0F23     		movs	r3, #15
 310 011c FB18     		adds	r3, r7, r3
 311 011e 1A78     		ldrb	r2, [r3]
 312 0120 7B68     		ldr	r3, [r7, #4]
 313 0122 1B68     		ldr	r3, [r3]
 314 0124 5B68     		ldr	r3, [r3, #4]
 315 0126 D318     		adds	r3, r2, r3
 316 0128 802B     		cmp	r3, #128
 317 012a 04DD     		ble	.L10
 318              	.L9:
  34:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		o->dirx = -o->dirx;
 319              		.loc 1 34 0 is_stmt 1
 320 012c 7B68     		ldr	r3, [r7, #4]
 321 012e 5B68     		ldr	r3, [r3, #4]
 322 0130 5A42     		rsbs	r2, r3, #0
 323 0132 7B68     		ldr	r3, [r7, #4]
 324 0134 5A60     		str	r2, [r3, #4]
 325              	.L10:
  35:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	}
  36:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	if(newy < 1 || newy + o->geo->sizey > 64) {
 326              		.loc 1 36 0
 327 0136 0E23     		movs	r3, #14
 328 0138 FB18     		adds	r3, r7, r3
 329 013a 1B78     		ldrb	r3, [r3]
 330 013c 002B     		cmp	r3, #0
 331 013e 08D0     		beq	.L11
 332              		.loc 1 36 0 is_stmt 0 discriminator 1
 333 0140 0E23     		movs	r3, #14
 334 0142 FB18     		adds	r3, r7, r3
 335 0144 1A78     		ldrb	r2, [r3]
 336 0146 7B68     		ldr	r3, [r7, #4]
 337 0148 1B68     		ldr	r3, [r3]
 338 014a 9B68     		ldr	r3, [r3, #8]
 339 014c D318     		adds	r3, r2, r3
 340 014e 402B     		cmp	r3, #64
 341 0150 04DD     		ble	.L12
 342              	.L11:
  37:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 		o->diry = -o->diry;
 343              		.loc 1 37 0 is_stmt 1
 344 0152 7B68     		ldr	r3, [r7, #4]
 345 0154 9B68     		ldr	r3, [r3, #8]
 346 0156 5A42     		rsbs	r2, r3, #0
 347 0158 7B68     		ldr	r3, [r7, #4]
 348 015a 9A60     		str	r2, [r3, #8]
 349              	.L12:
  38:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	}
  39:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** 	draw_object(o);
 350              		.loc 1 39 0
 351 015c 7B68     		ldr	r3, [r7, #4]
 352 015e 1800     		movs	r0, r3
 353 0160 FFF7FEFF 		bl	draw_object
  40:E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay\geometry.c **** }
 354              		.loc 1 40 0
 355 0164 C046     		nop
 356 0166 BD46     		mov	sp, r7
 357 0168 04B0     		add	sp, sp, #16
 358              		@ sp needed
 359 016a 80BD     		pop	{r7, pc}
 360              		.cfi_endproc
 361              	.LFE3:
 363              		.data
 364              		.align	2
 367              	ball:
 368 0034 00000000 		.word	ball_geometry
 369 0038 00000000 		.word	0
 370 003c 00000000 		.word	0
 371 0040 01000000 		.word	1
 372 0044 01000000 		.word	1
 373 0048 00000000 		.word	draw_object
 374 004c 00000000 		.word	clear_object
 375 0050 00000000 		.word	move_object
 376 0054 00000000 		.word	set_object_speed
 377              		.text
 378              	.Letext0:
 379              		.file 2 "E:/DAT017/CodeLite files/Moplaborationer/graphicdisplay/geometry.h"
