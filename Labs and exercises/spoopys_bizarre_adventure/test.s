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
  11              		.file	"asciidisplay.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	asciidisplay_init
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	asciidisplay_init:
  23              	.LFB0:
  24              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/asciidisplay.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** #include "asciidisplay.h"
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void asciidisplay_init(void){    
  25              		.loc 1 3 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 00AF     		add	r7, sp, #0
  34              		.cfi_def_cfa_register 7
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Port E -> output
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     GPIO_E.moder = 0x55555555;
  35              		.loc 1 5 0
  36 0004 0C4B     		ldr	r3, .L2
  37 0006 0D4A     		ldr	r2, .L2+4
  38 0008 1A60     		str	r2, [r3]
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // ***DISPLAY INIT***    
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // 2 rows, characters are 5x8 dots
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_command(0x38, 39, 1);
  39              		.loc 1 9 0
  40 000a 0122     		movs	r2, #1
  41 000c 2721     		movs	r1, #39
  42 000e 3820     		movs	r0, #56
  43 0010 FFF7FEFF 		bl	ascii_command
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Turn on display, turn on cursor, cursor not blinking
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_command(0xE, 39, 1);
  44              		.loc 1 11 0
  45 0014 0122     		movs	r2, #1
  46 0016 2721     		movs	r1, #39
  47 0018 0E20     		movs	r0, #14
  48 001a FFF7FEFF 		bl	ascii_command
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Clear display
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_command(0x1, 2, 0);
  49              		.loc 1 13 0
  50 001e 0022     		movs	r2, #0
  51 0020 0221     		movs	r1, #2
  52 0022 0120     		movs	r0, #1
  53 0024 FFF7FEFF 		bl	ascii_command
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Increment mode, no shift
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_command(0x6, 39, 1);
  54              		.loc 1 15 0
  55 0028 0122     		movs	r2, #1
  56 002a 2721     		movs	r1, #39
  57 002c 0620     		movs	r0, #6
  58 002e FFF7FEFF 		bl	ascii_command
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
  59              		.loc 1 16 0
  60 0032 C046     		nop
  61 0034 BD46     		mov	sp, r7
  62              		@ sp needed
  63 0036 80BD     		pop	{r7, pc}
  64              	.L3:
  65              		.align	2
  66              	.L2:
  67 0038 00100240 		.word	1073876992
  68 003c 55555555 		.word	1431655765
  69              		.cfi_endproc
  70              	.LFE0:
  72              		.align	1
  73              		.global	ascii_ctrl_bit_set
  74              		.syntax unified
  75              		.code	16
  76              		.thumb_func
  77              		.fpu softvfp
  79              	ascii_ctrl_bit_set:
  80              	.LFB1:
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void ascii_ctrl_bit_set(unsigned char x){
  81              		.loc 1 18 0
  82              		.cfi_startproc
  83              		@ args = 0, pretend = 0, frame = 16
  84              		@ frame_needed = 1, uses_anonymous_args = 0
  85 0040 80B5     		push	{r7, lr}
  86              		.cfi_def_cfa_offset 8
  87              		.cfi_offset 7, -8
  88              		.cfi_offset 14, -4
  89 0042 84B0     		sub	sp, sp, #16
  90              		.cfi_def_cfa_offset 24
  91 0044 00AF     		add	r7, sp, #0
  92              		.cfi_def_cfa_register 7
  93 0046 0200     		movs	r2, r0
  94 0048 FB1D     		adds	r3, r7, #7
  95 004a 1A70     		strb	r2, [r3]
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Set bits that are 1 in x to 1, leave rest be
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     unsigned char port_val = GPIO_E.odrLow;
  96              		.loc 1 20 0
  97 004c 0C4A     		ldr	r2, .L5
  98 004e 0F23     		movs	r3, #15
  99 0050 FB18     		adds	r3, r7, r3
 100 0052 127D     		ldrb	r2, [r2, #20]
 101 0054 1A70     		strb	r2, [r3]
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     port_val |= x;
 102              		.loc 1 21 0
 103 0056 0F23     		movs	r3, #15
 104 0058 FB18     		adds	r3, r7, r3
 105 005a 0F22     		movs	r2, #15
 106 005c B918     		adds	r1, r7, r2
 107 005e FA1D     		adds	r2, r7, #7
 108 0060 0978     		ldrb	r1, [r1]
 109 0062 1278     		ldrb	r2, [r2]
 110 0064 0A43     		orrs	r2, r1
 111 0066 1A70     		strb	r2, [r3]
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     GPIO_E.odrLow = port_val | B_SELECT;
 112              		.loc 1 22 0
 113 0068 054A     		ldr	r2, .L5
 114 006a 0F23     		movs	r3, #15
 115 006c FB18     		adds	r3, r7, r3
 116 006e 1B78     		ldrb	r3, [r3]
 117 0070 0421     		movs	r1, #4
 118 0072 0B43     		orrs	r3, r1
 119 0074 DBB2     		uxtb	r3, r3
 120 0076 1375     		strb	r3, [r2, #20]
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 121              		.loc 1 23 0
 122 0078 C046     		nop
 123 007a BD46     		mov	sp, r7
 124 007c 04B0     		add	sp, sp, #16
 125              		@ sp needed
 126 007e 80BD     		pop	{r7, pc}
 127              	.L6:
 128              		.align	2
 129              	.L5:
 130 0080 00100240 		.word	1073876992
 131              		.cfi_endproc
 132              	.LFE1:
 134              		.align	1
 135              		.global	ascii_ctrl_bit_clear
 136              		.syntax unified
 137              		.code	16
 138              		.thumb_func
 139              		.fpu softvfp
 141              	ascii_ctrl_bit_clear:
 142              	.LFB2:
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void ascii_ctrl_bit_clear(unsigned char x){
 143              		.loc 1 25 0
 144              		.cfi_startproc
 145              		@ args = 0, pretend = 0, frame = 16
 146              		@ frame_needed = 1, uses_anonymous_args = 0
 147 0084 80B5     		push	{r7, lr}
 148              		.cfi_def_cfa_offset 8
 149              		.cfi_offset 7, -8
 150              		.cfi_offset 14, -4
 151 0086 84B0     		sub	sp, sp, #16
 152              		.cfi_def_cfa_offset 24
 153 0088 00AF     		add	r7, sp, #0
 154              		.cfi_def_cfa_register 7
 155 008a 0200     		movs	r2, r0
 156 008c FB1D     		adds	r3, r7, #7
 157 008e 1A70     		strb	r2, [r3]
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Set any bits that are 0 in x to 0, leave rest as they were
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     unsigned char port_val = GPIO_E.odrLow;
 158              		.loc 1 27 0
 159 0090 0D4A     		ldr	r2, .L8
 160 0092 0F23     		movs	r3, #15
 161 0094 FB18     		adds	r3, r7, r3
 162 0096 127D     		ldrb	r2, [r2, #20]
 163 0098 1A70     		strb	r2, [r3]
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     port_val &= x ^ 0xFF;
 164              		.loc 1 28 0
 165 009a FB1D     		adds	r3, r7, #7
 166 009c 1B78     		ldrb	r3, [r3]
 167 009e DB43     		mvns	r3, r3
 168 00a0 DAB2     		uxtb	r2, r3
 169 00a2 0F23     		movs	r3, #15
 170 00a4 FB18     		adds	r3, r7, r3
 171 00a6 0F21     		movs	r1, #15
 172 00a8 7918     		adds	r1, r7, r1
 173 00aa 0978     		ldrb	r1, [r1]
 174 00ac 0A40     		ands	r2, r1
 175 00ae 1A70     		strb	r2, [r3]
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     GPIO_E.odrLow = port_val | B_SELECT;
 176              		.loc 1 29 0
 177 00b0 054A     		ldr	r2, .L8
 178 00b2 0F23     		movs	r3, #15
 179 00b4 FB18     		adds	r3, r7, r3
 180 00b6 1B78     		ldrb	r3, [r3]
 181 00b8 0421     		movs	r1, #4
 182 00ba 0B43     		orrs	r3, r1
 183 00bc DBB2     		uxtb	r3, r3
 184 00be 1375     		strb	r3, [r2, #20]
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     //delay_250ns();
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 185              		.loc 1 31 0
 186 00c0 C046     		nop
 187 00c2 BD46     		mov	sp, r7
 188 00c4 04B0     		add	sp, sp, #16
 189              		@ sp needed
 190 00c6 80BD     		pop	{r7, pc}
 191              	.L9:
 192              		.align	2
 193              	.L8:
 194 00c8 00100240 		.word	1073876992
 195              		.cfi_endproc
 196              	.LFE2:
 198              		.align	1
 199              		.global	ascii_write_cmd
 200              		.syntax unified
 201              		.code	16
 202              		.thumb_func
 203              		.fpu softvfp
 205              	ascii_write_cmd:
 206              	.LFB3:
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void ascii_write_cmd(unsigned char command){
 207              		.loc 1 33 0
 208              		.cfi_startproc
 209              		@ args = 0, pretend = 0, frame = 8
 210              		@ frame_needed = 1, uses_anonymous_args = 0
 211 00cc 80B5     		push	{r7, lr}
 212              		.cfi_def_cfa_offset 8
 213              		.cfi_offset 7, -8
 214              		.cfi_offset 14, -4
 215 00ce 82B0     		sub	sp, sp, #8
 216              		.cfi_def_cfa_offset 16
 217 00d0 00AF     		add	r7, sp, #0
 218              		.cfi_def_cfa_register 7
 219 00d2 0200     		movs	r2, r0
 220 00d4 FB1D     		adds	r3, r7, #7
 221 00d6 1A70     		strb	r2, [r3]
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Prepare display for sending command
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_clear(B_RS);
 222              		.loc 1 35 0
 223 00d8 0120     		movs	r0, #1
 224 00da FFF7FEFF 		bl	ascii_ctrl_bit_clear
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_clear( B_RW);
 225              		.loc 1 36 0
 226 00de 0220     		movs	r0, #2
 227 00e0 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Write command
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_write_controller(command);
 228              		.loc 1 39 0
 229 00e4 FB1D     		adds	r3, r7, #7
 230 00e6 1B78     		ldrb	r3, [r3]
 231 00e8 1800     		movs	r0, r3
 232 00ea FFF7FEFF 		bl	ascii_write_controller
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 233              		.loc 1 40 0
 234 00ee C046     		nop
 235 00f0 BD46     		mov	sp, r7
 236 00f2 02B0     		add	sp, sp, #8
 237              		@ sp needed
 238 00f4 80BD     		pop	{r7, pc}
 239              		.cfi_endproc
 240              	.LFE3:
 242              		.align	1
 243              		.global	ascii_write_data
 244              		.syntax unified
 245              		.code	16
 246              		.thumb_func
 247              		.fpu softvfp
 249              	ascii_write_data:
 250              	.LFB4:
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void ascii_write_data(unsigned char data){
 251              		.loc 1 42 0
 252              		.cfi_startproc
 253              		@ args = 0, pretend = 0, frame = 8
 254              		@ frame_needed = 1, uses_anonymous_args = 0
 255 00f6 80B5     		push	{r7, lr}
 256              		.cfi_def_cfa_offset 8
 257              		.cfi_offset 7, -8
 258              		.cfi_offset 14, -4
 259 00f8 82B0     		sub	sp, sp, #8
 260              		.cfi_def_cfa_offset 16
 261 00fa 00AF     		add	r7, sp, #0
 262              		.cfi_def_cfa_register 7
 263 00fc 0200     		movs	r2, r0
 264 00fe FB1D     		adds	r3, r7, #7
 265 0100 1A70     		strb	r2, [r3]
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Prepare display for writing data
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_set(B_RS);
 266              		.loc 1 44 0
 267 0102 0120     		movs	r0, #1
 268 0104 FFF7FEFF 		bl	ascii_ctrl_bit_set
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_clear(B_RW);
 269              		.loc 1 45 0
 270 0108 0220     		movs	r0, #2
 271 010a FFF7FEFF 		bl	ascii_ctrl_bit_clear
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Write data
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_write_controller(data);
 272              		.loc 1 48 0
 273 010e FB1D     		adds	r3, r7, #7
 274 0110 1B78     		ldrb	r3, [r3]
 275 0112 1800     		movs	r0, r3
 276 0114 FFF7FEFF 		bl	ascii_write_controller
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 277              		.loc 1 49 0
 278 0118 C046     		nop
 279 011a BD46     		mov	sp, r7
 280 011c 02B0     		add	sp, sp, #8
 281              		@ sp needed
 282 011e 80BD     		pop	{r7, pc}
 283              		.cfi_endproc
 284              	.LFE4:
 286              		.align	1
 287              		.global	ascii_read_data
 288              		.syntax unified
 289              		.code	16
 290              		.thumb_func
 291              		.fpu softvfp
 293              	ascii_read_data:
 294              	.LFB5:
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** unsigned char ascii_read_data(void){
 295              		.loc 1 51 0
 296              		.cfi_startproc
 297              		@ args = 0, pretend = 0, frame = 8
 298              		@ frame_needed = 1, uses_anonymous_args = 0
 299 0120 90B5     		push	{r4, r7, lr}
 300              		.cfi_def_cfa_offset 12
 301              		.cfi_offset 4, -12
 302              		.cfi_offset 7, -8
 303              		.cfi_offset 14, -4
 304 0122 83B0     		sub	sp, sp, #12
 305              		.cfi_def_cfa_offset 24
 306 0124 00AF     		add	r7, sp, #0
 307              		.cfi_def_cfa_register 7
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     unsigned char return_value;
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Port E 8-15 -> input
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     GPIO_E.moder &= 0x0000FFFF;
 308              		.loc 1 54 0
 309 0126 0E4B     		ldr	r3, .L14
 310 0128 0D4A     		ldr	r2, .L14
 311 012a 1268     		ldr	r2, [r2]
 312 012c 1204     		lsls	r2, r2, #16
 313 012e 120C     		lsrs	r2, r2, #16
 314 0130 1A60     		str	r2, [r3]
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Prepare display for reading data
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_set(B_RW);
 315              		.loc 1 57 0
 316 0132 0220     		movs	r0, #2
 317 0134 FFF7FEFF 		bl	ascii_ctrl_bit_set
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_set(B_RS);
 318              		.loc 1 58 0
 319 0138 0120     		movs	r0, #1
 320 013a FFF7FEFF 		bl	ascii_ctrl_bit_set
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     return_value = ascii_read_controller();
 321              		.loc 1 60 0
 322 013e FC1D     		adds	r4, r7, #7
 323 0140 FFF7FEFF 		bl	ascii_read_controller
 324 0144 0300     		movs	r3, r0
 325 0146 2370     		strb	r3, [r4]
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Port E 8-15 -> output
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     GPIO_E.moder |= 0x55550000;
 326              		.loc 1 63 0
 327 0148 054B     		ldr	r3, .L14
 328 014a 054A     		ldr	r2, .L14
 329 014c 1268     		ldr	r2, [r2]
 330 014e 0549     		ldr	r1, .L14+4
 331 0150 0A43     		orrs	r2, r1
 332 0152 1A60     		str	r2, [r3]
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     return return_value;
 333              		.loc 1 65 0
 334 0154 FB1D     		adds	r3, r7, #7
 335 0156 1B78     		ldrb	r3, [r3]
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 336              		.loc 1 66 0
 337 0158 1800     		movs	r0, r3
 338 015a BD46     		mov	sp, r7
 339 015c 03B0     		add	sp, sp, #12
 340              		@ sp needed
 341 015e 90BD     		pop	{r4, r7, pc}
 342              	.L15:
 343              		.align	2
 344              	.L14:
 345 0160 00100240 		.word	1073876992
 346 0164 00005555 		.word	1431633920
 347              		.cfi_endproc
 348              	.LFE5:
 350              		.align	1
 351              		.global	ascii_read_status
 352              		.syntax unified
 353              		.code	16
 354              		.thumb_func
 355              		.fpu softvfp
 357              	ascii_read_status:
 358              	.LFB6:
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
  68:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** unsigned char ascii_read_status(void){
 359              		.loc 1 68 0
 360              		.cfi_startproc
 361              		@ args = 0, pretend = 0, frame = 8
 362              		@ frame_needed = 1, uses_anonymous_args = 0
 363 0168 90B5     		push	{r4, r7, lr}
 364              		.cfi_def_cfa_offset 12
 365              		.cfi_offset 4, -12
 366              		.cfi_offset 7, -8
 367              		.cfi_offset 14, -4
 368 016a 83B0     		sub	sp, sp, #12
 369              		.cfi_def_cfa_offset 24
 370 016c 00AF     		add	r7, sp, #0
 371              		.cfi_def_cfa_register 7
  69:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     unsigned char return_value;
  70:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Port E 8-15 -> input
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     GPIO_E.moder &= 0x0000FFFF;
 372              		.loc 1 71 0
 373 016e 0E4B     		ldr	r3, .L18
 374 0170 0D4A     		ldr	r2, .L18
 375 0172 1268     		ldr	r2, [r2]
 376 0174 1204     		lsls	r2, r2, #16
 377 0176 120C     		lsrs	r2, r2, #16
 378 0178 1A60     		str	r2, [r3]
  72:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  73:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Prepare display for reading status and address
  74:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_clear(B_RS);
 379              		.loc 1 74 0
 380 017a 0120     		movs	r0, #1
 381 017c FFF7FEFF 		bl	ascii_ctrl_bit_clear
  75:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_set(B_RW);
 382              		.loc 1 75 0
 383 0180 0220     		movs	r0, #2
 384 0182 FFF7FEFF 		bl	ascii_ctrl_bit_set
  76:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Read values from display
  78:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     return_value = ascii_read_controller();
 385              		.loc 1 78 0
 386 0186 FC1D     		adds	r4, r7, #7
 387 0188 FFF7FEFF 		bl	ascii_read_controller
 388 018c 0300     		movs	r3, r0
 389 018e 2370     		strb	r3, [r4]
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  80:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Port E 8-15 -> output
  81:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     GPIO_E.moder |= 0x55550000;
 390              		.loc 1 81 0
 391 0190 054B     		ldr	r3, .L18
 392 0192 054A     		ldr	r2, .L18
 393 0194 1268     		ldr	r2, [r2]
 394 0196 0549     		ldr	r1, .L18+4
 395 0198 0A43     		orrs	r2, r1
 396 019a 1A60     		str	r2, [r3]
  82:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  83:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     return return_value;
 397              		.loc 1 83 0
 398 019c FB1D     		adds	r3, r7, #7
 399 019e 1B78     		ldrb	r3, [r3]
  84:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 400              		.loc 1 84 0
 401 01a0 1800     		movs	r0, r3
 402 01a2 BD46     		mov	sp, r7
 403 01a4 03B0     		add	sp, sp, #12
 404              		@ sp needed
 405 01a6 90BD     		pop	{r4, r7, pc}
 406              	.L19:
 407              		.align	2
 408              	.L18:
 409 01a8 00100240 		.word	1073876992
 410 01ac 00005555 		.word	1431633920
 411              		.cfi_endproc
 412              	.LFE6:
 414              		.align	1
 415              		.global	ascii_write_controller
 416              		.syntax unified
 417              		.code	16
 418              		.thumb_func
 419              		.fpu softvfp
 421              	ascii_write_controller:
 422              	.LFB7:
  85:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
  86:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void ascii_write_controller(unsigned char byte){
 423              		.loc 1 86 0
 424              		.cfi_startproc
 425              		@ args = 0, pretend = 0, frame = 8
 426              		@ frame_needed = 1, uses_anonymous_args = 0
 427 01b0 80B5     		push	{r7, lr}
 428              		.cfi_def_cfa_offset 8
 429              		.cfi_offset 7, -8
 430              		.cfi_offset 14, -4
 431 01b2 82B0     		sub	sp, sp, #8
 432              		.cfi_def_cfa_offset 16
 433 01b4 00AF     		add	r7, sp, #0
 434              		.cfi_def_cfa_register 7
 435 01b6 0200     		movs	r2, r0
 436 01b8 FB1D     		adds	r3, r7, #7
 437 01ba 1A70     		strb	r2, [r3]
  87:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Set enable flag to 1
  88:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_set(B_E);
 438              		.loc 1 88 0
 439 01bc 4020     		movs	r0, #64
 440 01be FFF7FEFF 		bl	ascii_ctrl_bit_set
  89:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  90:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Set data register values
  91:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     GPIO_E.odrHigh = byte;
 441              		.loc 1 91 0
 442 01c2 064A     		ldr	r2, .L21
 443 01c4 FB1D     		adds	r3, r7, #7
 444 01c6 1B78     		ldrb	r3, [r3]
 445 01c8 5375     		strb	r3, [r2, #21]
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  93:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Wait for 230ns (here at least 250, hope this should still work)
  94:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     delay_250ns();
 446              		.loc 1 94 0
 447 01ca FFF7FEFF 		bl	delay_250ns
  95:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
  96:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Set enable flag to 0
  97:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_clear(B_E);
 448              		.loc 1 97 0
 449 01ce 4020     		movs	r0, #64
 450 01d0 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  98:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 451              		.loc 1 98 0
 452 01d4 C046     		nop
 453 01d6 BD46     		mov	sp, r7
 454 01d8 02B0     		add	sp, sp, #8
 455              		@ sp needed
 456 01da 80BD     		pop	{r7, pc}
 457              	.L22:
 458              		.align	2
 459              	.L21:
 460 01dc 00100240 		.word	1073876992
 461              		.cfi_endproc
 462              	.LFE7:
 464              		.align	1
 465              		.global	ascii_read_controller
 466              		.syntax unified
 467              		.code	16
 468              		.thumb_func
 469              		.fpu softvfp
 471              	ascii_read_controller:
 472              	.LFB8:
  99:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
 100:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** unsigned char ascii_read_controller(void){
 473              		.loc 1 100 0
 474              		.cfi_startproc
 475              		@ args = 0, pretend = 0, frame = 8
 476              		@ frame_needed = 1, uses_anonymous_args = 0
 477 01e0 80B5     		push	{r7, lr}
 478              		.cfi_def_cfa_offset 8
 479              		.cfi_offset 7, -8
 480              		.cfi_offset 14, -4
 481 01e2 82B0     		sub	sp, sp, #8
 482              		.cfi_def_cfa_offset 16
 483 01e4 00AF     		add	r7, sp, #0
 484              		.cfi_def_cfa_register 7
 101:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     unsigned char return_value;
 102:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 103:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Set enable flag to 1
 104:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_set(B_E);
 485              		.loc 1 104 0
 486 01e6 4020     		movs	r0, #64
 487 01e8 FFF7FEFF 		bl	ascii_ctrl_bit_set
 105:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 106:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Wait for at least 360ns, here at least 500
 107:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     delay_500ns();
 488              		.loc 1 107 0
 489 01ec FFF7FEFF 		bl	delay_500ns
 108:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 109:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Read data register
 110:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     return_value = GPIO_E.idrHigh;
 490              		.loc 1 110 0
 491 01f0 064A     		ldr	r2, .L25
 492 01f2 FB1D     		adds	r3, r7, #7
 493 01f4 527C     		ldrb	r2, [r2, #17]
 494 01f6 1A70     		strb	r2, [r3]
 111:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 112:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Set enable flag to 0
 113:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_clear(B_E);
 495              		.loc 1 113 0
 496 01f8 4020     		movs	r0, #64
 497 01fa FFF7FEFF 		bl	ascii_ctrl_bit_clear
 114:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 115:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     return return_value;
 498              		.loc 1 115 0
 499 01fe FB1D     		adds	r3, r7, #7
 500 0200 1B78     		ldrb	r3, [r3]
 116:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 501              		.loc 1 116 0
 502 0202 1800     		movs	r0, r3
 503 0204 BD46     		mov	sp, r7
 504 0206 02B0     		add	sp, sp, #8
 505              		@ sp needed
 506 0208 80BD     		pop	{r7, pc}
 507              	.L26:
 508 020a C046     		.align	2
 509              	.L25:
 510 020c 00100240 		.word	1073876992
 511              		.cfi_endproc
 512              	.LFE8:
 514              		.align	1
 515              		.global	ascii_command
 516              		.syntax unified
 517              		.code	16
 518              		.thumb_func
 519              		.fpu softvfp
 521              	ascii_command:
 522              	.LFB9:
 117:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
 118:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void ascii_command(unsigned char command, unsigned int post_command_delay, unsigned short us){    
 523              		.loc 1 118 0
 524              		.cfi_startproc
 525              		@ args = 0, pretend = 0, frame = 8
 526              		@ frame_needed = 1, uses_anonymous_args = 0
 527 0210 80B5     		push	{r7, lr}
 528              		.cfi_def_cfa_offset 8
 529              		.cfi_offset 7, -8
 530              		.cfi_offset 14, -4
 531 0212 82B0     		sub	sp, sp, #8
 532              		.cfi_def_cfa_offset 16
 533 0214 00AF     		add	r7, sp, #0
 534              		.cfi_def_cfa_register 7
 535 0216 3960     		str	r1, [r7]
 536 0218 1100     		movs	r1, r2
 537 021a FB1D     		adds	r3, r7, #7
 538 021c 021C     		adds	r2, r0, #0
 539 021e 1A70     		strb	r2, [r3]
 540 0220 3B1D     		adds	r3, r7, #4
 541 0222 0A1C     		adds	r2, r1, #0
 542 0224 1A80     		strh	r2, [r3]
 119:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     while((ascii_read_status() & 0x80) != 0);
 543              		.loc 1 120 0
 544 0226 C046     		nop
 545              	.L28:
 546              		.loc 1 120 0 is_stmt 0 discriminator 1
 547 0228 FFF7FEFF 		bl	ascii_read_status
 548 022c 0300     		movs	r3, r0
 549 022e 5BB2     		sxtb	r3, r3
 550 0230 002B     		cmp	r3, #0
 551 0232 F9DB     		blt	.L28
 121:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     delay_mikro(8);
 552              		.loc 1 121 0 is_stmt 1
 553 0234 0820     		movs	r0, #8
 554 0236 FFF7FEFF 		bl	delay_mikro
 122:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 123:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Send command
 124:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_write_cmd(command);
 555              		.loc 1 124 0
 556 023a FB1D     		adds	r3, r7, #7
 557 023c 1B78     		ldrb	r3, [r3]
 558 023e 1800     		movs	r0, r3
 559 0240 FFF7FEFF 		bl	ascii_write_cmd
 125:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 126:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Wait for the entered amount of time
 127:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     if(us == 1){
 560              		.loc 1 127 0
 561 0244 3B1D     		adds	r3, r7, #4
 562 0246 1B88     		ldrh	r3, [r3]
 563 0248 012B     		cmp	r3, #1
 564 024a 04D1     		bne	.L29
 128:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****         delay_mikro(post_command_delay);
 565              		.loc 1 128 0
 566 024c 3B68     		ldr	r3, [r7]
 567 024e 1800     		movs	r0, r3
 568 0250 FFF7FEFF 		bl	delay_mikro
 129:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     } else {
 130:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****         delay_milli(post_command_delay);
 131:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     }
 132:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 569              		.loc 1 132 0
 570 0254 03E0     		b	.L31
 571              	.L29:
 130:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     }
 572              		.loc 1 130 0
 573 0256 3B68     		ldr	r3, [r7]
 574 0258 1800     		movs	r0, r3
 575 025a FFF7FEFF 		bl	delay_milli
 576              	.L31:
 577              		.loc 1 132 0
 578 025e C046     		nop
 579 0260 BD46     		mov	sp, r7
 580 0262 02B0     		add	sp, sp, #8
 581              		@ sp needed
 582 0264 80BD     		pop	{r7, pc}
 583              		.cfi_endproc
 584              	.LFE9:
 586              		.align	1
 587              		.global	ascii_write_char
 588              		.syntax unified
 589              		.code	16
 590              		.thumb_func
 591              		.fpu softvfp
 593              	ascii_write_char:
 594              	.LFB10:
 133:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
 134:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void ascii_write_char(unsigned char character){
 595              		.loc 1 134 0
 596              		.cfi_startproc
 597              		@ args = 0, pretend = 0, frame = 8
 598              		@ frame_needed = 1, uses_anonymous_args = 0
 599 0266 80B5     		push	{r7, lr}
 600              		.cfi_def_cfa_offset 8
 601              		.cfi_offset 7, -8
 602              		.cfi_offset 14, -4
 603 0268 82B0     		sub	sp, sp, #8
 604              		.cfi_def_cfa_offset 16
 605 026a 00AF     		add	r7, sp, #0
 606              		.cfi_def_cfa_register 7
 607 026c 0200     		movs	r2, r0
 608 026e FB1D     		adds	r3, r7, #7
 609 0270 1A70     		strb	r2, [r3]
 135:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Prepare to check if display ready
 136:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_set(B_RW);
 610              		.loc 1 136 0
 611 0272 0220     		movs	r0, #2
 612 0274 FFF7FEFF 		bl	ascii_ctrl_bit_set
 137:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_ctrl_bit_clear(B_RS);
 613              		.loc 1 137 0
 614 0278 0120     		movs	r0, #1
 615 027a FFF7FEFF 		bl	ascii_ctrl_bit_clear
 138:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 139:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Wait until MSB in data register is 0, which means that the display ready to receive a comman
 140:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     while((ascii_read_status() & 0x80) != 0);
 616              		.loc 1 140 0
 617 027e C046     		nop
 618              	.L33:
 619              		.loc 1 140 0 is_stmt 0 discriminator 1
 620 0280 FFF7FEFF 		bl	ascii_read_status
 621 0284 0300     		movs	r3, r0
 622 0286 5BB2     		sxtb	r3, r3
 623 0288 002B     		cmp	r3, #0
 624 028a F9DB     		blt	.L33
 141:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     delay_mikro(8);
 625              		.loc 1 141 0 is_stmt 1
 626 028c 0820     		movs	r0, #8
 627 028e FFF7FEFF 		bl	delay_mikro
 142:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 143:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Write character do display
 144:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_write_data(character);
 628              		.loc 1 144 0
 629 0292 FB1D     		adds	r3, r7, #7
 630 0294 1B78     		ldrb	r3, [r3]
 631 0296 1800     		movs	r0, r3
 632 0298 FFF7FEFF 		bl	ascii_write_data
 145:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 146:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Delay for 43us
 147:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     delay_mikro(43);
 633              		.loc 1 147 0
 634 029c 2B20     		movs	r0, #43
 635 029e FFF7FEFF 		bl	delay_mikro
 148:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 636              		.loc 1 148 0
 637 02a2 C046     		nop
 638 02a4 BD46     		mov	sp, r7
 639 02a6 02B0     		add	sp, sp, #8
 640              		@ sp needed
 641 02a8 80BD     		pop	{r7, pc}
 642              		.cfi_endproc
 643              	.LFE10:
 645              		.align	1
 646              		.global	gotoxy
 647              		.syntax unified
 648              		.code	16
 649              		.thumb_func
 650              		.fpu softvfp
 652              	gotoxy:
 653              	.LFB11:
 149:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
 150:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void gotoxy(unsigned int row, unsigned int column){
 654              		.loc 1 150 0
 655              		.cfi_startproc
 656              		@ args = 0, pretend = 0, frame = 16
 657              		@ frame_needed = 1, uses_anonymous_args = 0
 658 02aa 80B5     		push	{r7, lr}
 659              		.cfi_def_cfa_offset 8
 660              		.cfi_offset 7, -8
 661              		.cfi_offset 14, -4
 662 02ac 84B0     		sub	sp, sp, #16
 663              		.cfi_def_cfa_offset 24
 664 02ae 00AF     		add	r7, sp, #0
 665              		.cfi_def_cfa_register 7
 666 02b0 7860     		str	r0, [r7, #4]
 667 02b2 3960     		str	r1, [r7]
 151:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Make sure row not out of bounds
 152:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     if(row < 1 || row > 20){
 668              		.loc 1 152 0
 669 02b4 7B68     		ldr	r3, [r7, #4]
 670 02b6 002B     		cmp	r3, #0
 671 02b8 25D0     		beq	.L41
 672              		.loc 1 152 0 is_stmt 0 discriminator 1
 673 02ba 7B68     		ldr	r3, [r7, #4]
 674 02bc 142B     		cmp	r3, #20
 675 02be 22D8     		bhi	.L41
 153:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****         return;
 154:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     }
 155:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Make sure column not out of bounds
 156:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     if(column < 1 || column > 2){
 676              		.loc 1 156 0 is_stmt 1
 677 02c0 3B68     		ldr	r3, [r7]
 678 02c2 002B     		cmp	r3, #0
 679 02c4 21D0     		beq	.L42
 680              		.loc 1 156 0 is_stmt 0 discriminator 1
 681 02c6 3B68     		ldr	r3, [r7]
 682 02c8 022B     		cmp	r3, #2
 683 02ca 1ED8     		bhi	.L42
 157:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****         return;
 158:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     }
 159:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 160:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Set address to the correct location
 161:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     unsigned char address = row - 1;
 684              		.loc 1 161 0 is_stmt 1
 685 02cc 7B68     		ldr	r3, [r7, #4]
 686 02ce DAB2     		uxtb	r2, r3
 687 02d0 0F23     		movs	r3, #15
 688 02d2 FB18     		adds	r3, r7, r3
 689 02d4 013A     		subs	r2, r2, #1
 690 02d6 1A70     		strb	r2, [r3]
 162:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     if(column == 2){
 691              		.loc 1 162 0
 692 02d8 3B68     		ldr	r3, [r7]
 693 02da 022B     		cmp	r3, #2
 694 02dc 06D1     		bne	.L40
 163:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****         address += 0x40;
 695              		.loc 1 163 0
 696 02de 0F23     		movs	r3, #15
 697 02e0 FB18     		adds	r3, r7, r3
 698 02e2 0F22     		movs	r2, #15
 699 02e4 BA18     		adds	r2, r7, r2
 700 02e6 1278     		ldrb	r2, [r2]
 701 02e8 4032     		adds	r2, r2, #64
 702 02ea 1A70     		strb	r2, [r3]
 703              	.L40:
 164:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     }
 165:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     
 166:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Send command to mark correct spot
 167:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     ascii_command(0x80 | address, 39, 1);
 704              		.loc 1 167 0
 705 02ec 0F23     		movs	r3, #15
 706 02ee FB18     		adds	r3, r7, r3
 707 02f0 1B78     		ldrb	r3, [r3]
 708 02f2 8022     		movs	r2, #128
 709 02f4 5242     		rsbs	r2, r2, #0
 710 02f6 1343     		orrs	r3, r2
 711 02f8 DBB2     		uxtb	r3, r3
 712 02fa 0122     		movs	r2, #1
 713 02fc 2721     		movs	r1, #39
 714 02fe 1800     		movs	r0, r3
 715 0300 FFF7FEFF 		bl	ascii_command
 716 0304 02E0     		b	.L34
 717              	.L41:
 153:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     }
 718              		.loc 1 153 0
 719 0306 C046     		nop
 720 0308 00E0     		b	.L34
 721              	.L42:
 157:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     }
 722              		.loc 1 157 0
 723 030a C046     		nop
 724              	.L34:
 168:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 725              		.loc 1 168 0
 726 030c BD46     		mov	sp, r7
 727 030e 04B0     		add	sp, sp, #16
 728              		@ sp needed
 729 0310 80BD     		pop	{r7, pc}
 730              		.cfi_endproc
 731              	.LFE11:
 733              		.align	1
 734              		.global	ascii_write_string
 735              		.syntax unified
 736              		.code	16
 737              		.thumb_func
 738              		.fpu softvfp
 740              	ascii_write_string:
 741              	.LFB12:
 169:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** 
 170:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** void ascii_write_string(char *s){
 742              		.loc 1 170 0
 743              		.cfi_startproc
 744              		@ args = 0, pretend = 0, frame = 8
 745              		@ frame_needed = 1, uses_anonymous_args = 0
 746 0312 80B5     		push	{r7, lr}
 747              		.cfi_def_cfa_offset 8
 748              		.cfi_offset 7, -8
 749              		.cfi_offset 14, -4
 750 0314 82B0     		sub	sp, sp, #8
 751              		.cfi_def_cfa_offset 16
 752 0316 00AF     		add	r7, sp, #0
 753              		.cfi_def_cfa_register 7
 754 0318 7860     		str	r0, [r7, #4]
 171:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     // Write each character onto the display until the finishing character is reached
 172:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     while(*s != 0){
 755              		.loc 1 172 0
 756 031a 06E0     		b	.L44
 757              	.L45:
 173:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****         ascii_write_char(*s++);
 758              		.loc 1 173 0
 759 031c 7B68     		ldr	r3, [r7, #4]
 760 031e 5A1C     		adds	r2, r3, #1
 761 0320 7A60     		str	r2, [r7, #4]
 762 0322 1B78     		ldrb	r3, [r3]
 763 0324 1800     		movs	r0, r3
 764 0326 FFF7FEFF 		bl	ascii_write_char
 765              	.L44:
 172:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****         ascii_write_char(*s++);
 766              		.loc 1 172 0
 767 032a 7B68     		ldr	r3, [r7, #4]
 768 032c 1B78     		ldrb	r3, [r3]
 769 032e 002B     		cmp	r3, #0
 770 0330 F4D1     		bne	.L45
 174:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c ****     }
 175:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\asciidisplay.c **** }
 771              		.loc 1 175 0
 772 0332 C046     		nop
 773 0334 BD46     		mov	sp, r7
 774 0336 02B0     		add	sp, sp, #8
 775              		@ sp needed
 776 0338 80BD     		pop	{r7, pc}
 777              		.cfi_endproc
 778              	.LFE12:
 780              	.Letext0:
 781              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/gpio.h"
