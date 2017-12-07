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
  15              		.comm	spoopy,36,4
  16              		.comm	portal,36,4
  17              		.data
  18              		.align	2
  21              	spoopy_bits:
  22 0000 3C       		.byte	60
  23 0001 3C       		.byte	60
  24 0002 43       		.byte	67
  25 0003 C2       		.byte	-62
  26 0004 9D       		.byte	-99
  27 0005 B9       		.byte	-71
  28 0006 0F       		.byte	15
  29 0007 D0       		.byte	-48
  30 0008 74       		.byte	116
  31 0009 2E       		.byte	46
  32 000a 4A       		.byte	74
  33 000b 52       		.byte	82
  34 000c 6A       		.byte	106
  35 000d 56       		.byte	86
  36 000e 7A       		.byte	122
  37 000f 5E       		.byte	94
  38 0010 84       		.byte	-124
  39 0011 21       		.byte	33
  40 0012 F8       		.byte	-8
  41 0013 1F       		.byte	31
  42 0014 30       		.byte	48
  43 0015 0C       		.byte	12
  44 0016 0C       		.byte	12
  45 0017 10       		.byte	16
  46 0018 12       		.byte	18
  47 0019 24       		.byte	36
  48 001a 16       		.byte	22
  49 001b 38       		.byte	56
  50 001c C8       		.byte	-56
  51 001d 11       		.byte	17
  52 001e 78       		.byte	120
  53 001f 1E       		.byte	30
  54              		.align	2
  57              	spoopy_right_bits:
  58 0020 F8       		.byte	-8
  59 0021 07       		.byte	7
  60 0022 06       		.byte	6
  61 0023 0F       		.byte	15
  62 0024 31       		.byte	49
  63 0025 10       		.byte	16
  64 0026 09       		.byte	9
  65 0027 20       		.byte	32
  66 0028 07       		.byte	7
  67 0029 27       		.byte	39
  68 002a 84       		.byte	-124
  69 002b 24       		.byte	36
  70 002c 84       		.byte	-124
  71 002d 26       		.byte	38
  72 002e 84       		.byte	-124
  73 002f 27       		.byte	39
  74 0030 08       		.byte	8
  75 0031 18       		.byte	24
  76 0032 F0       		.byte	-16
  77 0033 0F       		.byte	15
  78 0034 30       		.byte	48
  79 0035 0C       		.byte	12
  80 0036 0C       		.byte	12
  81 0037 18       		.byte	24
  82 0038 12       		.byte	18
  83 0039 18       		.byte	24
  84 003a 16       		.byte	22
  85 003b 08       		.byte	8
  86 003c C8       		.byte	-56
  87 003d 11       		.byte	17
  88 003e 78       		.byte	120
  89 003f 1E       		.byte	30
  90              		.align	2
  93              	spoopy_left_bits:
  94 0040 E0       		.byte	-32
  95 0041 1F       		.byte	31
  96 0042 F0       		.byte	-16
  97 0043 60       		.byte	96
  98 0044 08       		.byte	8
  99 0045 8C       		.byte	-116
 100 0046 04       		.byte	4
 101 0047 90       		.byte	-112
 102 0048 E4       		.byte	-28
 103 0049 E0       		.byte	-32
 104 004a 24       		.byte	36
 105 004b 21       		.byte	33
 106 004c 64       		.byte	100
 107 004d 21       		.byte	33
 108 004e E4       		.byte	-28
 109 004f 21       		.byte	33
 110 0050 18       		.byte	24
 111 0051 10       		.byte	16
 112 0052 F0       		.byte	-16
 113 0053 0F       		.byte	15
 114 0054 30       		.byte	48
 115 0055 0C       		.byte	12
 116 0056 18       		.byte	24
 117 0057 30       		.byte	48
 118 0058 18       		.byte	24
 119 0059 48       		.byte	72
 120 005a 10       		.byte	16
 121 005b 68       		.byte	104
 122 005c 88       		.byte	-120
 123 005d 13       		.byte	19
 124 005e 78       		.byte	120
 125 005f 1E       		.byte	30
 126              		.align	2
 129              	spoopy_back_bits:
 130 0060 3C       		.byte	60
 131 0061 3C       		.byte	60
 132 0062 43       		.byte	67
 133 0063 C2       		.byte	-62
 134 0064 9D       		.byte	-99
 135 0065 B9       		.byte	-71
 136 0066 0B       		.byte	11
 137 0067 F0       		.byte	-16
 138 0068 04       		.byte	4
 139 0069 20       		.byte	32
 140 006a 02       		.byte	2
 141 006b 40       		.byte	64
 142 006c 02       		.byte	2
 143 006d 40       		.byte	64
 144 006e 02       		.byte	2
 145 006f 40       		.byte	64
 146 0070 04       		.byte	4
 147 0071 20       		.byte	32
 148 0072 F8       		.byte	-8
 149 0073 1F       		.byte	31
 150 0074 10       		.byte	16
 151 0075 08       		.byte	8
 152 0076 0E       		.byte	14
 153 0077 30       		.byte	48
 154 0078 02       		.byte	2
 155 0079 48       		.byte	72
 156 007a 0C       		.byte	12
 157 007b 78       		.byte	120
 158 007c 88       		.byte	-120
 159 007d 13       		.byte	19
 160 007e 78       		.byte	120
 161 007f 1E       		.byte	30
 162              		.align	2
 165              	enemy_bits:
 166 0080 1E       		.byte	30
 167 0081 78       		.byte	120
 168 0082 FE       		.byte	-2
 169 0083 7F       		.byte	127
 170 0084 06       		.byte	6
 171 0085 60       		.byte	96
 172 0086 34       		.byte	52
 173 0087 2C       		.byte	44
 174 0088 68       		.byte	104
 175 0089 16       		.byte	22
 176 008a 48       		.byte	72
 177 008b 12       		.byte	18
 178 008c 30       		.byte	48
 179 008d 0C       		.byte	12
 180 008e E0       		.byte	-32
 181 008f 07       		.byte	7
 182 0090 60       		.byte	96
 183 0091 06       		.byte	6
 184 0092 B0       		.byte	-80
 185 0093 0D       		.byte	13
 186 0094 D0       		.byte	-48
 187 0095 0A       		.byte	10
 188 0096 68       		.byte	104
 189 0097 17       		.byte	23
 190 0098 9C       		.byte	-100
 191 0099 39       		.byte	57
 192 009a 6C       		.byte	108
 193 009b 36       		.byte	54
 194 009c F4       		.byte	-12
 195 009d 2F       		.byte	47
 196 009e 9C       		.byte	-100
 197 009f 39       		.byte	57
 198              		.align	2
 201              	portal_bits:
 202 00a0 55       		.byte	85
 203 00a1 55       		.byte	85
 204 00a2 AA       		.byte	-86
 205 00a3 AA       		.byte	-86
 206 00a4 55       		.byte	85
 207 00a5 55       		.byte	85
 208 00a6 AA       		.byte	-86
 209 00a7 AA       		.byte	-86
 210 00a8 55       		.byte	85
 211 00a9 55       		.byte	85
 212 00aa AA       		.byte	-86
 213 00ab AA       		.byte	-86
 214 00ac 55       		.byte	85
 215 00ad 55       		.byte	85
 216 00ae AA       		.byte	-86
 217 00af AA       		.byte	-86
 218 00b0 55       		.byte	85
 219 00b1 55       		.byte	85
 220 00b2 AA       		.byte	-86
 221 00b3 AA       		.byte	-86
 222 00b4 55       		.byte	85
 223 00b5 55       		.byte	85
 224 00b6 AA       		.byte	-86
 225 00b7 AA       		.byte	-86
 226 00b8 55       		.byte	85
 227 00b9 55       		.byte	85
 228 00ba AA       		.byte	-86
 229 00bb AA       		.byte	-86
 230 00bc 55       		.byte	85
 231 00bd 55       		.byte	85
 232 00be AA       		.byte	-86
 233 00bf AA       		.byte	-86
 234              		.align	2
 237              	end_portal_bits:
 238 00c0 55       		.byte	85
 239 00c1 55       		.byte	85
 240 00c2 AA       		.byte	-86
 241 00c3 AA       		.byte	-86
 242 00c4 55       		.byte	85
 243 00c5 75       		.byte	117
 244 00c6 A2       		.byte	-94
 245 00c7 DA       		.byte	-38
 246 00c8 55       		.byte	85
 247 00c9 75       		.byte	117
 248 00ca AA       		.byte	-86
 249 00cb AA       		.byte	-86
 250 00cc 55       		.byte	85
 251 00cd 55       		.byte	85
 252 00ce AA       		.byte	-86
 253 00cf AA       		.byte	-86
 254 00d0 55       		.byte	85
 255 00d1 55       		.byte	85
 256 00d2 AA       		.byte	-86
 257 00d3 AA       		.byte	-86
 258 00d4 55       		.byte	85
 259 00d5 55       		.byte	85
 260 00d6 AA       		.byte	-86
 261 00d7 8A       		.byte	-118
 262 00d8 5D       		.byte	93
 263 00d9 55       		.byte	85
 264 00da BE       		.byte	-66
 265 00db FA       		.byte	-6
 266 00dc 5D       		.byte	93
 267 00dd 55       		.byte	85
 268 00de AA       		.byte	-86
 269 00df 8A       		.byte	-118
 270              		.text
 271              		.align	1
 272              		.global	sprites_init
 273              		.syntax unified
 274              		.code	16
 275              		.thumb_func
 276              		.fpu softvfp
 278              	sprites_init:
 279              	.LFB0:
 280              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/sprites.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** #include "sprites.h"
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** void sprites_init(void){
 281              		.loc 1 3 0
 282              		.cfi_startproc
 283              		@ args = 0, pretend = 0, frame = 1120
 284              		@ frame_needed = 1, uses_anonymous_args = 0
 285 0000 80B5     		push	{r7, lr}
 286              		.cfi_def_cfa_offset 8
 287              		.cfi_offset 7, -8
 288              		.cfi_offset 14, -4
 289 0002 7C4F     		ldr	r7, .L2
 290 0004 BD44     		add	sp, sp, r7
 291              		.cfi_def_cfa_offset 1128
 292 0006 00AF     		add	r7, sp, #0
 293              		.cfi_def_cfa_register 7
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c ****     GEOMETRY spoopy_geometry = {
 294              		.loc 1 4 0
 295 0008 7B4B     		ldr	r3, .L2+4
 296 000a 8C22     		movs	r2, #140
 297 000c D200     		lsls	r2, r2, #3
 298 000e 9446     		mov	ip, r2
 299 0010 BC44     		add	ip, ip, r7
 300 0012 6344     		add	r3, r3, ip
 301 0014 1800     		movs	r0, r3
 302 0016 8323     		movs	r3, #131
 303 0018 9B00     		lsls	r3, r3, #2
 304 001a 1A00     		movs	r2, r3
 305 001c 0021     		movs	r1, #0
 306 001e FFF7FEFF 		bl	memset
 307 0022 754B     		ldr	r3, .L2+4
 308 0024 8C22     		movs	r2, #140
 309 0026 D200     		lsls	r2, r2, #3
 310 0028 9446     		mov	ip, r2
 311 002a BC44     		add	ip, ip, r7
 312 002c 6344     		add	r3, r3, ip
 313 002e 2022     		movs	r2, #32
 314 0030 1A60     		str	r2, [r3]
 315 0032 714B     		ldr	r3, .L2+4
 316 0034 8C22     		movs	r2, #140
 317 0036 D200     		lsls	r2, r2, #3
 318 0038 9446     		mov	ip, r2
 319 003a BC44     		add	ip, ip, r7
 320 003c 6344     		add	r3, r3, ip
 321 003e 1022     		movs	r2, #16
 322 0040 5A60     		str	r2, [r3, #4]
 323 0042 6D4B     		ldr	r3, .L2+4
 324 0044 8C22     		movs	r2, #140
 325 0046 D200     		lsls	r2, r2, #3
 326 0048 9446     		mov	ip, r2
 327 004a BC44     		add	ip, ip, r7
 328 004c 6344     		add	r3, r3, ip
 329 004e 1022     		movs	r2, #16
 330 0050 9A60     		str	r2, [r3, #8]
 331 0052 6A4B     		ldr	r3, .L2+8
 332 0054 DAB2     		uxtb	r2, r3
 333 0056 684B     		ldr	r3, .L2+4
 334 0058 8C21     		movs	r1, #140
 335 005a C900     		lsls	r1, r1, #3
 336 005c 8C46     		mov	ip, r1
 337 005e BC44     		add	ip, ip, r7
 338 0060 6344     		add	r3, r3, ip
 339 0062 1A73     		strb	r2, [r3, #12]
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		32, // numpoints
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		spoopy_width, spoopy_height, // Size x and y
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		// px
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		spoopy_bits
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	};
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	OBJECT spoopy = {
 340              		.loc 1 11 0
 341 0064 664B     		ldr	r3, .L2+12
 342 0066 8C22     		movs	r2, #140
 343 0068 D200     		lsls	r2, r2, #3
 344 006a 9446     		mov	ip, r2
 345 006c BC44     		add	ip, ip, r7
 346 006e 6344     		add	r3, r3, ip
 347 0070 9522     		movs	r2, #149
 348 0072 9200     		lsls	r2, r2, #2
 349 0074 BA18     		adds	r2, r7, r2
 350 0076 1A60     		str	r2, [r3]
 351 0078 614B     		ldr	r3, .L2+12
 352 007a 8C22     		movs	r2, #140
 353 007c D200     		lsls	r2, r2, #3
 354 007e 9446     		mov	ip, r2
 355 0080 BC44     		add	ip, ip, r7
 356 0082 6344     		add	r3, r3, ip
 357 0084 0022     		movs	r2, #0
 358 0086 5A60     		str	r2, [r3, #4]
 359 0088 5D4B     		ldr	r3, .L2+12
 360 008a 8C22     		movs	r2, #140
 361 008c D200     		lsls	r2, r2, #3
 362 008e 9446     		mov	ip, r2
 363 0090 BC44     		add	ip, ip, r7
 364 0092 6344     		add	r3, r3, ip
 365 0094 0022     		movs	r2, #0
 366 0096 9A60     		str	r2, [r3, #8]
 367 0098 594B     		ldr	r3, .L2+12
 368 009a 8C22     		movs	r2, #140
 369 009c D200     		lsls	r2, r2, #3
 370 009e 9446     		mov	ip, r2
 371 00a0 BC44     		add	ip, ip, r7
 372 00a2 6344     		add	r3, r3, ip
 373 00a4 0122     		movs	r2, #1
 374 00a6 DA60     		str	r2, [r3, #12]
 375 00a8 554B     		ldr	r3, .L2+12
 376 00aa 8C22     		movs	r2, #140
 377 00ac D200     		lsls	r2, r2, #3
 378 00ae 9446     		mov	ip, r2
 379 00b0 BC44     		add	ip, ip, r7
 380 00b2 6344     		add	r3, r3, ip
 381 00b4 0222     		movs	r2, #2
 382 00b6 1A61     		str	r2, [r3, #16]
 383 00b8 514B     		ldr	r3, .L2+12
 384 00ba 8C22     		movs	r2, #140
 385 00bc D200     		lsls	r2, r2, #3
 386 00be 9446     		mov	ip, r2
 387 00c0 BC44     		add	ip, ip, r7
 388 00c2 6344     		add	r3, r3, ip
 389 00c4 4F4A     		ldr	r2, .L2+16
 390 00c6 5A61     		str	r2, [r3, #20]
 391 00c8 4D4B     		ldr	r3, .L2+12
 392 00ca 8C22     		movs	r2, #140
 393 00cc D200     		lsls	r2, r2, #3
 394 00ce 9446     		mov	ip, r2
 395 00d0 BC44     		add	ip, ip, r7
 396 00d2 6344     		add	r3, r3, ip
 397 00d4 4C4A     		ldr	r2, .L2+20
 398 00d6 9A61     		str	r2, [r3, #24]
 399 00d8 494B     		ldr	r3, .L2+12
 400 00da 8C22     		movs	r2, #140
 401 00dc D200     		lsls	r2, r2, #3
 402 00de 9446     		mov	ip, r2
 403 00e0 BC44     		add	ip, ip, r7
 404 00e2 6344     		add	r3, r3, ip
 405 00e4 494A     		ldr	r2, .L2+24
 406 00e6 DA61     		str	r2, [r3, #28]
 407 00e8 454B     		ldr	r3, .L2+12
 408 00ea 8C22     		movs	r2, #140
 409 00ec D200     		lsls	r2, r2, #3
 410 00ee 9446     		mov	ip, r2
 411 00f0 BC44     		add	ip, ip, r7
 412 00f2 6344     		add	r3, r3, ip
 413 00f4 464A     		ldr	r2, .L2+28
 414 00f6 1A62     		str	r2, [r3, #32]
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		&spoopy_geometry,
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		0, 0,
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		1, 2,
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		draw_object,
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		clear_object,
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		move_object,
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		set_object_speed
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	};
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	GEOMETRY portal_geometry = {
 415              		.loc 1 21 0
 416 00f8 464B     		ldr	r3, .L2+32
 417 00fa 8C22     		movs	r2, #140
 418 00fc D200     		lsls	r2, r2, #3
 419 00fe 9446     		mov	ip, r2
 420 0100 BC44     		add	ip, ip, r7
 421 0102 6344     		add	r3, r3, ip
 422 0104 1800     		movs	r0, r3
 423 0106 8323     		movs	r3, #131
 424 0108 9B00     		lsls	r3, r3, #2
 425 010a 1A00     		movs	r2, r3
 426 010c 0021     		movs	r1, #0
 427 010e FFF7FEFF 		bl	memset
 428 0112 404B     		ldr	r3, .L2+32
 429 0114 8C22     		movs	r2, #140
 430 0116 D200     		lsls	r2, r2, #3
 431 0118 9446     		mov	ip, r2
 432 011a BC44     		add	ip, ip, r7
 433 011c 6344     		add	r3, r3, ip
 434 011e 2022     		movs	r2, #32
 435 0120 1A60     		str	r2, [r3]
 436 0122 3C4B     		ldr	r3, .L2+32
 437 0124 8C22     		movs	r2, #140
 438 0126 D200     		lsls	r2, r2, #3
 439 0128 9446     		mov	ip, r2
 440 012a BC44     		add	ip, ip, r7
 441 012c 6344     		add	r3, r3, ip
 442 012e 1022     		movs	r2, #16
 443 0130 5A60     		str	r2, [r3, #4]
 444 0132 384B     		ldr	r3, .L2+32
 445 0134 8C22     		movs	r2, #140
 446 0136 D200     		lsls	r2, r2, #3
 447 0138 9446     		mov	ip, r2
 448 013a BC44     		add	ip, ip, r7
 449 013c 6344     		add	r3, r3, ip
 450 013e 1022     		movs	r2, #16
 451 0140 9A60     		str	r2, [r3, #8]
 452 0142 354B     		ldr	r3, .L2+36
 453 0144 DAB2     		uxtb	r2, r3
 454 0146 334B     		ldr	r3, .L2+32
 455 0148 8C21     		movs	r1, #140
 456 014a C900     		lsls	r1, r1, #3
 457 014c 8C46     		mov	ip, r1
 458 014e BC44     		add	ip, ip, r7
 459 0150 6344     		add	r3, r3, ip
 460 0152 1A73     		strb	r2, [r3, #12]
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		32,
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		portal_width, portal_height,
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		portal_bits
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	};
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	OBJECT portal = {
 461              		.loc 1 27 0
 462 0154 274B     		ldr	r3, .L2
 463 0156 8C22     		movs	r2, #140
 464 0158 D200     		lsls	r2, r2, #3
 465 015a 9446     		mov	ip, r2
 466 015c BC44     		add	ip, ip, r7
 467 015e 6344     		add	r3, r3, ip
 468 0160 2422     		movs	r2, #36
 469 0162 BA18     		adds	r2, r7, r2
 470 0164 1A60     		str	r2, [r3]
 471 0166 234B     		ldr	r3, .L2
 472 0168 8C22     		movs	r2, #140
 473 016a D200     		lsls	r2, r2, #3
 474 016c 9446     		mov	ip, r2
 475 016e BC44     		add	ip, ip, r7
 476 0170 6344     		add	r3, r3, ip
 477 0172 0022     		movs	r2, #0
 478 0174 5A60     		str	r2, [r3, #4]
 479 0176 1F4B     		ldr	r3, .L2
 480 0178 8C22     		movs	r2, #140
 481 017a D200     		lsls	r2, r2, #3
 482 017c 9446     		mov	ip, r2
 483 017e BC44     		add	ip, ip, r7
 484 0180 6344     		add	r3, r3, ip
 485 0182 0022     		movs	r2, #0
 486 0184 9A60     		str	r2, [r3, #8]
 487 0186 1B4B     		ldr	r3, .L2
 488 0188 8C22     		movs	r2, #140
 489 018a D200     		lsls	r2, r2, #3
 490 018c 9446     		mov	ip, r2
 491 018e BC44     		add	ip, ip, r7
 492 0190 6344     		add	r3, r3, ip
 493 0192 0122     		movs	r2, #1
 494 0194 DA60     		str	r2, [r3, #12]
 495 0196 174B     		ldr	r3, .L2
 496 0198 8C22     		movs	r2, #140
 497 019a D200     		lsls	r2, r2, #3
 498 019c 9446     		mov	ip, r2
 499 019e BC44     		add	ip, ip, r7
 500 01a0 6344     		add	r3, r3, ip
 501 01a2 0122     		movs	r2, #1
 502 01a4 1A61     		str	r2, [r3, #16]
 503 01a6 134B     		ldr	r3, .L2
 504 01a8 8C22     		movs	r2, #140
 505 01aa D200     		lsls	r2, r2, #3
 506 01ac 9446     		mov	ip, r2
 507 01ae BC44     		add	ip, ip, r7
 508 01b0 6344     		add	r3, r3, ip
 509 01b2 144A     		ldr	r2, .L2+16
 510 01b4 5A61     		str	r2, [r3, #20]
 511 01b6 0F4B     		ldr	r3, .L2
 512 01b8 8C22     		movs	r2, #140
 513 01ba D200     		lsls	r2, r2, #3
 514 01bc 9446     		mov	ip, r2
 515 01be BC44     		add	ip, ip, r7
 516 01c0 6344     		add	r3, r3, ip
 517 01c2 114A     		ldr	r2, .L2+20
 518 01c4 9A61     		str	r2, [r3, #24]
 519 01c6 0B4B     		ldr	r3, .L2
 520 01c8 8C22     		movs	r2, #140
 521 01ca D200     		lsls	r2, r2, #3
 522 01cc 9446     		mov	ip, r2
 523 01ce BC44     		add	ip, ip, r7
 524 01d0 6344     		add	r3, r3, ip
 525 01d2 0E4A     		ldr	r2, .L2+24
 526 01d4 DA61     		str	r2, [r3, #28]
 527 01d6 074B     		ldr	r3, .L2
 528 01d8 8C22     		movs	r2, #140
 529 01da D200     		lsls	r2, r2, #3
 530 01dc 9446     		mov	ip, r2
 531 01de BC44     		add	ip, ip, r7
 532 01e0 6344     		add	r3, r3, ip
 533 01e2 0B4A     		ldr	r2, .L2+28
 534 01e4 1A62     		str	r2, [r3, #32]
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		&portal_geometry,
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		0, 0,
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		1, 1,
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		draw_object,
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		clear_object,
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		move_object,
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 		set_object_speed
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** 	};
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\sprites.c **** }...
 535              		.loc 1 36 0
 536 01e6 C046     		nop
 537 01e8 BD46     		mov	sp, r7
 538 01ea 8C23     		movs	r3, #140
 539 01ec DB00     		lsls	r3, r3, #3
 540 01ee 9D44     		add	sp, sp, r3
 541              		@ sp needed
 542 01f0 80BD     		pop	{r7, pc}
 543              	.L3:
 544 01f2 C046     		.align	2
 545              	.L2:
 546 01f4 A0FBFFFF 		.word	-1120
 547 01f8 F4FDFFFF 		.word	-524
 548 01fc 00000000 		.word	spoopy_bits
 549 0200 D0FDFFFF 		.word	-560
 550 0204 00000000 		.word	draw_object
 551 0208 00000000 		.word	clear_object
 552 020c 00000000 		.word	move_object
 553 0210 00000000 		.word	set_object_speed
 554 0214 C4FBFFFF 		.word	-1084
 555 0218 A0000000 		.word	portal_bits
 556              		.cfi_endproc
 557              	.LFE0:
 559              	.Letext0:
 560              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/graphicdisplay.h
 561              		.file 3 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/sprites.h"
