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
  11              		.file	"sprites.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.data
  16              		.align	2
  19              	spoop_bits:
  20 0000 3C       		.byte	60
  21 0001 3C       		.byte	60
  22 0002 43       		.byte	67
  23 0003 C2       		.byte	-62
  24 0004 9D       		.byte	-99
  25 0005 B9       		.byte	-71
  26 0006 0F       		.byte	15
  27 0007 D0       		.byte	-48
  28 0008 74       		.byte	116
  29 0009 2E       		.byte	46
  30 000a 4A       		.byte	74
  31 000b 52       		.byte	82
  32 000c 6A       		.byte	106
  33 000d 56       		.byte	86
  34 000e 7A       		.byte	122
  35 000f 5E       		.byte	94
  36 0010 84       		.byte	-124
  37 0011 21       		.byte	33
  38 0012 F8       		.byte	-8
  39 0013 1F       		.byte	31
  40 0014 30       		.byte	48
  41 0015 0C       		.byte	12
  42 0016 0C       		.byte	12
  43 0017 10       		.byte	16
  44 0018 12       		.byte	18
  45 0019 24       		.byte	36
  46 001a 16       		.byte	22
  47 001b 38       		.byte	56
  48 001c C8       		.byte	-56
  49 001d 11       		.byte	17
  50 001e 78       		.byte	120
  51 001f 1E       		.byte	30
  52              		.align	2
  55              	wall_bits:
  56 0020 FF       		.byte	-1
  57 0021 FF       		.byte	-1
  58 0022 05       		.byte	5
  59 0023 A0       		.byte	-96
  60 0024 FF       		.byte	-1
  61 0025 FF       		.byte	-1
  62 0026 15       		.byte	21
  63 0027 A8       		.byte	-88
  64 0028 2D       		.byte	45
  65 0029 B4       		.byte	-76
  66 002a 55       		.byte	85
  67 002b AA       		.byte	-86
  68 002c A5       		.byte	-91
  69 002d A5       		.byte	-91
  70 002e 45       		.byte	69
  71 002f A2       		.byte	-94
  72 0030 45       		.byte	69
  73 0031 A2       		.byte	-94
  74 0032 A5       		.byte	-91
  75 0033 A5       		.byte	-91
  76 0034 55       		.byte	85
  77 0035 AA       		.byte	-86
  78 0036 2D       		.byte	45
  79 0037 B4       		.byte	-76
  80 0038 15       		.byte	21
  81 0039 A8       		.byte	-88
  82 003a FF       		.byte	-1
  83 003b FF       		.byte	-1
  84 003c 05       		.byte	5
  85 003d A0       		.byte	-96
  86 003e FF       		.byte	-1
  87 003f FF       		.byte	-1
  88              		.align	2
  91              	exit_bits:
  92 0040 FF       		.byte	-1
  93 0041 FF       		.byte	-1
  94 0042 81       		.byte	-127
  95 0043 81       		.byte	-127
  96 0044 BD       		.byte	-67
  97 0045 BD       		.byte	-67
  98 0046 A5       		.byte	-91
  99 0047 A5       		.byte	-91
 100 0048 A5       		.byte	-91
 101 0049 A5       		.byte	-91
 102 004a A5       		.byte	-91
 103 004b A5       		.byte	-91
 104 004c A5       		.byte	-91
 105 004d A5       		.byte	-91
 106 004e A5       		.byte	-91
 107 004f A5       		.byte	-91
 108 0050 A5       		.byte	-91
 109 0051 A5       		.byte	-91
 110 0052 A5       		.byte	-91
 111 0053 A5       		.byte	-91
 112 0054 A5       		.byte	-91
 113 0055 A5       		.byte	-91
 114 0056 A5       		.byte	-91
 115 0057 A5       		.byte	-91
 116 0058 A5       		.byte	-91
 117 0059 A5       		.byte	-91
 118 005a BD       		.byte	-67
 119 005b BD       		.byte	-67
 120 005c 81       		.byte	-127
 121 005d 81       		.byte	-127
 122 005e FF       		.byte	-1
 123 005f FF       		.byte	-1
 124              		.text
 125              		.align	1
 126              		.global	load_sprite
 127              		.syntax unified
 128              		.code	16
 129              		.thumb_func
 130              		.fpu softvfp
 132              	load_sprite:
 133              	.LFB0:
 134              		.file 1 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v
   1:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** #include "sprites.h"
   2:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
   3:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** void load_sprite(SPRITE* s, unsigned char* data, int width, int height){
 135              		.loc 1 3 0
 136              		.cfi_startproc
 137              		@ args = 0, pretend = 0, frame = 16
 138              		@ frame_needed = 1, uses_anonymous_args = 0
 139 0000 80B5     		push	{r7, lr}
 140              		.cfi_def_cfa_offset 8
 141              		.cfi_offset 7, -8
 142              		.cfi_offset 14, -4
 143 0002 84B0     		sub	sp, sp, #16
 144              		.cfi_def_cfa_offset 24
 145 0004 00AF     		add	r7, sp, #0
 146              		.cfi_def_cfa_register 7
 147 0006 F860     		str	r0, [r7, #12]
 148 0008 B960     		str	r1, [r7, #8]
 149 000a 7A60     		str	r2, [r7, #4]
 150 000c 3B60     		str	r3, [r7]
   4:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     s->width = width;
 151              		.loc 1 4 0
 152 000e 7B68     		ldr	r3, [r7, #4]
 153 0010 DAB2     		uxtb	r2, r3
 154 0012 FB68     		ldr	r3, [r7, #12]
 155 0014 1A70     		strb	r2, [r3]
   5:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     s->height = height;
 156              		.loc 1 5 0
 157 0016 3B68     		ldr	r3, [r7]
 158 0018 DAB2     		uxtb	r2, r3
 159 001a FB68     		ldr	r3, [r7, #12]
 160 001c 5A70     		strb	r2, [r3, #1]
   6:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     s->data = data;
 161              		.loc 1 6 0
 162 001e FB68     		ldr	r3, [r7, #12]
 163 0020 BA68     		ldr	r2, [r7, #8]
 164 0022 5A60     		str	r2, [r3, #4]
   7:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 165              		.loc 1 7 0
 166 0024 C046     		nop
 167 0026 BD46     		mov	sp, r7
 168 0028 04B0     		add	sp, sp, #16
 169              		@ sp needed
 170 002a 80BD     		pop	{r7, pc}
 171              		.cfi_endproc
 172              	.LFE0:
 174              		.align	1
 175              		.global	draw_sprite
 176              		.syntax unified
 177              		.code	16
 178              		.thumb_func
 179              		.fpu softvfp
 181              	draw_sprite:
 182              	.LFB1:
   8:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
   9:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** void draw_sprite(SPRITE* s, int x, int y, int set){
 183              		.loc 1 9 0
 184              		.cfi_startproc
 185              		@ args = 0, pretend = 0, frame = 40
 186              		@ frame_needed = 1, uses_anonymous_args = 0
 187 002c 80B5     		push	{r7, lr}
 188              		.cfi_def_cfa_offset 8
 189              		.cfi_offset 7, -8
 190              		.cfi_offset 14, -4
 191 002e 8AB0     		sub	sp, sp, #40
 192              		.cfi_def_cfa_offset 48
 193 0030 00AF     		add	r7, sp, #0
 194              		.cfi_def_cfa_register 7
 195 0032 F860     		str	r0, [r7, #12]
 196 0034 B960     		str	r1, [r7, #8]
 197 0036 7A60     		str	r2, [r7, #4]
 198 0038 3B60     		str	r3, [r7]
  10:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     int width_in_bytes;
  11:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
  12:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     if(s->width % 8 == 0){
 199              		.loc 1 12 0
 200 003a FB68     		ldr	r3, [r7, #12]
 201 003c 1B78     		ldrb	r3, [r3]
 202 003e 0722     		movs	r2, #7
 203 0040 1340     		ands	r3, r2
 204 0042 DBB2     		uxtb	r3, r3
 205 0044 002B     		cmp	r3, #0
 206 0046 05D1     		bne	.L3
  13:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         width_in_bytes = s->width / 8;
 207              		.loc 1 13 0
 208 0048 FB68     		ldr	r3, [r7, #12]
 209 004a 1B78     		ldrb	r3, [r3]
 210 004c DB08     		lsrs	r3, r3, #3
 211 004e DBB2     		uxtb	r3, r3
 212 0050 7B62     		str	r3, [r7, #36]
 213 0052 05E0     		b	.L4
 214              	.L3:
  14:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     } else {
  15:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         width_in_bytes = s->width / 8 + 1;
 215              		.loc 1 15 0
 216 0054 FB68     		ldr	r3, [r7, #12]
 217 0056 1B78     		ldrb	r3, [r3]
 218 0058 DB08     		lsrs	r3, r3, #3
 219 005a DBB2     		uxtb	r3, r3
 220 005c 0133     		adds	r3, r3, #1
 221 005e 7B62     		str	r3, [r7, #36]
 222              	.L4:
 223              	.LBB2:
  16:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     }
  17:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
  18:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     for(int i = 0; i < s->height; i++){
 224              		.loc 1 18 0
 225 0060 0023     		movs	r3, #0
 226 0062 3B62     		str	r3, [r7, #32]
 227 0064 45E0     		b	.L5
 228              	.L11:
 229              	.LBB3:
  19:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         for(int j = 0; j < width_in_bytes; j++){
 230              		.loc 1 19 0
 231 0066 0023     		movs	r3, #0
 232 0068 FB61     		str	r3, [r7, #28]
 233 006a 3BE0     		b	.L6
 234              	.L10:
 235              	.LBB4:
  20:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****             unsigned char byte = s->data[i * width_in_bytes + j];
 236              		.loc 1 20 0
 237 006c FB68     		ldr	r3, [r7, #12]
 238 006e 5B68     		ldr	r3, [r3, #4]
 239 0070 3A6A     		ldr	r2, [r7, #32]
 240 0072 796A     		ldr	r1, [r7, #36]
 241 0074 5143     		muls	r1, r2
 242 0076 FA69     		ldr	r2, [r7, #28]
 243 0078 8A18     		adds	r2, r1, r2
 244 007a 9A18     		adds	r2, r3, r2
 245 007c 1723     		movs	r3, #23
 246 007e FB18     		adds	r3, r7, r3
 247 0080 1278     		ldrb	r2, [r2]
 248 0082 1A70     		strb	r2, [r3]
 249              	.LBB5:
  21:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****             for(int k = 0; k < 8; k++){
 250              		.loc 1 21 0
 251 0084 0023     		movs	r3, #0
 252 0086 BB61     		str	r3, [r7, #24]
 253 0088 26E0     		b	.L7
 254              	.L9:
  22:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****                 if(byte & (1 << k)){
 255              		.loc 1 22 0
 256 008a 1723     		movs	r3, #23
 257 008c FB18     		adds	r3, r7, r3
 258 008e 1A78     		ldrb	r2, [r3]
 259 0090 BB69     		ldr	r3, [r7, #24]
 260 0092 1A41     		asrs	r2, r2, r3
 261 0094 1300     		movs	r3, r2
 262 0096 0122     		movs	r2, #1
 263 0098 1340     		ands	r3, r2
 264 009a 1AD0     		beq	.L8
  23:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****                     pixel(8 * j + k + x + 1, i + y + 1, set);
 265              		.loc 1 23 0
 266 009c FB69     		ldr	r3, [r7, #28]
 267 009e DBB2     		uxtb	r3, r3
 268 00a0 DB00     		lsls	r3, r3, #3
 269 00a2 DAB2     		uxtb	r2, r3
 270 00a4 BB69     		ldr	r3, [r7, #24]
 271 00a6 DBB2     		uxtb	r3, r3
 272 00a8 D318     		adds	r3, r2, r3
 273 00aa DAB2     		uxtb	r2, r3
 274 00ac BB68     		ldr	r3, [r7, #8]
 275 00ae DBB2     		uxtb	r3, r3
 276 00b0 D318     		adds	r3, r2, r3
 277 00b2 DBB2     		uxtb	r3, r3
 278 00b4 0133     		adds	r3, r3, #1
 279 00b6 D8B2     		uxtb	r0, r3
 280 00b8 3B6A     		ldr	r3, [r7, #32]
 281 00ba DAB2     		uxtb	r2, r3
 282 00bc 7B68     		ldr	r3, [r7, #4]
 283 00be DBB2     		uxtb	r3, r3
 284 00c0 D318     		adds	r3, r2, r3
 285 00c2 DBB2     		uxtb	r3, r3
 286 00c4 0133     		adds	r3, r3, #1
 287 00c6 DBB2     		uxtb	r3, r3
 288 00c8 3A68     		ldr	r2, [r7]
 289 00ca D2B2     		uxtb	r2, r2
 290 00cc 1900     		movs	r1, r3
 291 00ce FFF7FEFF 		bl	pixel
 292              	.L8:
  21:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****             for(int k = 0; k < 8; k++){
 293              		.loc 1 21 0 discriminator 2
 294 00d2 BB69     		ldr	r3, [r7, #24]
 295 00d4 0133     		adds	r3, r3, #1
 296 00d6 BB61     		str	r3, [r7, #24]
 297              	.L7:
  21:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****             for(int k = 0; k < 8; k++){
 298              		.loc 1 21 0 is_stmt 0 discriminator 1
 299 00d8 BB69     		ldr	r3, [r7, #24]
 300 00da 072B     		cmp	r3, #7
 301 00dc D5DD     		ble	.L9
 302              	.LBE5:
 303              	.LBE4:
  19:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****             unsigned char byte = s->data[i * width_in_bytes + j];
 304              		.loc 1 19 0 is_stmt 1 discriminator 2
 305 00de FB69     		ldr	r3, [r7, #28]
 306 00e0 0133     		adds	r3, r3, #1
 307 00e2 FB61     		str	r3, [r7, #28]
 308              	.L6:
  19:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****             unsigned char byte = s->data[i * width_in_bytes + j];
 309              		.loc 1 19 0 is_stmt 0 discriminator 1
 310 00e4 FA69     		ldr	r2, [r7, #28]
 311 00e6 7B6A     		ldr	r3, [r7, #36]
 312 00e8 9A42     		cmp	r2, r3
 313 00ea BFDB     		blt	.L10
 314              	.LBE3:
  18:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         for(int j = 0; j < width_in_bytes; j++){
 315              		.loc 1 18 0 is_stmt 1 discriminator 2
 316 00ec 3B6A     		ldr	r3, [r7, #32]
 317 00ee 0133     		adds	r3, r3, #1
 318 00f0 3B62     		str	r3, [r7, #32]
 319              	.L5:
  18:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         for(int j = 0; j < width_in_bytes; j++){
 320              		.loc 1 18 0 is_stmt 0 discriminator 1
 321 00f2 FB68     		ldr	r3, [r7, #12]
 322 00f4 5B78     		ldrb	r3, [r3, #1]
 323 00f6 1A00     		movs	r2, r3
 324 00f8 3B6A     		ldr	r3, [r7, #32]
 325 00fa 9A42     		cmp	r2, r3
 326 00fc B3DC     		bgt	.L11
 327              	.LBE2:
  24:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****                 }
  25:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****             }
  26:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         }
  27:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     }
  28:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 328              		.loc 1 28 0 is_stmt 1
 329 00fe C046     		nop
 330 0100 BD46     		mov	sp, r7
 331 0102 0AB0     		add	sp, sp, #40
 332              		@ sp needed
 333 0104 80BD     		pop	{r7, pc}
 334              		.cfi_endproc
 335              	.LFE1:
 337              		.align	1
 338              		.global	draw_sprite_object
 339              		.syntax unified
 340              		.code	16
 341              		.thumb_func
 342              		.fpu softvfp
 344              	draw_sprite_object:
 345              	.LFB2:
  29:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
  30:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** void draw_sprite_object(PSPRITE_OBJECT p){
 346              		.loc 1 30 0
 347              		.cfi_startproc
 348              		@ args = 0, pretend = 0, frame = 8
 349              		@ frame_needed = 1, uses_anonymous_args = 0
 350 0106 80B5     		push	{r7, lr}
 351              		.cfi_def_cfa_offset 8
 352              		.cfi_offset 7, -8
 353              		.cfi_offset 14, -4
 354 0108 82B0     		sub	sp, sp, #8
 355              		.cfi_def_cfa_offset 16
 356 010a 00AF     		add	r7, sp, #0
 357              		.cfi_def_cfa_register 7
 358 010c 7860     		str	r0, [r7, #4]
  31:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     draw_sprite(p->sprt, p->pos_x, p->pos_y, 1);
 359              		.loc 1 31 0
 360 010e 7B68     		ldr	r3, [r7, #4]
 361 0110 1868     		ldr	r0, [r3]
 362 0112 7B68     		ldr	r3, [r7, #4]
 363 0114 D968     		ldr	r1, [r3, #12]
 364 0116 7B68     		ldr	r3, [r7, #4]
 365 0118 1A69     		ldr	r2, [r3, #16]
 366 011a 0123     		movs	r3, #1
 367 011c FFF7FEFF 		bl	draw_sprite
  32:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 368              		.loc 1 32 0
 369 0120 C046     		nop
 370 0122 BD46     		mov	sp, r7
 371 0124 02B0     		add	sp, sp, #8
 372              		@ sp needed
 373 0126 80BD     		pop	{r7, pc}
 374              		.cfi_endproc
 375              	.LFE2:
 377              		.align	1
 378              		.global	clear_sprite_object
 379              		.syntax unified
 380              		.code	16
 381              		.thumb_func
 382              		.fpu softvfp
 384              	clear_sprite_object:
 385              	.LFB3:
  33:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
  34:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** void clear_sprite_object(PSPRITE_OBJECT p){
 386              		.loc 1 34 0
 387              		.cfi_startproc
 388              		@ args = 0, pretend = 0, frame = 8
 389              		@ frame_needed = 1, uses_anonymous_args = 0
 390 0128 80B5     		push	{r7, lr}
 391              		.cfi_def_cfa_offset 8
 392              		.cfi_offset 7, -8
 393              		.cfi_offset 14, -4
 394 012a 82B0     		sub	sp, sp, #8
 395              		.cfi_def_cfa_offset 16
 396 012c 00AF     		add	r7, sp, #0
 397              		.cfi_def_cfa_register 7
 398 012e 7860     		str	r0, [r7, #4]
  35:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     draw_sprite(p->sprt, p->pos_x, p->pos_y, 0);
 399              		.loc 1 35 0
 400 0130 7B68     		ldr	r3, [r7, #4]
 401 0132 1868     		ldr	r0, [r3]
 402 0134 7B68     		ldr	r3, [r7, #4]
 403 0136 D968     		ldr	r1, [r3, #12]
 404 0138 7B68     		ldr	r3, [r7, #4]
 405 013a 1A69     		ldr	r2, [r3, #16]
 406 013c 0023     		movs	r3, #0
 407 013e FFF7FEFF 		bl	draw_sprite
  36:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 408              		.loc 1 36 0
 409 0142 C046     		nop
 410 0144 BD46     		mov	sp, r7
 411 0146 02B0     		add	sp, sp, #8
 412              		@ sp needed
 413 0148 80BD     		pop	{r7, pc}
 414              		.cfi_endproc
 415              	.LFE3:
 417              		.align	1
 418              		.global	move_sprite_object
 419              		.syntax unified
 420              		.code	16
 421              		.thumb_func
 422              		.fpu softvfp
 424              	move_sprite_object:
 425              	.LFB4:
  37:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
  38:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** void move_sprite_object(PSPRITE_OBJECT p){
 426              		.loc 1 38 0
 427              		.cfi_startproc
 428              		@ args = 0, pretend = 0, frame = 8
 429              		@ frame_needed = 1, uses_anonymous_args = 0
 430 014a 80B5     		push	{r7, lr}
 431              		.cfi_def_cfa_offset 8
 432              		.cfi_offset 7, -8
 433              		.cfi_offset 14, -4
 434 014c 82B0     		sub	sp, sp, #8
 435              		.cfi_def_cfa_offset 16
 436 014e 00AF     		add	r7, sp, #0
 437              		.cfi_def_cfa_register 7
 438 0150 7860     		str	r0, [r7, #4]
  39:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     p->clear(p);
 439              		.loc 1 39 0
 440 0152 7B68     		ldr	r3, [r7, #4]
 441 0154 9B69     		ldr	r3, [r3, #24]
 442 0156 7A68     		ldr	r2, [r7, #4]
 443 0158 1000     		movs	r0, r2
 444 015a 9847     		blx	r3
 445              	.LVL0:
  40:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     p->pos_x += p->dir_x;
 446              		.loc 1 40 0
 447 015c 7B68     		ldr	r3, [r7, #4]
 448 015e DA68     		ldr	r2, [r3, #12]
 449 0160 7B68     		ldr	r3, [r7, #4]
 450 0162 5B68     		ldr	r3, [r3, #4]
 451 0164 D218     		adds	r2, r2, r3
 452 0166 7B68     		ldr	r3, [r7, #4]
 453 0168 DA60     		str	r2, [r3, #12]
  41:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     p->pos_y += p->dir_y;
 454              		.loc 1 41 0
 455 016a 7B68     		ldr	r3, [r7, #4]
 456 016c 1A69     		ldr	r2, [r3, #16]
 457 016e 7B68     		ldr	r3, [r7, #4]
 458 0170 9B68     		ldr	r3, [r3, #8]
 459 0172 D218     		adds	r2, r2, r3
 460 0174 7B68     		ldr	r3, [r7, #4]
 461 0176 1A61     		str	r2, [r3, #16]
  42:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
  43:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     if(p->pos_x < 0){
 462              		.loc 1 43 0
 463 0178 7B68     		ldr	r3, [r7, #4]
 464 017a DB68     		ldr	r3, [r3, #12]
 465 017c 002B     		cmp	r3, #0
 466 017e 05DA     		bge	.L15
  44:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         p->pos_x = 0;
 467              		.loc 1 44 0
 468 0180 7B68     		ldr	r3, [r7, #4]
 469 0182 0022     		movs	r2, #0
 470 0184 DA60     		str	r2, [r3, #12]
  45:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         p->dir_x = 0;
 471              		.loc 1 45 0
 472 0186 7B68     		ldr	r3, [r7, #4]
 473 0188 0022     		movs	r2, #0
 474 018a 5A60     		str	r2, [r3, #4]
 475              	.L15:
  46:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     }
  47:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     if(p->pos_x + p->sprt->width > 127){
 476              		.loc 1 47 0
 477 018c 7B68     		ldr	r3, [r7, #4]
 478 018e DA68     		ldr	r2, [r3, #12]
 479 0190 7B68     		ldr	r3, [r7, #4]
 480 0192 1B68     		ldr	r3, [r3]
 481 0194 1B78     		ldrb	r3, [r3]
 482 0196 D318     		adds	r3, r2, r3
 483 0198 7F2B     		cmp	r3, #127
 484 019a 07DD     		ble	.L16
  48:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         p->pos_x = 127 - p->sprt->width;
 485              		.loc 1 48 0
 486 019c 7B68     		ldr	r3, [r7, #4]
 487 019e 1B68     		ldr	r3, [r3]
 488 01a0 1B78     		ldrb	r3, [r3]
 489 01a2 1A00     		movs	r2, r3
 490 01a4 7F23     		movs	r3, #127
 491 01a6 9A1A     		subs	r2, r3, r2
 492 01a8 7B68     		ldr	r3, [r7, #4]
 493 01aa DA60     		str	r2, [r3, #12]
 494              	.L16:
  49:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     }
  50:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
  51:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     if(p->pos_y < 0){
 495              		.loc 1 51 0
 496 01ac 7B68     		ldr	r3, [r7, #4]
 497 01ae 1B69     		ldr	r3, [r3, #16]
 498 01b0 002B     		cmp	r3, #0
 499 01b2 05DA     		bge	.L17
  52:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         p->pos_y = 0;
 500              		.loc 1 52 0
 501 01b4 7B68     		ldr	r3, [r7, #4]
 502 01b6 0022     		movs	r2, #0
 503 01b8 1A61     		str	r2, [r3, #16]
  53:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         p->dir_y = 0;
 504              		.loc 1 53 0
 505 01ba 7B68     		ldr	r3, [r7, #4]
 506 01bc 0022     		movs	r2, #0
 507 01be 9A60     		str	r2, [r3, #8]
 508              	.L17:
  54:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     }
  55:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     if(p->pos_y + p->sprt->height > 63){
 509              		.loc 1 55 0
 510 01c0 7B68     		ldr	r3, [r7, #4]
 511 01c2 1A69     		ldr	r2, [r3, #16]
 512 01c4 7B68     		ldr	r3, [r7, #4]
 513 01c6 1B68     		ldr	r3, [r3]
 514 01c8 5B78     		ldrb	r3, [r3, #1]
 515 01ca D318     		adds	r3, r2, r3
 516 01cc 3F2B     		cmp	r3, #63
 517 01ce 07DD     		ble	.L19
  56:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         p->pos_y = 63 -p->sprt->height;
 518              		.loc 1 56 0
 519 01d0 7B68     		ldr	r3, [r7, #4]
 520 01d2 1B68     		ldr	r3, [r3]
 521 01d4 5B78     		ldrb	r3, [r3, #1]
 522 01d6 1A00     		movs	r2, r3
 523 01d8 3F23     		movs	r3, #63
 524 01da 9A1A     		subs	r2, r3, r2
 525 01dc 7B68     		ldr	r3, [r7, #4]
 526 01de 1A61     		str	r2, [r3, #16]
 527              	.L19:
  57:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     }
  58:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 528              		.loc 1 58 0
 529 01e0 C046     		nop
 530 01e2 BD46     		mov	sp, r7
 531 01e4 02B0     		add	sp, sp, #8
 532              		@ sp needed
 533 01e6 80BD     		pop	{r7, pc}
 534              		.cfi_endproc
 535              	.LFE4:
 537              		.align	1
 538              		.global	set_sprite_object_speed
 539              		.syntax unified
 540              		.code	16
 541              		.thumb_func
 542              		.fpu softvfp
 544              	set_sprite_object_speed:
 545              	.LFB5:
  59:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
  60:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** void set_sprite_object_speed(PSPRITE_OBJECT p, int x, int y){
 546              		.loc 1 60 0
 547              		.cfi_startproc
 548              		@ args = 0, pretend = 0, frame = 16
 549              		@ frame_needed = 1, uses_anonymous_args = 0
 550 01e8 80B5     		push	{r7, lr}
 551              		.cfi_def_cfa_offset 8
 552              		.cfi_offset 7, -8
 553              		.cfi_offset 14, -4
 554 01ea 84B0     		sub	sp, sp, #16
 555              		.cfi_def_cfa_offset 24
 556 01ec 00AF     		add	r7, sp, #0
 557              		.cfi_def_cfa_register 7
 558 01ee F860     		str	r0, [r7, #12]
 559 01f0 B960     		str	r1, [r7, #8]
 560 01f2 7A60     		str	r2, [r7, #4]
  61:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     p->dir_x = x;
 561              		.loc 1 61 0
 562 01f4 FB68     		ldr	r3, [r7, #12]
 563 01f6 BA68     		ldr	r2, [r7, #8]
 564 01f8 5A60     		str	r2, [r3, #4]
  62:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     p->dir_y = y;
 565              		.loc 1 62 0
 566 01fa FB68     		ldr	r3, [r7, #12]
 567 01fc 7A68     		ldr	r2, [r7, #4]
 568 01fe 9A60     		str	r2, [r3, #8]
  63:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 569              		.loc 1 63 0
 570 0200 C046     		nop
 571 0202 BD46     		mov	sp, r7
 572 0204 04B0     		add	sp, sp, #16
 573              		@ sp needed
 574 0206 80BD     		pop	{r7, pc}
 575              		.cfi_endproc
 576              	.LFE5:
 578              		.align	1
 579              		.global	dummy_function1
 580              		.syntax unified
 581              		.code	16
 582              		.thumb_func
 583              		.fpu softvfp
 585              	dummy_function1:
 586              	.LFB6:
  64:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
  65:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** void dummy_function1(PSPRITE_OBJECT p){
 587              		.loc 1 65 0
 588              		.cfi_startproc
 589              		@ args = 0, pretend = 0, frame = 8
 590              		@ frame_needed = 1, uses_anonymous_args = 0
 591 0208 80B5     		push	{r7, lr}
 592              		.cfi_def_cfa_offset 8
 593              		.cfi_offset 7, -8
 594              		.cfi_offset 14, -4
 595 020a 82B0     		sub	sp, sp, #8
 596              		.cfi_def_cfa_offset 16
 597 020c 00AF     		add	r7, sp, #0
 598              		.cfi_def_cfa_register 7
 599 020e 7860     		str	r0, [r7, #4]
  66:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     return;
 600              		.loc 1 66 0
 601 0210 C046     		nop
  67:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 602              		.loc 1 67 0
 603 0212 BD46     		mov	sp, r7
 604 0214 02B0     		add	sp, sp, #8
 605              		@ sp needed
 606 0216 80BD     		pop	{r7, pc}
 607              		.cfi_endproc
 608              	.LFE6:
 610              		.align	1
 611              		.global	dummy_function2
 612              		.syntax unified
 613              		.code	16
 614              		.thumb_func
 615              		.fpu softvfp
 617              	dummy_function2:
 618              	.LFB7:
  68:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
  69:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** void dummy_function2(PSPRITE_OBJECT p, int x, int y){
 619              		.loc 1 69 0
 620              		.cfi_startproc
 621              		@ args = 0, pretend = 0, frame = 16
 622              		@ frame_needed = 1, uses_anonymous_args = 0
 623 0218 80B5     		push	{r7, lr}
 624              		.cfi_def_cfa_offset 8
 625              		.cfi_offset 7, -8
 626              		.cfi_offset 14, -4
 627 021a 84B0     		sub	sp, sp, #16
 628              		.cfi_def_cfa_offset 24
 629 021c 00AF     		add	r7, sp, #0
 630              		.cfi_def_cfa_register 7
 631 021e F860     		str	r0, [r7, #12]
 632 0220 B960     		str	r1, [r7, #8]
 633 0222 7A60     		str	r2, [r7, #4]
  70:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     return;
 634              		.loc 1 70 0
 635 0224 C046     		nop
  71:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 636              		.loc 1 71 0
 637 0226 BD46     		mov	sp, r7
 638 0228 04B0     		add	sp, sp, #16
 639              		@ sp needed
 640 022a 80BD     		pop	{r7, pc}
 641              		.cfi_endproc
 642              	.LFE7:
 644              		.align	1
 645              		.global	init_spoopy
 646              		.syntax unified
 647              		.code	16
 648              		.thumb_func
 649              		.fpu softvfp
 651              	init_spoopy:
 652              	.LFB8:
  72:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
  73:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** PSPRITE_OBJECT init_spoopy(void){
 653              		.loc 1 73 0
 654              		.cfi_startproc
 655              		@ args = 0, pretend = 0, frame = 48
 656              		@ frame_needed = 1, uses_anonymous_args = 0
 657 022c 80B5     		push	{r7, lr}
 658              		.cfi_def_cfa_offset 8
 659              		.cfi_offset 7, -8
 660              		.cfi_offset 14, -4
 661 022e 8CB0     		sub	sp, sp, #48
 662              		.cfi_def_cfa_offset 56
 663 0230 00AF     		add	r7, sp, #0
 664              		.cfi_def_cfa_register 7
  74:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     SPRITE spoopy_sprite = {
 665              		.loc 1 74 0
 666 0232 2423     		movs	r3, #36
 667 0234 FB18     		adds	r3, r7, r3
 668 0236 0022     		movs	r2, #0
 669 0238 1A70     		strb	r2, [r3]
 670 023a 2423     		movs	r3, #36
 671 023c FB18     		adds	r3, r7, r3
 672 023e 0022     		movs	r2, #0
 673 0240 5A70     		strb	r2, [r3, #1]
 674 0242 2423     		movs	r3, #36
 675 0244 FB18     		adds	r3, r7, r3
 676 0246 0022     		movs	r2, #0
 677 0248 5A60     		str	r2, [r3, #4]
  75:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         0, // Init values, disregard these as these will be set later
  76:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         0,
  77:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         {0}
  78:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     };
  79:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
  80:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     PSPRITE spoopy_sprite_pointer = &spoopy_sprite;
 678              		.loc 1 80 0
 679 024a 2423     		movs	r3, #36
 680 024c FB18     		adds	r3, r7, r3
 681 024e FB62     		str	r3, [r7, #44]
  81:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
  82:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     // Load default sprite for Spoopy
  83:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     load_sprite(spoopy_sprite_pointer, spoop_bits, spoop_width, spoop_height);
 682              		.loc 1 83 0
 683 0250 1349     		ldr	r1, .L27
 684 0252 F86A     		ldr	r0, [r7, #44]
 685 0254 1023     		movs	r3, #16
 686 0256 1022     		movs	r2, #16
 687 0258 FFF7FEFF 		bl	load_sprite
  84:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
  85:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     // Initiate Spoopy
  86:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     SPRITE_OBJECT spoopy = {
 688              		.loc 1 86 0
 689 025c 3B00     		movs	r3, r7
 690 025e FA6A     		ldr	r2, [r7, #44]
 691 0260 1A60     		str	r2, [r3]
 692 0262 3B00     		movs	r3, r7
 693 0264 0022     		movs	r2, #0
 694 0266 5A60     		str	r2, [r3, #4]
 695 0268 3B00     		movs	r3, r7
 696 026a 0022     		movs	r2, #0
 697 026c 9A60     		str	r2, [r3, #8]
 698 026e 3B00     		movs	r3, r7
 699 0270 FA22     		movs	r2, #250
 700 0272 5200     		lsls	r2, r2, #1
 701 0274 DA60     		str	r2, [r3, #12]
 702 0276 3B00     		movs	r3, r7
 703 0278 FA22     		movs	r2, #250
 704 027a 5200     		lsls	r2, r2, #1
 705 027c 1A61     		str	r2, [r3, #16]
 706 027e 3B00     		movs	r3, r7
 707 0280 084A     		ldr	r2, .L27+4
 708 0282 5A61     		str	r2, [r3, #20]
 709 0284 3B00     		movs	r3, r7
 710 0286 084A     		ldr	r2, .L27+8
 711 0288 9A61     		str	r2, [r3, #24]
 712 028a 3B00     		movs	r3, r7
 713 028c 074A     		ldr	r2, .L27+12
 714 028e DA61     		str	r2, [r3, #28]
 715 0290 3B00     		movs	r3, r7
 716 0292 074A     		ldr	r2, .L27+16
 717 0294 1A62     		str	r2, [r3, #32]
  87:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         spoopy_sprite_pointer, // sprite
  88:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         0, 0, // Set velocity, x & y
  89:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         500, 500, // Set position, x & y
  90:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         draw_sprite_object,
  91:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         clear_sprite_object,
  92:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         move_sprite_object,
  93:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         set_sprite_object_speed,
  94:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     };
  95:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
  96:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     return &spoopy;
 718              		.loc 1 96 0
 719 0296 0023     		movs	r3, #0
  97:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 720              		.loc 1 97 0
 721 0298 1800     		movs	r0, r3
 722 029a BD46     		mov	sp, r7
 723 029c 0CB0     		add	sp, sp, #48
 724              		@ sp needed
 725 029e 80BD     		pop	{r7, pc}
 726              	.L28:
 727              		.align	2
 728              	.L27:
 729 02a0 00000000 		.word	spoop_bits
 730 02a4 00000000 		.word	draw_sprite_object
 731 02a8 00000000 		.word	clear_sprite_object
 732 02ac 00000000 		.word	move_sprite_object
 733 02b0 00000000 		.word	set_sprite_object_speed
 734              		.cfi_endproc
 735              	.LFE8:
 737              		.align	1
 738              		.global	init_wall
 739              		.syntax unified
 740              		.code	16
 741              		.thumb_func
 742              		.fpu softvfp
 744              	init_wall:
 745              	.LFB9:
  98:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
  99:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** PSPRITE_OBJECT init_wall(void){
 746              		.loc 1 99 0
 747              		.cfi_startproc
 748              		@ args = 0, pretend = 0, frame = 48
 749              		@ frame_needed = 1, uses_anonymous_args = 0
 750 02b4 80B5     		push	{r7, lr}
 751              		.cfi_def_cfa_offset 8
 752              		.cfi_offset 7, -8
 753              		.cfi_offset 14, -4
 754 02b6 8CB0     		sub	sp, sp, #48
 755              		.cfi_def_cfa_offset 56
 756 02b8 00AF     		add	r7, sp, #0
 757              		.cfi_def_cfa_register 7
 100:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     SPRITE wall_sprite = {
 758              		.loc 1 100 0
 759 02ba 2423     		movs	r3, #36
 760 02bc FB18     		adds	r3, r7, r3
 761 02be 0022     		movs	r2, #0
 762 02c0 1A70     		strb	r2, [r3]
 763 02c2 2423     		movs	r3, #36
 764 02c4 FB18     		adds	r3, r7, r3
 765 02c6 0022     		movs	r2, #0
 766 02c8 5A70     		strb	r2, [r3, #1]
 767 02ca 2423     		movs	r3, #36
 768 02cc FB18     		adds	r3, r7, r3
 769 02ce 0022     		movs	r2, #0
 770 02d0 5A60     		str	r2, [r3, #4]
 101:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         0,
 102:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         0,
 103:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         {0}
 104:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     };
 105:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
 106:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     PSPRITE wall_sprite_pointer = &wall_sprite;
 771              		.loc 1 106 0
 772 02d2 2423     		movs	r3, #36
 773 02d4 FB18     		adds	r3, r7, r3
 774 02d6 FB62     		str	r3, [r7, #44]
 107:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
 108:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     load_sprite(wall_sprite_pointer, wall_bits, wall_width, wall_height);
 775              		.loc 1 108 0
 776 02d8 1349     		ldr	r1, .L31
 777 02da F86A     		ldr	r0, [r7, #44]
 778 02dc 1023     		movs	r3, #16
 779 02de 1022     		movs	r2, #16
 780 02e0 FFF7FEFF 		bl	load_sprite
 109:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
 110:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     SPRITE_OBJECT wall = {
 781              		.loc 1 110 0
 782 02e4 3B00     		movs	r3, r7
 783 02e6 FA6A     		ldr	r2, [r7, #44]
 784 02e8 1A60     		str	r2, [r3]
 785 02ea 3B00     		movs	r3, r7
 786 02ec 0022     		movs	r2, #0
 787 02ee 5A60     		str	r2, [r3, #4]
 788 02f0 3B00     		movs	r3, r7
 789 02f2 0022     		movs	r2, #0
 790 02f4 9A60     		str	r2, [r3, #8]
 791 02f6 3B00     		movs	r3, r7
 792 02f8 FA22     		movs	r2, #250
 793 02fa 5200     		lsls	r2, r2, #1
 794 02fc DA60     		str	r2, [r3, #12]
 795 02fe 3B00     		movs	r3, r7
 796 0300 FA22     		movs	r2, #250
 797 0302 5200     		lsls	r2, r2, #1
 798 0304 1A61     		str	r2, [r3, #16]
 799 0306 3B00     		movs	r3, r7
 800 0308 084A     		ldr	r2, .L31+4
 801 030a 5A61     		str	r2, [r3, #20]
 802 030c 3B00     		movs	r3, r7
 803 030e 084A     		ldr	r2, .L31+8
 804 0310 9A61     		str	r2, [r3, #24]
 805 0312 3B00     		movs	r3, r7
 806 0314 074A     		ldr	r2, .L31+12
 807 0316 DA61     		str	r2, [r3, #28]
 808 0318 3B00     		movs	r3, r7
 809 031a 074A     		ldr	r2, .L31+16
 810 031c 1A62     		str	r2, [r3, #32]
 111:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         wall_sprite_pointer,
 112:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         0, 0,
 113:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         500, 500,
 114:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         draw_sprite_object,
 115:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         clear_sprite_object,
 116:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         dummy_function1,
 117:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         dummy_function2
 118:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     };
 119:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
 120:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     return &wall;
 811              		.loc 1 120 0
 812 031e 0023     		movs	r3, #0
 121:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 813              		.loc 1 121 0
 814 0320 1800     		movs	r0, r3
 815 0322 BD46     		mov	sp, r7
 816 0324 0CB0     		add	sp, sp, #48
 817              		@ sp needed
 818 0326 80BD     		pop	{r7, pc}
 819              	.L32:
 820              		.align	2
 821              	.L31:
 822 0328 20000000 		.word	wall_bits
 823 032c 00000000 		.word	draw_sprite_object
 824 0330 00000000 		.word	clear_sprite_object
 825 0334 00000000 		.word	dummy_function1
 826 0338 00000000 		.word	dummy_function2
 827              		.cfi_endproc
 828              	.LFE9:
 830              		.align	1
 831              		.global	init_exit
 832              		.syntax unified
 833              		.code	16
 834              		.thumb_func
 835              		.fpu softvfp
 837              	init_exit:
 838              	.LFB10:
 122:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
 123:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** PSPRITE_OBJECT init_exit(void){
 839              		.loc 1 123 0
 840              		.cfi_startproc
 841              		@ args = 0, pretend = 0, frame = 48
 842              		@ frame_needed = 1, uses_anonymous_args = 0
 843 033c 80B5     		push	{r7, lr}
 844              		.cfi_def_cfa_offset 8
 845              		.cfi_offset 7, -8
 846              		.cfi_offset 14, -4
 847 033e 8CB0     		sub	sp, sp, #48
 848              		.cfi_def_cfa_offset 56
 849 0340 00AF     		add	r7, sp, #0
 850              		.cfi_def_cfa_register 7
 124:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     SPRITE exit_sprite = {
 851              		.loc 1 124 0
 852 0342 2423     		movs	r3, #36
 853 0344 FB18     		adds	r3, r7, r3
 854 0346 0022     		movs	r2, #0
 855 0348 1A70     		strb	r2, [r3]
 856 034a 2423     		movs	r3, #36
 857 034c FB18     		adds	r3, r7, r3
 858 034e 0022     		movs	r2, #0
 859 0350 5A70     		strb	r2, [r3, #1]
 860 0352 2423     		movs	r3, #36
 861 0354 FB18     		adds	r3, r7, r3
 862 0356 0022     		movs	r2, #0
 863 0358 5A60     		str	r2, [r3, #4]
 125:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         0,
 126:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         0,
 127:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         {0}
 128:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     };
 129:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
 130:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     PSPRITE exit_sprite_pointer = &exit_sprite;
 864              		.loc 1 130 0
 865 035a 2423     		movs	r3, #36
 866 035c FB18     		adds	r3, r7, r3
 867 035e FB62     		str	r3, [r7, #44]
 131:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
 132:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     load_sprite(exit_sprite_pointer, exit_bits, exit_width, exit_height);
 868              		.loc 1 132 0
 869 0360 1349     		ldr	r1, .L35
 870 0362 F86A     		ldr	r0, [r7, #44]
 871 0364 1023     		movs	r3, #16
 872 0366 1022     		movs	r2, #16
 873 0368 FFF7FEFF 		bl	load_sprite
 133:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
 134:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     SPRITE_OBJECT exit = {
 874              		.loc 1 134 0
 875 036c 3B00     		movs	r3, r7
 876 036e FA6A     		ldr	r2, [r7, #44]
 877 0370 1A60     		str	r2, [r3]
 878 0372 3B00     		movs	r3, r7
 879 0374 0022     		movs	r2, #0
 880 0376 5A60     		str	r2, [r3, #4]
 881 0378 3B00     		movs	r3, r7
 882 037a 0022     		movs	r2, #0
 883 037c 9A60     		str	r2, [r3, #8]
 884 037e 3B00     		movs	r3, r7
 885 0380 FA22     		movs	r2, #250
 886 0382 5200     		lsls	r2, r2, #1
 887 0384 DA60     		str	r2, [r3, #12]
 888 0386 3B00     		movs	r3, r7
 889 0388 FA22     		movs	r2, #250
 890 038a 5200     		lsls	r2, r2, #1
 891 038c 1A61     		str	r2, [r3, #16]
 892 038e 3B00     		movs	r3, r7
 893 0390 084A     		ldr	r2, .L35+4
 894 0392 5A61     		str	r2, [r3, #20]
 895 0394 3B00     		movs	r3, r7
 896 0396 084A     		ldr	r2, .L35+8
 897 0398 9A61     		str	r2, [r3, #24]
 898 039a 3B00     		movs	r3, r7
 899 039c 074A     		ldr	r2, .L35+12
 900 039e DA61     		str	r2, [r3, #28]
 901 03a0 3B00     		movs	r3, r7
 902 03a2 074A     		ldr	r2, .L35+16
 903 03a4 1A62     		str	r2, [r3, #32]
 135:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         exit_sprite_pointer,
 136:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         0, 0,
 137:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         500, 500,
 138:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         draw_sprite_object,
 139:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         clear_sprite_object,
 140:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         dummy_function1,
 141:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****         dummy_function2
 142:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     };
 143:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     
 144:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     return &exit;
 904              		.loc 1 144 0
 905 03a6 0023     		movs	r3, #0
 145:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 906              		.loc 1 145 0
 907 03a8 1800     		movs	r0, r3
 908 03aa BD46     		mov	sp, r7
 909 03ac 0CB0     		add	sp, sp, #48
 910              		@ sp needed
 911 03ae 80BD     		pop	{r7, pc}
 912              	.L36:
 913              		.align	2
 914              	.L35:
 915 03b0 40000000 		.word	exit_bits
 916 03b4 00000000 		.word	draw_sprite_object
 917 03b8 00000000 		.word	clear_sprite_object
 918 03bc 00000000 		.word	dummy_function1
 919 03c0 00000000 		.word	dummy_function2
 920              		.cfi_endproc
 921              	.LFE10:
 923              		.align	1
 924              		.global	update_sprite_object
 925              		.syntax unified
 926              		.code	16
 927              		.thumb_func
 928              		.fpu softvfp
 930              	update_sprite_object:
 931              	.LFB11:
 146:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** 
 147:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** void update_sprite_object(PSPRITE_OBJECT obj){
 932              		.loc 1 147 0
 933              		.cfi_startproc
 934              		@ args = 0, pretend = 0, frame = 8
 935              		@ frame_needed = 1, uses_anonymous_args = 0
 936 03c4 80B5     		push	{r7, lr}
 937              		.cfi_def_cfa_offset 8
 938              		.cfi_offset 7, -8
 939              		.cfi_offset 14, -4
 940 03c6 82B0     		sub	sp, sp, #8
 941              		.cfi_def_cfa_offset 16
 942 03c8 00AF     		add	r7, sp, #0
 943              		.cfi_def_cfa_register 7
 944 03ca 7860     		str	r0, [r7, #4]
 148:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     obj->clear(obj);
 945              		.loc 1 148 0
 946 03cc 7B68     		ldr	r3, [r7, #4]
 947 03ce 9B69     		ldr	r3, [r3, #24]
 948 03d0 7A68     		ldr	r2, [r7, #4]
 949 03d2 1000     		movs	r0, r2
 950 03d4 9847     		blx	r3
 951              	.LVL1:
 149:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     obj->move(obj);
 952              		.loc 1 149 0
 953 03d6 7B68     		ldr	r3, [r7, #4]
 954 03d8 DB69     		ldr	r3, [r3, #28]
 955 03da 7A68     		ldr	r2, [r7, #4]
 956 03dc 1000     		movs	r0, r2
 957 03de 9847     		blx	r3
 958              	.LVL2:
 150:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c ****     obj->draw(obj);
 959              		.loc 1 150 0
 960 03e0 7B68     		ldr	r3, [r7, #4]
 961 03e2 5B69     		ldr	r3, [r3, #20]
 962 03e4 7A68     		ldr	r2, [r7, #4]
 963 03e6 1000     		movs	r0, r2
 964 03e8 9847     		blx	r3
 965              	.LVL3:
 151:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v2\sprites.c **** }
 966              		.loc 1 151 0
 967 03ea C046     		nop
 968 03ec BD46     		mov	sp, r7
 969 03ee 02B0     		add	sp, sp, #8
 970              		@ sp needed
 971 03f0 80BD     		pop	{r7, pc}
 972              		.cfi_endproc
 973              	.LFE11:
 975              	.Letext0:
 976              		.file 2 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v
 977              		.file 3 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v
 978              		.file 4 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v
 979              		.file 5 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopy_v
