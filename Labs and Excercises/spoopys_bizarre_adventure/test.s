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
  55              	exit_bits:
  56 0020 FF       		.byte	-1
  57 0021 FF       		.byte	-1
  58 0022 81       		.byte	-127
  59 0023 81       		.byte	-127
  60 0024 BD       		.byte	-67
  61 0025 BD       		.byte	-67
  62 0026 A5       		.byte	-91
  63 0027 A5       		.byte	-91
  64 0028 A5       		.byte	-91
  65 0029 A5       		.byte	-91
  66 002a A5       		.byte	-91
  67 002b A5       		.byte	-91
  68 002c A5       		.byte	-91
  69 002d A5       		.byte	-91
  70 002e A5       		.byte	-91
  71 002f A5       		.byte	-91
  72 0030 A5       		.byte	-91
  73 0031 A5       		.byte	-91
  74 0032 A5       		.byte	-91
  75 0033 A5       		.byte	-91
  76 0034 A5       		.byte	-91
  77 0035 A5       		.byte	-91
  78 0036 A5       		.byte	-91
  79 0037 A5       		.byte	-91
  80 0038 A5       		.byte	-91
  81 0039 A5       		.byte	-91
  82 003a BD       		.byte	-67
  83 003b BD       		.byte	-67
  84 003c 81       		.byte	-127
  85 003d 81       		.byte	-127
  86 003e FF       		.byte	-1
  87 003f FF       		.byte	-1
  88              		.align	2
  91              	enemy_bits:
  92 0040 1E       		.byte	30
  93 0041 78       		.byte	120
  94 0042 FE       		.byte	-2
  95 0043 7F       		.byte	127
  96 0044 06       		.byte	6
  97 0045 60       		.byte	96
  98 0046 34       		.byte	52
  99 0047 2C       		.byte	44
 100 0048 68       		.byte	104
 101 0049 16       		.byte	22
 102 004a 48       		.byte	72
 103 004b 12       		.byte	18
 104 004c 30       		.byte	48
 105 004d 0C       		.byte	12
 106 004e E0       		.byte	-32
 107 004f 07       		.byte	7
 108 0050 60       		.byte	96
 109 0051 06       		.byte	6
 110 0052 B0       		.byte	-80
 111 0053 0D       		.byte	13
 112 0054 D0       		.byte	-48
 113 0055 0A       		.byte	10
 114 0056 68       		.byte	104
 115 0057 17       		.byte	23
 116 0058 9C       		.byte	-100
 117 0059 39       		.byte	57
 118 005a 6C       		.byte	108
 119 005b 36       		.byte	54
 120 005c F4       		.byte	-12
 121 005d 2F       		.byte	47
 122 005e 9C       		.byte	-100
 123 005f 39       		.byte	57
 124              		.section	.start_section,"ax",%progbits
 125              		.align	1
 126              		.global	startup
 127              		.syntax unified
 128              		.code	16
 129              		.thumb_func
 130              		.fpu softvfp
 132              	startup:
 133              	.LFB0:
 134              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure/startup.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** /*
   2:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****  * 	startup.c
   3:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****  *
   4:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****  */
   5:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #include "gpio.h"
   6:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #include "syscfg.h"
   7:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #include "exti.h"
   8:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #include "sprites.h"
   9:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  10:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** //#define INTERRUPT_TARGET_PINS 0x0F00
  11:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define INTERRUPT_TARGET_PINS ((1 << 5) + (1 << 6))
  12:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define NVIC 0xE000E100
  13:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define NVIC_ISER0 *((volatile unsigned int *) NVIC)
  14:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define NVIC_ISER1 *((volatile unsigned int *) (NVIC + 0x004))
  15:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  16:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define SCREEN_WIDTH 128
  17:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define SCREEN_HEIGHT 64
  18:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  19:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define GRID_WIDTH 16
  20:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define GRID_HEIGHT 16
  21:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  22:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define EMPTY_SPACE 0
  23:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** //#define SPOOPY_SPACE 1
  24:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define EXIT_SPACE 2
  25:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define ENEMY_SPACE 3
  26:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  27:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define MAP_WIDTH (SCREEN_WIDTH / GRID_WIDTH) /*Default: 8*/
  28:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #define MAP_HEIGHT (SCREEN_HEIGHT / GRID_HEIGHT) /*Default: 4*/
  29:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  30:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  31:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void app_init(void);
  32:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void keyboard_interrupt_handler(void);
  33:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void position_checking(PSPRITE_OBJECT);
  34:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void init_map_grid(PSPRITE_OBJECT, PSPRITE_OBJECT, PSPRITE_OBJECT);
  35:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void update_enemy_position(PSPRITE_OBJECT);
  36:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  37:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** unsigned char keyboard_val = 0;
  38:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** unsigned char map_grid[MAP_WIDTH][MAP_HEIGHT];
  39:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  40:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** unsigned char win_state = 0;
  41:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  42:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** unsigned char start_message1[] = "Spoopy's";
  43:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** unsigned char start_message2[] = "bizarre adventure";
  44:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  45:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** unsigned char game_over_message[] = "Game over!";
  46:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** unsigned char win_message[] = "You win!";
  47:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** unsigned char loss_message[] = "You lose!";
  48:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  49:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void startup(void){
 135              		.loc 1 49 0
 136              		.cfi_startproc
 137              		@ Naked Function: prologue and epilogue provided by programmer.
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 1, uses_anonymous_args = 0
  50:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** __asm volatile(
 140              		.loc 1 50 0
 141              		.syntax divided
 142              	@ 50 "C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure/startup.c" 1
 143 0000 0248     		 LDR R0,=0x2001C000
 144 0002 8546     	 MOV SP,R0
 145 0004 FFF7FEFF 	 BL main
 146 0008 FEE7     	_exit: B .
 147              	
 148              	@ 0 "" 2
  51:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  52:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	" MOV SP,R0\n"
  53:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	" BL main\n"				/* call main */
  54:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	"_exit: B .\n"				/* never return */
  55:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	) ;
  56:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** }
 149              		.loc 1 56 0
 150              		.thumb
 151              		.syntax unified
 152 000a C046     		nop
 153              		.cfi_endproc
 154              	.LFE0:
 156              		.global	keyboard_val
 157              		.bss
 160              	keyboard_val:
 161 0000 00       		.space	1
 162              		.comm	map_grid,32,4
 163              		.global	win_state
 166              	win_state:
 167 0001 00       		.space	1
 168              		.global	start_message1
 169              		.data
 170              		.align	2
 173              	start_message1:
 174 0060 53706F6F 		.ascii	"Spoopy's\000"
 174      70792773 
 174      00
 175              		.global	start_message2
 176 0069 000000   		.align	2
 179              	start_message2:
 180 006c 62697A61 		.ascii	"bizarre adventure\000"
 180      72726520 
 180      61647665 
 180      6E747572 
 180      6500
 181              		.global	game_over_message
 182 007e 0000     		.align	2
 185              	game_over_message:
 186 0080 47616D65 		.ascii	"Game over!\000"
 186      206F7665 
 186      722100
 187              		.global	win_message
 188 008b 00       		.align	2
 191              	win_message:
 192 008c 596F7520 		.ascii	"You win!\000"
 192      77696E21 
 192      00
 193              		.global	loss_message
 194 0095 000000   		.align	2
 197              	loss_message:
 198 0098 596F7520 		.ascii	"You lose!\000"
 198      6C6F7365 
 198      2100
 199              		.text
 200              		.align	1
 201              		.global	main
 202              		.syntax unified
 203              		.code	16
 204              		.thumb_func
 205              		.fpu softvfp
 207              	main:
 208              	.LFB1:
  57:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
  58:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void main(void){
 209              		.loc 1 58 0
 210              		.cfi_startproc
 211              		@ args = 0, pretend = 0, frame = 152
 212              		@ frame_needed = 1, uses_anonymous_args = 0
 213 0000 80B5     		push	{r7, lr}
 214              		.cfi_def_cfa_offset 8
 215              		.cfi_offset 7, -8
 216              		.cfi_offset 14, -4
 217 0002 A6B0     		sub	sp, sp, #152
 218              		.cfi_def_cfa_offset 160
 219 0004 00AF     		add	r7, sp, #0
 220              		.cfi_def_cfa_register 7
  59:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     app_init();
 221              		.loc 1 59 0
 222 0006 FFF7FEFF 		bl	app_init
  60:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
  61:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     graphic_clear_screen();
 223              		.loc 1 61 0
 224 000a FFF7FEFF 		bl	graphic_clear_screen
  62:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     ascii_clear_screen();
 225              		.loc 1 62 0
 226 000e FFF7FEFF 		bl	ascii_clear_screen
  63:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 227              		.loc 1 63 0
 228 0012 1821     		movs	r1, #24
 229 0014 3F20     		movs	r0, #63
 230 0016 FFF7FEFF 		bl	graphic_write_command
  64:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 231              		.loc 1 64 0
 232 001a 1821     		movs	r1, #24
 233 001c C020     		movs	r0, #192
 234 001e FFF7FEFF 		bl	graphic_write_command
  65:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
  66:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 1);
 235              		.loc 1 66 0
 236 0022 0121     		movs	r1, #1
 237 0024 0120     		movs	r0, #1
 238 0026 FFF7FEFF 		bl	gotoxy
  67:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(start_message1);
 239              		.loc 1 67 0
 240 002a D44B     		ldr	r3, .L18
 241 002c 1800     		movs	r0, r3
 242 002e FFF7FEFF 		bl	ascii_write_string
  68:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 2);
 243              		.loc 1 68 0
 244 0032 0221     		movs	r1, #2
 245 0034 0120     		movs	r0, #1
 246 0036 FFF7FEFF 		bl	gotoxy
  69:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(start_message2);
 247              		.loc 1 69 0
 248 003a D14B     		ldr	r3, .L18+4
 249 003c 1800     		movs	r0, r3
 250 003e FFF7FEFF 		bl	ascii_write_string
  70:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
  71:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Initiate objects
  72:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     SPRITE spoopy_sprite = {
 251              		.loc 1 72 0
 252 0042 8023     		movs	r3, #128
 253 0044 FB18     		adds	r3, r7, r3
 254 0046 0022     		movs	r2, #0
 255 0048 1A70     		strb	r2, [r3]
 256 004a 8023     		movs	r3, #128
 257 004c FB18     		adds	r3, r7, r3
 258 004e 0022     		movs	r2, #0
 259 0050 5A70     		strb	r2, [r3, #1]
 260 0052 8023     		movs	r3, #128
 261 0054 FB18     		adds	r3, r7, r3
 262 0056 0022     		movs	r2, #0
 263 0058 5A60     		str	r2, [r3, #4]
  73:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         0, // Init values, disregard these as these will be set later
  74:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         0,
  75:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         {0}
  76:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     };
  77:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     load_sprite(&spoopy_sprite, spoop_bits, spoop_width, spoop_height);
 264              		.loc 1 77 0
 265 005a CA49     		ldr	r1, .L18+8
 266 005c 8023     		movs	r3, #128
 267 005e F818     		adds	r0, r7, r3
 268 0060 1023     		movs	r3, #16
 269 0062 1022     		movs	r2, #16
 270 0064 FFF7FEFF 		bl	load_sprite
  78:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****      // Initiate Spoopy
  79:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     SPRITE_OBJECT spoopy = {
 271              		.loc 1 79 0
 272 0068 5C23     		movs	r3, #92
 273 006a FB18     		adds	r3, r7, r3
 274 006c 8022     		movs	r2, #128
 275 006e BA18     		adds	r2, r7, r2
 276 0070 1A60     		str	r2, [r3]
 277 0072 5C23     		movs	r3, #92
 278 0074 FB18     		adds	r3, r7, r3
 279 0076 0022     		movs	r2, #0
 280 0078 5A60     		str	r2, [r3, #4]
 281 007a 5C23     		movs	r3, #92
 282 007c FB18     		adds	r3, r7, r3
 283 007e 0022     		movs	r2, #0
 284 0080 9A60     		str	r2, [r3, #8]
 285 0082 5C23     		movs	r3, #92
 286 0084 FB18     		adds	r3, r7, r3
 287 0086 FA22     		movs	r2, #250
 288 0088 5200     		lsls	r2, r2, #1
 289 008a DA60     		str	r2, [r3, #12]
 290 008c 5C23     		movs	r3, #92
 291 008e FB18     		adds	r3, r7, r3
 292 0090 FA22     		movs	r2, #250
 293 0092 5200     		lsls	r2, r2, #1
 294 0094 1A61     		str	r2, [r3, #16]
 295 0096 5C23     		movs	r3, #92
 296 0098 FB18     		adds	r3, r7, r3
 297 009a BB4A     		ldr	r2, .L18+12
 298 009c 5A61     		str	r2, [r3, #20]
 299 009e 5C23     		movs	r3, #92
 300 00a0 FB18     		adds	r3, r7, r3
 301 00a2 BA4A     		ldr	r2, .L18+16
 302 00a4 9A61     		str	r2, [r3, #24]
 303 00a6 5C23     		movs	r3, #92
 304 00a8 FB18     		adds	r3, r7, r3
 305 00aa B94A     		ldr	r2, .L18+20
 306 00ac DA61     		str	r2, [r3, #28]
 307 00ae 5C23     		movs	r3, #92
 308 00b0 FB18     		adds	r3, r7, r3
 309 00b2 B84A     		ldr	r2, .L18+24
 310 00b4 1A62     		str	r2, [r3, #32]
  80:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         &spoopy_sprite, // sprite
  81:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         0, 0, // Set velocity, x & y
  82:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         500, 500, // Set position, x & y
  83:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         draw_sprite_object,
  84:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         clear_sprite_object,
  85:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         move_sprite_object,
  86:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         set_sprite_object_speed,
  87:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     };
  88:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE_OBJECT spoopy_pointer = &spoopy;
 311              		.loc 1 88 0
 312 00b6 5C23     		movs	r3, #92
 313 00b8 FB18     		adds	r3, r7, r3
 314 00ba 9422     		movs	r2, #148
 315 00bc BA18     		adds	r2, r7, r2
 316 00be 1360     		str	r3, [r2]
  89:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
  90:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     SPRITE exit_sprite = {
 317              		.loc 1 90 0
 318 00c0 5423     		movs	r3, #84
 319 00c2 FB18     		adds	r3, r7, r3
 320 00c4 0022     		movs	r2, #0
 321 00c6 1A70     		strb	r2, [r3]
 322 00c8 5423     		movs	r3, #84
 323 00ca FB18     		adds	r3, r7, r3
 324 00cc 0022     		movs	r2, #0
 325 00ce 5A70     		strb	r2, [r3, #1]
 326 00d0 5423     		movs	r3, #84
 327 00d2 FB18     		adds	r3, r7, r3
 328 00d4 0022     		movs	r2, #0
 329 00d6 5A60     		str	r2, [r3, #4]
  91:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         0,
  92:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         0,
  93:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         {0}
  94:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     };
  95:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE exit_sprite_pointer = &exit_sprite;
 330              		.loc 1 95 0
 331 00d8 5423     		movs	r3, #84
 332 00da FB18     		adds	r3, r7, r3
 333 00dc 9022     		movs	r2, #144
 334 00de BA18     		adds	r2, r7, r2
 335 00e0 1360     		str	r3, [r2]
  96:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     load_sprite(exit_sprite_pointer, exit_bits, exit_width, exit_height);
 336              		.loc 1 96 0
 337 00e2 AD49     		ldr	r1, .L18+28
 338 00e4 9023     		movs	r3, #144
 339 00e6 FB18     		adds	r3, r7, r3
 340 00e8 1868     		ldr	r0, [r3]
 341 00ea 1023     		movs	r3, #16
 342 00ec 1022     		movs	r2, #16
 343 00ee FFF7FEFF 		bl	load_sprite
  97:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
  98:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     SPRITE_OBJECT exit = {
 344              		.loc 1 98 0
 345 00f2 3023     		movs	r3, #48
 346 00f4 FB18     		adds	r3, r7, r3
 347 00f6 9022     		movs	r2, #144
 348 00f8 BA18     		adds	r2, r7, r2
 349 00fa 1268     		ldr	r2, [r2]
 350 00fc 1A60     		str	r2, [r3]
 351 00fe 3023     		movs	r3, #48
 352 0100 FB18     		adds	r3, r7, r3
 353 0102 0022     		movs	r2, #0
 354 0104 5A60     		str	r2, [r3, #4]
 355 0106 3023     		movs	r3, #48
 356 0108 FB18     		adds	r3, r7, r3
 357 010a 0022     		movs	r2, #0
 358 010c 9A60     		str	r2, [r3, #8]
 359 010e 3023     		movs	r3, #48
 360 0110 FB18     		adds	r3, r7, r3
 361 0112 FA22     		movs	r2, #250
 362 0114 5200     		lsls	r2, r2, #1
 363 0116 DA60     		str	r2, [r3, #12]
 364 0118 3023     		movs	r3, #48
 365 011a FB18     		adds	r3, r7, r3
 366 011c FA22     		movs	r2, #250
 367 011e 5200     		lsls	r2, r2, #1
 368 0120 1A61     		str	r2, [r3, #16]
 369 0122 3023     		movs	r3, #48
 370 0124 FB18     		adds	r3, r7, r3
 371 0126 984A     		ldr	r2, .L18+12
 372 0128 5A61     		str	r2, [r3, #20]
 373 012a 3023     		movs	r3, #48
 374 012c FB18     		adds	r3, r7, r3
 375 012e 974A     		ldr	r2, .L18+16
 376 0130 9A61     		str	r2, [r3, #24]
 377 0132 3023     		movs	r3, #48
 378 0134 FB18     		adds	r3, r7, r3
 379 0136 994A     		ldr	r2, .L18+32
 380 0138 DA61     		str	r2, [r3, #28]
 381 013a 3023     		movs	r3, #48
 382 013c FB18     		adds	r3, r7, r3
 383 013e 984A     		ldr	r2, .L18+36
 384 0140 1A62     		str	r2, [r3, #32]
  99:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         exit_sprite_pointer,
 100:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         0, 0,
 101:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         500, 500,
 102:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         draw_sprite_object,
 103:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         clear_sprite_object,
 104:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         dummy_function1,
 105:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         dummy_function2
 106:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     };
 107:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE_OBJECT exit_pointer = &exit;
 385              		.loc 1 107 0
 386 0142 3023     		movs	r3, #48
 387 0144 FB18     		adds	r3, r7, r3
 388 0146 8C22     		movs	r2, #140
 389 0148 BA18     		adds	r2, r7, r2
 390 014a 1360     		str	r3, [r2]
 108:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 109:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     SPRITE enemy_sprite = {
 391              		.loc 1 109 0
 392 014c 2823     		movs	r3, #40
 393 014e FB18     		adds	r3, r7, r3
 394 0150 0022     		movs	r2, #0
 395 0152 1A70     		strb	r2, [r3]
 396 0154 2823     		movs	r3, #40
 397 0156 FB18     		adds	r3, r7, r3
 398 0158 0022     		movs	r2, #0
 399 015a 5A70     		strb	r2, [r3, #1]
 400 015c 2823     		movs	r3, #40
 401 015e FB18     		adds	r3, r7, r3
 402 0160 0022     		movs	r2, #0
 403 0162 5A60     		str	r2, [r3, #4]
 110:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         0,
 111:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         0,
 112:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         {0}
 113:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     };
 114:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     load_sprite(&enemy_sprite, enemy_bits, enemy_width, enemy_height);
 404              		.loc 1 114 0
 405 0164 8F49     		ldr	r1, .L18+40
 406 0166 2823     		movs	r3, #40
 407 0168 F818     		adds	r0, r7, r3
 408 016a 1023     		movs	r3, #16
 409 016c 1022     		movs	r2, #16
 410 016e FFF7FEFF 		bl	load_sprite
 115:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 116:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     SPRITE_OBJECT enemy = {
 411              		.loc 1 116 0
 412 0172 3B1D     		adds	r3, r7, #4
 413 0174 2822     		movs	r2, #40
 414 0176 BA18     		adds	r2, r7, r2
 415 0178 1A60     		str	r2, [r3]
 416 017a 3B1D     		adds	r3, r7, #4
 417 017c 0022     		movs	r2, #0
 418 017e 5A60     		str	r2, [r3, #4]
 419 0180 3B1D     		adds	r3, r7, #4
 420 0182 0022     		movs	r2, #0
 421 0184 9A60     		str	r2, [r3, #8]
 422 0186 3B1D     		adds	r3, r7, #4
 423 0188 FA22     		movs	r2, #250
 424 018a 5200     		lsls	r2, r2, #1
 425 018c DA60     		str	r2, [r3, #12]
 426 018e 3B1D     		adds	r3, r7, #4
 427 0190 FA22     		movs	r2, #250
 428 0192 5200     		lsls	r2, r2, #1
 429 0194 1A61     		str	r2, [r3, #16]
 430 0196 3B1D     		adds	r3, r7, #4
 431 0198 7B4A     		ldr	r2, .L18+12
 432 019a 5A61     		str	r2, [r3, #20]
 433 019c 3B1D     		adds	r3, r7, #4
 434 019e 7B4A     		ldr	r2, .L18+16
 435 01a0 9A61     		str	r2, [r3, #24]
 436 01a2 3B1D     		adds	r3, r7, #4
 437 01a4 7A4A     		ldr	r2, .L18+20
 438 01a6 DA61     		str	r2, [r3, #28]
 439 01a8 3B1D     		adds	r3, r7, #4
 440 01aa 7A4A     		ldr	r2, .L18+24
 441 01ac 1A62     		str	r2, [r3, #32]
 117:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         &enemy_sprite,
 118:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         0, 0,
 119:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         500, 500,
 120:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         draw_sprite_object,
 121:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         clear_sprite_object,
 122:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         move_sprite_object,
 123:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         set_sprite_object_speed
 124:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     };
 125:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE_OBJECT enemy_pointer = &enemy;
 442              		.loc 1 125 0
 443 01ae 3B1D     		adds	r3, r7, #4
 444 01b0 8822     		movs	r2, #136
 445 01b2 BA18     		adds	r2, r7, r2
 446 01b4 1360     		str	r3, [r2]
 126:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 127:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     init_map_grid(spoopy_pointer, exit_pointer, enemy_pointer);
 447              		.loc 1 127 0
 448 01b6 8823     		movs	r3, #136
 449 01b8 FB18     		adds	r3, r7, r3
 450 01ba 1A68     		ldr	r2, [r3]
 451 01bc 8C23     		movs	r3, #140
 452 01be FB18     		adds	r3, r7, r3
 453 01c0 1968     		ldr	r1, [r3]
 454 01c2 9423     		movs	r3, #148
 455 01c4 FB18     		adds	r3, r7, r3
 456 01c6 1B68     		ldr	r3, [r3]
 457 01c8 1800     		movs	r0, r3
 458 01ca FFF7FEFF 		bl	init_map_grid
 128:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	
 129:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Draw sprites
 130:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->draw(spoopy_pointer);
 459              		.loc 1 130 0
 460 01ce 9423     		movs	r3, #148
 461 01d0 FB18     		adds	r3, r7, r3
 462 01d2 1B68     		ldr	r3, [r3]
 463 01d4 5B69     		ldr	r3, [r3, #20]
 464 01d6 9422     		movs	r2, #148
 465 01d8 BA18     		adds	r2, r7, r2
 466 01da 1268     		ldr	r2, [r2]
 467 01dc 1000     		movs	r0, r2
 468 01de 9847     		blx	r3
 469              	.LVL0:
 131:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     exit_pointer->draw(exit_pointer);
 470              		.loc 1 131 0
 471 01e0 8C23     		movs	r3, #140
 472 01e2 FB18     		adds	r3, r7, r3
 473 01e4 1B68     		ldr	r3, [r3]
 474 01e6 5B69     		ldr	r3, [r3, #20]
 475 01e8 8C22     		movs	r2, #140
 476 01ea BA18     		adds	r2, r7, r2
 477 01ec 1268     		ldr	r2, [r2]
 478 01ee 1000     		movs	r0, r2
 479 01f0 9847     		blx	r3
 480              	.LVL1:
 132:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 133:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 481              		.loc 1 133 0
 482 01f2 1821     		movs	r1, #24
 483 01f4 3F20     		movs	r0, #63
 484 01f6 FFF7FEFF 		bl	graphic_write_command
 134:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 485              		.loc 1 134 0
 486 01fa 1821     		movs	r1, #24
 487 01fc C020     		movs	r0, #192
 488 01fe FFF7FEFF 		bl	graphic_write_command
 135:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****  
 136:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 137:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     GPIO_D.odrHigh = 0xF0;
 489              		.loc 1 137 0
 490 0202 694B     		ldr	r3, .L18+44
 491 0204 F022     		movs	r2, #240
 492 0206 5A75     		strb	r2, [r3, #21]
 493              	.L12:
 494              	.LBB2:
 138:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	while(1){
 139:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         GPIO_D.odrLow = GPIO_D.idrHigh;
 495              		.loc 1 139 0
 496 0208 674B     		ldr	r3, .L18+44
 497 020a 674A     		ldr	r2, .L18+44
 498 020c 527C     		ldrb	r2, [r2, #17]
 499 020e D2B2     		uxtb	r2, r2
 500 0210 1A75     		strb	r2, [r3, #20]
 140:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 		keyboard_val = keyb();
 501              		.loc 1 140 0
 502 0212 FFF7FEFF 		bl	keyb
 503 0216 0300     		movs	r3, r0
 504 0218 DAB2     		uxtb	r2, r3
 505 021a 644B     		ldr	r3, .L18+48
 506 021c 1A70     		strb	r2, [r3]
 141:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 		switch (keyboard_val){
 507              		.loc 1 141 0
 508 021e 634B     		ldr	r3, .L18+48
 509 0220 1B78     		ldrb	r3, [r3]
 510 0222 042B     		cmp	r3, #4
 511 0224 13D0     		beq	.L4
 512 0226 02DC     		bgt	.L5
 513 0228 022B     		cmp	r3, #2
 514 022a 1CD0     		beq	.L6
 515 022c 32E0     		b	.L3
 516              	.L5:
 517 022e 062B     		cmp	r3, #6
 518 0230 02D0     		beq	.L7
 519 0232 082B     		cmp	r3, #8
 520 0234 23D0     		beq	.L8
 521 0236 2DE0     		b	.L3
 522              	.L7:
 142:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 			case 6: spoopy_pointer->set_speed(spoopy_pointer, 1, 0); break;
 523              		.loc 1 142 0
 524 0238 9423     		movs	r3, #148
 525 023a FB18     		adds	r3, r7, r3
 526 023c 1B68     		ldr	r3, [r3]
 527 023e 1B6A     		ldr	r3, [r3, #32]
 528 0240 9422     		movs	r2, #148
 529 0242 BA18     		adds	r2, r7, r2
 530 0244 1068     		ldr	r0, [r2]
 531 0246 0022     		movs	r2, #0
 532 0248 0121     		movs	r1, #1
 533 024a 9847     		blx	r3
 534              	.LVL2:
 535 024c 2DE0     		b	.L9
 536              	.L4:
 143:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 			case 4: spoopy_pointer->set_speed(spoopy_pointer, -1, 0); break;
 537              		.loc 1 143 0
 538 024e 9423     		movs	r3, #148
 539 0250 FB18     		adds	r3, r7, r3
 540 0252 1B68     		ldr	r3, [r3]
 541 0254 1B6A     		ldr	r3, [r3, #32]
 542 0256 0122     		movs	r2, #1
 543 0258 5142     		rsbs	r1, r2, #0
 544 025a 9422     		movs	r2, #148
 545 025c BA18     		adds	r2, r7, r2
 546 025e 1068     		ldr	r0, [r2]
 547 0260 0022     		movs	r2, #0
 548 0262 9847     		blx	r3
 549              	.LVL3:
 550 0264 21E0     		b	.L9
 551              	.L6:
 144:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 			case 2: spoopy_pointer->set_speed(spoopy_pointer, 0, -1); break;
 552              		.loc 1 144 0
 553 0266 9423     		movs	r3, #148
 554 0268 FB18     		adds	r3, r7, r3
 555 026a 1B68     		ldr	r3, [r3]
 556 026c 1B6A     		ldr	r3, [r3, #32]
 557 026e 0122     		movs	r2, #1
 558 0270 5242     		rsbs	r2, r2, #0
 559 0272 9421     		movs	r1, #148
 560 0274 7918     		adds	r1, r7, r1
 561 0276 0868     		ldr	r0, [r1]
 562 0278 0021     		movs	r1, #0
 563 027a 9847     		blx	r3
 564              	.LVL4:
 565 027c 15E0     		b	.L9
 566              	.L8:
 145:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 			case 8: spoopy_pointer->set_speed(spoopy_pointer, 0, 1); break;
 567              		.loc 1 145 0
 568 027e 9423     		movs	r3, #148
 569 0280 FB18     		adds	r3, r7, r3
 570 0282 1B68     		ldr	r3, [r3]
 571 0284 1B6A     		ldr	r3, [r3, #32]
 572 0286 9422     		movs	r2, #148
 573 0288 BA18     		adds	r2, r7, r2
 574 028a 1068     		ldr	r0, [r2]
 575 028c 0122     		movs	r2, #1
 576 028e 0021     		movs	r1, #0
 577 0290 9847     		blx	r3
 578              	.LVL5:
 579 0292 0AE0     		b	.L9
 580              	.L3:
 146:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****             default: spoopy_pointer->set_speed(spoopy_pointer, 0, 0); break;
 581              		.loc 1 146 0
 582 0294 9423     		movs	r3, #148
 583 0296 FB18     		adds	r3, r7, r3
 584 0298 1B68     		ldr	r3, [r3]
 585 029a 1B6A     		ldr	r3, [r3, #32]
 586 029c 9422     		movs	r2, #148
 587 029e BA18     		adds	r2, r7, r2
 588 02a0 1068     		ldr	r0, [r2]
 589 02a2 0022     		movs	r2, #0
 590 02a4 0021     		movs	r1, #0
 591 02a6 9847     		blx	r3
 592              	.LVL6:
 593 02a8 C046     		nop
 594              	.L9:
 147:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 		}
 148:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         update_sprite_object(spoopy_pointer);
 595              		.loc 1 148 0
 596 02aa 9423     		movs	r3, #148
 597 02ac FB18     		adds	r3, r7, r3
 598 02ae 1B68     		ldr	r3, [r3]
 599 02b0 1800     		movs	r0, r3
 600 02b2 FFF7FEFF 		bl	update_sprite_object
 149:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         update_enemy_position(enemy_pointer);
 601              		.loc 1 149 0
 602 02b6 8823     		movs	r3, #136
 603 02b8 FB18     		adds	r3, r7, r3
 604 02ba 1B68     		ldr	r3, [r3]
 605 02bc 1800     		movs	r0, r3
 606 02be FFF7FEFF 		bl	update_enemy_position
 150:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         position_checking(spoopy_pointer);
 607              		.loc 1 150 0
 608 02c2 9423     		movs	r3, #148
 609 02c4 FB18     		adds	r3, r7, r3
 610 02c6 1B68     		ldr	r3, [r3]
 611 02c8 1800     		movs	r0, r3
 612 02ca FFF7FEFF 		bl	position_checking
 151:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 613              		.loc 1 151 0
 614 02ce 1821     		movs	r1, #24
 615 02d0 3F20     		movs	r0, #63
 616 02d2 FFF7FEFF 		bl	graphic_write_command
 152:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 617              		.loc 1 152 0
 618 02d6 1821     		movs	r1, #24
 619 02d8 C020     		movs	r0, #192
 620 02da FFF7FEFF 		bl	graphic_write_command
 153:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 		delay_milli(250);
 621              		.loc 1 153 0
 622 02de FA20     		movs	r0, #250
 623 02e0 FFF7FEFF 		bl	delay_milli
 154:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         if(win_state != 0){
 624              		.loc 1 154 0
 625 02e4 324B     		ldr	r3, .L18+52
 626 02e6 1B78     		ldrb	r3, [r3]
 627 02e8 002B     		cmp	r3, #0
 628 02ea 00D1     		bne	.L16
 629              	.LBE2:
 138:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         GPIO_D.odrLow = GPIO_D.idrHigh;
 630              		.loc 1 138 0
 631 02ec 8CE7     		b	.L12
 632              	.L16:
 633              	.LBB3:
 155:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****             break;
 634              		.loc 1 155 0
 635 02ee C046     		nop
 636              	.LBE3:
 156:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         }
 157:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	}
 158:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 159:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     ascii_clear_screen();
 637              		.loc 1 159 0
 638 02f0 FFF7FEFF 		bl	ascii_clear_screen
 160:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     graphic_clear_screen();
 639              		.loc 1 160 0
 640 02f4 FFF7FEFF 		bl	graphic_clear_screen
 161:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 162:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->pos_x = (SCREEN_WIDTH / 2) - (spoopy_pointer->sprt->width / 2);
 641              		.loc 1 162 0
 642 02f8 9423     		movs	r3, #148
 643 02fa FB18     		adds	r3, r7, r3
 644 02fc 1B68     		ldr	r3, [r3]
 645 02fe 1B68     		ldr	r3, [r3]
 646 0300 1B78     		ldrb	r3, [r3]
 647 0302 5B08     		lsrs	r3, r3, #1
 648 0304 DBB2     		uxtb	r3, r3
 649 0306 1A00     		movs	r2, r3
 650 0308 4023     		movs	r3, #64
 651 030a 9A1A     		subs	r2, r3, r2
 652 030c 9423     		movs	r3, #148
 653 030e FB18     		adds	r3, r7, r3
 654 0310 1B68     		ldr	r3, [r3]
 655 0312 DA60     		str	r2, [r3, #12]
 163:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->pos_y = (SCREEN_HEIGHT / 2) - (spoopy_pointer->sprt->height / 2);
 656              		.loc 1 163 0
 657 0314 9423     		movs	r3, #148
 658 0316 FB18     		adds	r3, r7, r3
 659 0318 1B68     		ldr	r3, [r3]
 660 031a 1B68     		ldr	r3, [r3]
 661 031c 5B78     		ldrb	r3, [r3, #1]
 662 031e 5B08     		lsrs	r3, r3, #1
 663 0320 DBB2     		uxtb	r3, r3
 664 0322 1A00     		movs	r2, r3
 665 0324 2023     		movs	r3, #32
 666 0326 9A1A     		subs	r2, r3, r2
 667 0328 9423     		movs	r3, #148
 668 032a FB18     		adds	r3, r7, r3
 669 032c 1B68     		ldr	r3, [r3]
 670 032e 1A61     		str	r2, [r3, #16]
 164:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 165:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->draw(spoopy_pointer);
 671              		.loc 1 165 0
 672 0330 9423     		movs	r3, #148
 673 0332 FB18     		adds	r3, r7, r3
 674 0334 1B68     		ldr	r3, [r3]
 675 0336 5B69     		ldr	r3, [r3, #20]
 676 0338 9422     		movs	r2, #148
 677 033a BA18     		adds	r2, r7, r2
 678 033c 1268     		ldr	r2, [r2]
 679 033e 1000     		movs	r0, r2
 680 0340 9847     		blx	r3
 681              	.LVL7:
 166:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 167:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 1);
 682              		.loc 1 167 0
 683 0342 0121     		movs	r1, #1
 684 0344 0120     		movs	r0, #1
 685 0346 FFF7FEFF 		bl	gotoxy
 168:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(game_over_message);
 686              		.loc 1 168 0
 687 034a 1A4B     		ldr	r3, .L18+56
 688 034c 1800     		movs	r0, r3
 689 034e FFF7FEFF 		bl	ascii_write_string
 169:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 2);
 690              		.loc 1 169 0
 691 0352 0221     		movs	r1, #2
 692 0354 0120     		movs	r0, #1
 693 0356 FFF7FEFF 		bl	gotoxy
 170:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     if(win_state == 1){
 694              		.loc 1 170 0
 695 035a 154B     		ldr	r3, .L18+52
 696 035c 1B78     		ldrb	r3, [r3]
 697 035e 012B     		cmp	r3, #1
 698 0360 04D1     		bne	.L13
 171:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         ascii_write_string(win_message);
 699              		.loc 1 171 0
 700 0362 154B     		ldr	r3, .L18+60
 701 0364 1800     		movs	r0, r3
 702 0366 FFF7FEFF 		bl	ascii_write_string
 172:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     } else {
 173:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         ascii_write_string(loss_message);
 174:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     }
 175:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** }
 703              		.loc 1 175 0
 704 036a 03E0     		b	.L17
 705              	.L13:
 173:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     }
 706              		.loc 1 173 0
 707 036c 134B     		ldr	r3, .L18+64
 708 036e 1800     		movs	r0, r3
 709 0370 FFF7FEFF 		bl	ascii_write_string
 710              	.L17:
 711              		.loc 1 175 0
 712 0374 C046     		nop
 713 0376 BD46     		mov	sp, r7
 714 0378 26B0     		add	sp, sp, #152
 715              		@ sp needed
 716 037a 80BD     		pop	{r7, pc}
 717              	.L19:
 718              		.align	2
 719              	.L18:
 720 037c 00000000 		.word	start_message1
 721 0380 00000000 		.word	start_message2
 722 0384 00000000 		.word	spoop_bits
 723 0388 00000000 		.word	draw_sprite_object
 724 038c 00000000 		.word	clear_sprite_object
 725 0390 00000000 		.word	move_sprite_object
 726 0394 00000000 		.word	set_sprite_object_speed
 727 0398 20000000 		.word	exit_bits
 728 039c 00000000 		.word	dummy_function1
 729 03a0 00000000 		.word	dummy_function2
 730 03a4 40000000 		.word	enemy_bits
 731 03a8 000C0240 		.word	1073875968
 732 03ac 00000000 		.word	keyboard_val
 733 03b0 00000000 		.word	win_state
 734 03b4 00000000 		.word	game_over_message
 735 03b8 00000000 		.word	win_message
 736 03bc 00000000 		.word	loss_message
 737              		.cfi_endproc
 738              	.LFE1:
 740              		.align	1
 741              		.global	keyboard_interrupt_handler
 742              		.syntax unified
 743              		.code	16
 744              		.thumb_func
 745              		.fpu softvfp
 747              	keyboard_interrupt_handler:
 748              	.LFB2:
 176:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
 177:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void keyboard_interrupt_handler(void){
 749              		.loc 1 177 0
 750              		.cfi_startproc
 751              		@ args = 0, pretend = 0, frame = 0
 752              		@ frame_needed = 1, uses_anonymous_args = 0
 753 03c0 80B5     		push	{r7, lr}
 754              		.cfi_def_cfa_offset 8
 755              		.cfi_offset 7, -8
 756              		.cfi_offset 14, -4
 757 03c2 00AF     		add	r7, sp, #0
 758              		.cfi_def_cfa_register 7
 178:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     if(EXTI.pr & INTERRUPT_TARGET_PINS){
 759              		.loc 1 178 0
 760 03c4 0D4B     		ldr	r3, .L23
 761 03c6 5B69     		ldr	r3, [r3, #20]
 762 03c8 6022     		movs	r2, #96
 763 03ca 1340     		ands	r3, r2
 764 03cc 12D0     		beq	.L22
 765              	.LBB4:
 179:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         keyboard_val = keyb();
 766              		.loc 1 179 0
 767 03ce FFF7FEFF 		bl	keyb
 768 03d2 0300     		movs	r3, r0
 769 03d4 DAB2     		uxtb	r2, r3
 770 03d6 0A4B     		ldr	r3, .L23+4
 771 03d8 1A70     		strb	r2, [r3]
 180:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         GPIO_D.odrHigh = 0xF0;
 772              		.loc 1 180 0
 773 03da 0A4B     		ldr	r3, .L23+8
 774 03dc F022     		movs	r2, #240
 775 03de 5A75     		strb	r2, [r3, #21]
 181:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         
 182:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         EXTI.pr |= (EXTI.pr & INTERRUPT_TARGET_PINS);
 776              		.loc 1 182 0
 777 03e0 064B     		ldr	r3, .L23
 778 03e2 5B69     		ldr	r3, [r3, #20]
 779 03e4 6022     		movs	r2, #96
 780 03e6 1340     		ands	r3, r2
 781 03e8 1900     		movs	r1, r3
 782 03ea 044B     		ldr	r3, .L23
 783 03ec 034A     		ldr	r2, .L23
 784 03ee 5269     		ldr	r2, [r2, #20]
 785 03f0 0A43     		orrs	r2, r1
 786 03f2 5A61     		str	r2, [r3, #20]
 787              	.L22:
 788              	.LBE4:
 183:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     }
 184:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** }
 789              		.loc 1 184 0
 790 03f4 C046     		nop
 791 03f6 BD46     		mov	sp, r7
 792              		@ sp needed
 793 03f8 80BD     		pop	{r7, pc}
 794              	.L24:
 795 03fa C046     		.align	2
 796              	.L23:
 797 03fc 003C0140 		.word	1073822720
 798 0400 00000000 		.word	keyboard_val
 799 0404 000C0240 		.word	1073875968
 800              		.cfi_endproc
 801              	.LFE2:
 803              		.align	1
 804              		.global	position_checking
 805              		.syntax unified
 806              		.code	16
 807              		.thumb_func
 808              		.fpu softvfp
 810              	position_checking:
 811              	.LFB3:
 185:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
 186:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void position_checking(PSPRITE_OBJECT spoopy_pointer){
 812              		.loc 1 186 0
 813              		.cfi_startproc
 814              		@ args = 0, pretend = 0, frame = 24
 815              		@ frame_needed = 1, uses_anonymous_args = 0
 816 0408 90B5     		push	{r4, r7, lr}
 817              		.cfi_def_cfa_offset 12
 818              		.cfi_offset 4, -12
 819              		.cfi_offset 7, -8
 820              		.cfi_offset 14, -4
 821 040a 87B0     		sub	sp, sp, #28
 822              		.cfi_def_cfa_offset 40
 823 040c 00AF     		add	r7, sp, #0
 824              		.cfi_def_cfa_register 7
 825 040e 7860     		str	r0, [r7, #4]
 187:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_current_x = (spoopy_pointer->pos_x + 1) / GRID_WIDTH;
 826              		.loc 1 187 0
 827 0410 7B68     		ldr	r3, [r7, #4]
 828 0412 DB68     		ldr	r3, [r3, #12]
 829 0414 0133     		adds	r3, r3, #1
 830 0416 002B     		cmp	r3, #0
 831 0418 00DA     		bge	.L26
 832 041a 0F33     		adds	r3, r3, #15
 833              	.L26:
 834 041c 1B11     		asrs	r3, r3, #4
 835 041e 7B61     		str	r3, [r7, #20]
 188:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_current_y = (spoopy_pointer->pos_y + 1) / GRID_HEIGHT;
 836              		.loc 1 188 0
 837 0420 7B68     		ldr	r3, [r7, #4]
 838 0422 1B69     		ldr	r3, [r3, #16]
 839 0424 0133     		adds	r3, r3, #1
 840 0426 002B     		cmp	r3, #0
 841 0428 00DA     		bge	.L27
 842 042a 0F33     		adds	r3, r3, #15
 843              	.L27:
 844 042c 1B11     		asrs	r3, r3, #4
 845 042e 3B61     		str	r3, [r7, #16]
 189:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 190:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     //int next_space = map_grid[spoopy_current_x + spoopy_pointer->dir_x][spoopy_current_y + spoopy
 191:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     int curr_space = map_grid[spoopy_current_x][spoopy_current_y];
 846              		.loc 1 191 0
 847 0430 124A     		ldr	r2, .L31
 848 0432 7B69     		ldr	r3, [r7, #20]
 849 0434 9B00     		lsls	r3, r3, #2
 850 0436 D218     		adds	r2, r2, r3
 851 0438 3B69     		ldr	r3, [r7, #16]
 852 043a D318     		adds	r3, r2, r3
 853 043c 1B78     		ldrb	r3, [r3]
 854 043e FB60     		str	r3, [r7, #12]
 192:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 193:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Check win states
 194:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     switch(curr_space){
 855              		.loc 1 194 0
 856 0440 FB68     		ldr	r3, [r7, #12]
 857 0442 022B     		cmp	r3, #2
 858 0444 02D0     		beq	.L29
 859 0446 032B     		cmp	r3, #3
 860 0448 04D0     		beq	.L30
 861 044a 07E0     		b	.L28
 862              	.L29:
 195:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         case EXIT_SPACE: win_state = 1; break;
 863              		.loc 1 195 0
 864 044c 0C4B     		ldr	r3, .L31+4
 865 044e 0122     		movs	r2, #1
 866 0450 1A70     		strb	r2, [r3]
 867 0452 03E0     		b	.L28
 868              	.L30:
 196:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         case ENEMY_SPACE: win_state = -1; break;
 869              		.loc 1 196 0
 870 0454 0A4B     		ldr	r3, .L31+4
 871 0456 FF22     		movs	r2, #255
 872 0458 1A70     		strb	r2, [r3]
 873 045a C046     		nop
 874              	.L28:
 197:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     }
 198:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 199:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Update spoopy's speed
 200:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->set_speed(spoopy_pointer, spoopy_pointer->dir_x * GRID_WIDTH, spoopy_pointer->d
 875              		.loc 1 200 0
 876 045c 7B68     		ldr	r3, [r7, #4]
 877 045e 1C6A     		ldr	r4, [r3, #32]
 878 0460 7B68     		ldr	r3, [r7, #4]
 879 0462 5B68     		ldr	r3, [r3, #4]
 880 0464 1901     		lsls	r1, r3, #4
 881 0466 7B68     		ldr	r3, [r7, #4]
 882 0468 9B68     		ldr	r3, [r3, #8]
 883 046a 1A01     		lsls	r2, r3, #4
 884 046c 7B68     		ldr	r3, [r7, #4]
 885 046e 1800     		movs	r0, r3
 886 0470 A047     		blx	r4
 887              	.LVL8:
 201:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** }
 888              		.loc 1 201 0
 889 0472 C046     		nop
 890 0474 BD46     		mov	sp, r7
 891 0476 07B0     		add	sp, sp, #28
 892              		@ sp needed
 893 0478 90BD     		pop	{r4, r7, pc}
 894              	.L32:
 895 047a C046     		.align	2
 896              	.L31:
 897 047c 00000000 		.word	map_grid
 898 0480 00000000 		.word	win_state
 899              		.cfi_endproc
 900              	.LFE3:
 902              		.align	1
 903              		.global	update_enemy_position
 904              		.syntax unified
 905              		.code	16
 906              		.thumb_func
 907              		.fpu softvfp
 909              	update_enemy_position:
 910              	.LFB4:
 202:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
 203:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void update_enemy_position(PSPRITE_OBJECT enemy_pointer){
 911              		.loc 1 203 0
 912              		.cfi_startproc
 913              		@ args = 0, pretend = 0, frame = 8
 914              		@ frame_needed = 1, uses_anonymous_args = 0
 915 0484 80B5     		push	{r7, lr}
 916              		.cfi_def_cfa_offset 8
 917              		.cfi_offset 7, -8
 918              		.cfi_offset 14, -4
 919 0486 82B0     		sub	sp, sp, #8
 920              		.cfi_def_cfa_offset 16
 921 0488 00AF     		add	r7, sp, #0
 922              		.cfi_def_cfa_register 7
 923 048a 7860     		str	r0, [r7, #4]
 204:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     map_grid[(enemy_pointer->pos_x + 1) / GRID_WIDTH][(enemy_pointer->pos_y + 1) / GRID_HEIGHT] = E
 924              		.loc 1 204 0
 925 048c 7B68     		ldr	r3, [r7, #4]
 926 048e DB68     		ldr	r3, [r3, #12]
 927 0490 0133     		adds	r3, r3, #1
 928 0492 002B     		cmp	r3, #0
 929 0494 00DA     		bge	.L34
 930 0496 0F33     		adds	r3, r3, #15
 931              	.L34:
 932 0498 1B11     		asrs	r3, r3, #4
 933 049a 1800     		movs	r0, r3
 934 049c 7B68     		ldr	r3, [r7, #4]
 935 049e 1B69     		ldr	r3, [r3, #16]
 936 04a0 0133     		adds	r3, r3, #1
 937 04a2 002B     		cmp	r3, #0
 938 04a4 00DA     		bge	.L35
 939 04a6 0F33     		adds	r3, r3, #15
 940              	.L35:
 941 04a8 1B11     		asrs	r3, r3, #4
 942 04aa 1900     		movs	r1, r3
 943 04ac 104A     		ldr	r2, .L38
 944 04ae 8300     		lsls	r3, r0, #2
 945 04b0 D318     		adds	r3, r2, r3
 946 04b2 0022     		movs	r2, #0
 947 04b4 5A54     		strb	r2, [r3, r1]
 205:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     update_sprite_object(enemy_pointer);
 948              		.loc 1 205 0
 949 04b6 7B68     		ldr	r3, [r7, #4]
 950 04b8 1800     		movs	r0, r3
 951 04ba FFF7FEFF 		bl	update_sprite_object
 206:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     map_grid[(enemy_pointer->pos_x + 1) / GRID_WIDTH][(enemy_pointer->pos_y + 1) / GRID_HEIGHT] = E
 952              		.loc 1 206 0
 953 04be 7B68     		ldr	r3, [r7, #4]
 954 04c0 DB68     		ldr	r3, [r3, #12]
 955 04c2 0133     		adds	r3, r3, #1
 956 04c4 002B     		cmp	r3, #0
 957 04c6 00DA     		bge	.L36
 958 04c8 0F33     		adds	r3, r3, #15
 959              	.L36:
 960 04ca 1B11     		asrs	r3, r3, #4
 961 04cc 1800     		movs	r0, r3
 962 04ce 7B68     		ldr	r3, [r7, #4]
 963 04d0 1B69     		ldr	r3, [r3, #16]
 964 04d2 0133     		adds	r3, r3, #1
 965 04d4 002B     		cmp	r3, #0
 966 04d6 00DA     		bge	.L37
 967 04d8 0F33     		adds	r3, r3, #15
 968              	.L37:
 969 04da 1B11     		asrs	r3, r3, #4
 970 04dc 1900     		movs	r1, r3
 971 04de 044A     		ldr	r2, .L38
 972 04e0 8300     		lsls	r3, r0, #2
 973 04e2 D318     		adds	r3, r2, r3
 974 04e4 0322     		movs	r2, #3
 975 04e6 5A54     		strb	r2, [r3, r1]
 207:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** }
 976              		.loc 1 207 0
 977 04e8 C046     		nop
 978 04ea BD46     		mov	sp, r7
 979 04ec 02B0     		add	sp, sp, #8
 980              		@ sp needed
 981 04ee 80BD     		pop	{r7, pc}
 982              	.L39:
 983              		.align	2
 984              	.L38:
 985 04f0 00000000 		.word	map_grid
 986              		.cfi_endproc
 987              	.LFE4:
 989              		.align	1
 990              		.global	init_map_grid
 991              		.syntax unified
 992              		.code	16
 993              		.thumb_func
 994              		.fpu softvfp
 996              	init_map_grid:
 997              	.LFB5:
 208:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
 209:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void init_map_grid(PSPRITE_OBJECT spoopy, PSPRITE_OBJECT exit, PSPRITE_OBJECT enemy){
 998              		.loc 1 209 0
 999              		.cfi_startproc
 1000              		@ args = 0, pretend = 0, frame = 48
 1001              		@ frame_needed = 1, uses_anonymous_args = 0
 1002 04f4 80B5     		push	{r7, lr}
 1003              		.cfi_def_cfa_offset 8
 1004              		.cfi_offset 7, -8
 1005              		.cfi_offset 14, -4
 1006 04f6 8CB0     		sub	sp, sp, #48
 1007              		.cfi_def_cfa_offset 56
 1008 04f8 00AF     		add	r7, sp, #0
 1009              		.cfi_def_cfa_register 7
 1010 04fa F860     		str	r0, [r7, #12]
 1011 04fc B960     		str	r1, [r7, #8]
 1012 04fe 7A60     		str	r2, [r7, #4]
 1013              	.LBB5:
 210:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     for(int x = 0; x < MAP_WIDTH; x++){
 1014              		.loc 1 210 0
 1015 0500 0023     		movs	r3, #0
 1016 0502 FB62     		str	r3, [r7, #44]
 1017 0504 13E0     		b	.L41
 1018              	.L44:
 1019              	.LBB6:
 211:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         for(int y = 0; y < MAP_HEIGHT; y++){
 1020              		.loc 1 211 0
 1021 0506 0023     		movs	r3, #0
 1022 0508 BB62     		str	r3, [r7, #40]
 1023 050a 0AE0     		b	.L42
 1024              	.L43:
 212:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****             map_grid[x][y] = EMPTY_SPACE;
 1025              		.loc 1 212 0 discriminator 3
 1026 050c 274A     		ldr	r2, .L45
 1027 050e FB6A     		ldr	r3, [r7, #44]
 1028 0510 9B00     		lsls	r3, r3, #2
 1029 0512 D218     		adds	r2, r2, r3
 1030 0514 BB6A     		ldr	r3, [r7, #40]
 1031 0516 D318     		adds	r3, r2, r3
 1032 0518 0022     		movs	r2, #0
 1033 051a 1A70     		strb	r2, [r3]
 211:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         for(int y = 0; y < MAP_HEIGHT; y++){
 1034              		.loc 1 211 0 discriminator 3
 1035 051c BB6A     		ldr	r3, [r7, #40]
 1036 051e 0133     		adds	r3, r3, #1
 1037 0520 BB62     		str	r3, [r7, #40]
 1038              	.L42:
 211:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         for(int y = 0; y < MAP_HEIGHT; y++){
 1039              		.loc 1 211 0 is_stmt 0 discriminator 1
 1040 0522 BB6A     		ldr	r3, [r7, #40]
 1041 0524 032B     		cmp	r3, #3
 1042 0526 F1DD     		ble	.L43
 1043              	.LBE6:
 210:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     for(int x = 0; x < MAP_WIDTH; x++){
 1044              		.loc 1 210 0 is_stmt 1 discriminator 2
 1045 0528 FB6A     		ldr	r3, [r7, #44]
 1046 052a 0133     		adds	r3, r3, #1
 1047 052c FB62     		str	r3, [r7, #44]
 1048              	.L41:
 210:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     for(int x = 0; x < MAP_WIDTH; x++){
 1049              		.loc 1 210 0 is_stmt 0 discriminator 1
 1050 052e FB6A     		ldr	r3, [r7, #44]
 1051 0530 072B     		cmp	r3, #7
 1052 0532 E8DD     		ble	.L44
 1053              	.LBE5:
 213:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****         }
 214:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     }
 215:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 216:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Set Spoopy's starting position
 217:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_x = 0;
 1054              		.loc 1 217 0 is_stmt 1
 1055 0534 0023     		movs	r3, #0
 1056 0536 7B62     		str	r3, [r7, #36]
 218:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_y = 0;
 1057              		.loc 1 218 0
 1058 0538 0023     		movs	r3, #0
 1059 053a 3B62     		str	r3, [r7, #32]
 219:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     //map_grid[spoopy_x][spoopy_y] = SPOOPY_SPACE;
 220:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     spoopy->pos_x = spoopy_x * GRID_WIDTH;
 1060              		.loc 1 220 0
 1061 053c 7B6A     		ldr	r3, [r7, #36]
 1062 053e 1A01     		lsls	r2, r3, #4
 1063 0540 FB68     		ldr	r3, [r7, #12]
 1064 0542 DA60     		str	r2, [r3, #12]
 221:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     spoopy->pos_y = spoopy_y * GRID_HEIGHT;
 1065              		.loc 1 221 0
 1066 0544 3B6A     		ldr	r3, [r7, #32]
 1067 0546 1A01     		lsls	r2, r3, #4
 1068 0548 FB68     		ldr	r3, [r7, #12]
 1069 054a 1A61     		str	r2, [r3, #16]
 222:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 223:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Set exit's starting position
 224:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     int exit_x = MAP_WIDTH - 1;
 1070              		.loc 1 224 0
 1071 054c 0723     		movs	r3, #7
 1072 054e FB61     		str	r3, [r7, #28]
 225:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     int exit_y = MAP_HEIGHT - 1;
 1073              		.loc 1 225 0
 1074 0550 0323     		movs	r3, #3
 1075 0552 BB61     		str	r3, [r7, #24]
 226:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     map_grid[exit_x][exit_y] = EXIT_SPACE;
 1076              		.loc 1 226 0
 1077 0554 154A     		ldr	r2, .L45
 1078 0556 FB69     		ldr	r3, [r7, #28]
 1079 0558 9B00     		lsls	r3, r3, #2
 1080 055a D218     		adds	r2, r2, r3
 1081 055c BB69     		ldr	r3, [r7, #24]
 1082 055e D318     		adds	r3, r2, r3
 1083 0560 0222     		movs	r2, #2
 1084 0562 1A70     		strb	r2, [r3]
 227:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     exit->pos_x = exit_x * GRID_WIDTH;
 1085              		.loc 1 227 0
 1086 0564 FB69     		ldr	r3, [r7, #28]
 1087 0566 1A01     		lsls	r2, r3, #4
 1088 0568 BB68     		ldr	r3, [r7, #8]
 1089 056a DA60     		str	r2, [r3, #12]
 228:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     exit->pos_y = exit_y * GRID_HEIGHT;
 1090              		.loc 1 228 0
 1091 056c BB69     		ldr	r3, [r7, #24]
 1092 056e 1A01     		lsls	r2, r3, #4
 1093 0570 BB68     		ldr	r3, [r7, #8]
 1094 0572 1A61     		str	r2, [r3, #16]
 229:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 230:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     int enemy_x = 3;
 1095              		.loc 1 230 0
 1096 0574 0323     		movs	r3, #3
 1097 0576 7B61     		str	r3, [r7, #20]
 231:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     int enemy_y = 0;
 1098              		.loc 1 231 0
 1099 0578 0023     		movs	r3, #0
 1100 057a 3B61     		str	r3, [r7, #16]
 232:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     map_grid[enemy_x][enemy_y] = ENEMY_SPACE;
 1101              		.loc 1 232 0
 1102 057c 0B4A     		ldr	r2, .L45
 1103 057e 7B69     		ldr	r3, [r7, #20]
 1104 0580 9B00     		lsls	r3, r3, #2
 1105 0582 D218     		adds	r2, r2, r3
 1106 0584 3B69     		ldr	r3, [r7, #16]
 1107 0586 D318     		adds	r3, r2, r3
 1108 0588 0322     		movs	r2, #3
 1109 058a 1A70     		strb	r2, [r3]
 233:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     enemy->pos_x = enemy_x * GRID_WIDTH;
 1110              		.loc 1 233 0
 1111 058c 7B69     		ldr	r3, [r7, #20]
 1112 058e 1A01     		lsls	r2, r3, #4
 1113 0590 7B68     		ldr	r3, [r7, #4]
 1114 0592 DA60     		str	r2, [r3, #12]
 234:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     enemy->pos_y = enemy_y * GRID_HEIGHT;
 1115              		.loc 1 234 0
 1116 0594 3B69     		ldr	r3, [r7, #16]
 1117 0596 1A01     		lsls	r2, r3, #4
 1118 0598 7B68     		ldr	r3, [r7, #4]
 1119 059a 1A61     		str	r2, [r3, #16]
 235:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     enemy->dir_y = -16;
 1120              		.loc 1 235 0
 1121 059c 7B68     		ldr	r3, [r7, #4]
 1122 059e 1022     		movs	r2, #16
 1123 05a0 5242     		rsbs	r2, r2, #0
 1124 05a2 9A60     		str	r2, [r3, #8]
 236:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** }
 1125              		.loc 1 236 0
 1126 05a4 C046     		nop
 1127 05a6 BD46     		mov	sp, r7
 1128 05a8 0CB0     		add	sp, sp, #48
 1129              		@ sp needed
 1130 05aa 80BD     		pop	{r7, pc}
 1131              	.L46:
 1132              		.align	2
 1133              	.L45:
 1134 05ac 00000000 		.word	map_grid
 1135              		.cfi_endproc
 1136              	.LFE5:
 1138              		.align	1
 1139              		.global	app_init
 1140              		.syntax unified
 1141              		.code	16
 1142              		.thumb_func
 1143              		.fpu softvfp
 1145              	app_init:
 1146              	.LFB6:
 237:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
 238:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** void app_init(void){
 1147              		.loc 1 238 0
 1148              		.cfi_startproc
 1149              		@ args = 0, pretend = 0, frame = 0
 1150              		@ frame_needed = 1, uses_anonymous_args = 0
 1151 05b0 80B5     		push	{r7, lr}
 1152              		.cfi_def_cfa_offset 8
 1153              		.cfi_offset 7, -8
 1154              		.cfi_offset 14, -4
 1155 05b2 00AF     		add	r7, sp, #0
 1156              		.cfi_def_cfa_register 7
 239:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #ifdef USBDM
 240:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	*((unsigned long*) 0x40023830) = 0x18;
 241:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 	__asm volatile( 
 242:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 		" LDR R0, =0x08000209\n"
 243:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 		" BLX R0\n"
 244:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 		);
 245:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** #endif
 246:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
 247:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     GPIO_D.moder &= 0xFFFF0000;
 1157              		.loc 1 247 0
 1158 05b4 1E4B     		ldr	r3, .L48
 1159 05b6 1E4A     		ldr	r2, .L48
 1160 05b8 1268     		ldr	r2, [r2]
 1161 05ba 120C     		lsrs	r2, r2, #16
 1162 05bc 1204     		lsls	r2, r2, #16
 1163 05be 1A60     		str	r2, [r3]
 248:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     GPIO_D.moder |= 0x00005555;
 1164              		.loc 1 248 0
 1165 05c0 1B4B     		ldr	r3, .L48
 1166 05c2 1B4A     		ldr	r2, .L48
 1167 05c4 1268     		ldr	r2, [r2]
 1168 05c6 1B49     		ldr	r1, .L48+4
 1169 05c8 0A43     		orrs	r2, r1
 1170 05ca 1A60     		str	r2, [r3]
 249:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** 
 250:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     graphicdisplay_init();
 1171              		.loc 1 250 0
 1172 05cc FFF7FEFF 		bl	graphicdisplay_init
 251:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     asciidisplay_init();
 1173              		.loc 1 251 0
 1174 05d0 FFF7FEFF 		bl	asciidisplay_init
 252:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     graphic_initialize();
 1175              		.loc 1 252 0
 1176 05d4 FFF7FEFF 		bl	graphic_initialize
 253:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 254:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     keyboard_init();
 1177              		.loc 1 254 0
 1178 05d8 FFF7FEFF 		bl	keyboard_init
 255:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 256:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // *** Interrupt init ***
 257:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Set port D pin 8-11 as interrupts
 258:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     SYSCFG.exticr3 = 0x3333;
 1179              		.loc 1 258 0
 1180 05dc 164B     		ldr	r3, .L48+8
 1181 05de 174A     		ldr	r2, .L48+12
 1182 05e0 1A61     		str	r2, [r3, #16]
 259:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 260:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Set pin 8-11 as interrupts on both flanks
 261:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     EXTI.imr = INTERRUPT_TARGET_PINS;
 1183              		.loc 1 261 0
 1184 05e2 174B     		ldr	r3, .L48+16
 1185 05e4 6022     		movs	r2, #96
 1186 05e6 1A60     		str	r2, [r3]
 262:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     EXTI.ftsr |= INTERRUPT_TARGET_PINS;
 1187              		.loc 1 262 0
 1188 05e8 154B     		ldr	r3, .L48+16
 1189 05ea 154A     		ldr	r2, .L48+16
 1190 05ec D268     		ldr	r2, [r2, #12]
 1191 05ee 6021     		movs	r1, #96
 1192 05f0 0A43     		orrs	r2, r1
 1193 05f2 DA60     		str	r2, [r3, #12]
 263:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     EXTI.rtsr |= INTERRUPT_TARGET_PINS;
 1194              		.loc 1 263 0
 1195 05f4 124B     		ldr	r3, .L48+16
 1196 05f6 124A     		ldr	r2, .L48+16
 1197 05f8 9268     		ldr	r2, [r2, #8]
 1198 05fa 6021     		movs	r1, #96
 1199 05fc 0A43     		orrs	r2, r1
 1200 05fe 9A60     		str	r2, [r3, #8]
 264:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 265:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Set up interrupt vector
 266:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     *((void (**) (void))0x2001C09C) = keyboard_interrupt_handler;
 1201              		.loc 1 266 0
 1202 0600 104B     		ldr	r3, .L48+20
 1203 0602 114A     		ldr	r2, .L48+24
 1204 0604 1A60     		str	r2, [r3]
 267:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     *((void (**) (void))0x2001C0E0) = keyboard_interrupt_handler;
 1205              		.loc 1 267 0
 1206 0606 114B     		ldr	r3, .L48+28
 1207 0608 0F4A     		ldr	r2, .L48+24
 1208 060a 1A60     		str	r2, [r3]
 268:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     
 269:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     // Enable interrupt vectors
 270:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     NVIC_ISER0 |= (1 << 23);
 1209              		.loc 1 270 0
 1210 060c 104B     		ldr	r3, .L48+32
 1211 060e 104A     		ldr	r2, .L48+32
 1212 0610 1268     		ldr	r2, [r2]
 1213 0612 8021     		movs	r1, #128
 1214 0614 0904     		lsls	r1, r1, #16
 1215 0616 0A43     		orrs	r2, r1
 1216 0618 1A60     		str	r2, [r3]
 271:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c ****     NVIC_ISER1 |= (1 << (40 - 32));
 1217              		.loc 1 271 0
 1218 061a 0E4B     		ldr	r3, .L48+36
 1219 061c 0D4A     		ldr	r2, .L48+36
 1220 061e 1268     		ldr	r2, [r2]
 1221 0620 8021     		movs	r1, #128
 1222 0622 4900     		lsls	r1, r1, #1
 1223 0624 0A43     		orrs	r2, r1
 1224 0626 1A60     		str	r2, [r3]
 272:C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure\startup.c **** }
 1225              		.loc 1 272 0
 1226 0628 C046     		nop
 1227 062a BD46     		mov	sp, r7
 1228              		@ sp needed
 1229 062c 80BD     		pop	{r7, pc}
 1230              	.L49:
 1231 062e C046     		.align	2
 1232              	.L48:
 1233 0630 000C0240 		.word	1073875968
 1234 0634 55550000 		.word	21845
 1235 0638 00380140 		.word	1073821696
 1236 063c 33330000 		.word	13107
 1237 0640 003C0140 		.word	1073822720
 1238 0644 9CC00120 		.word	536985756
 1239 0648 00000000 		.word	keyboard_interrupt_handler
 1240 064c E0C00120 		.word	536985824
 1241 0650 00E100E0 		.word	-536813312
 1242 0654 04E100E0 		.word	-536813308
 1243              		.cfi_endproc
 1244              	.LFE6:
 1246              	.Letext0:
 1247              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure/gpio.h"
 1248              		.file 3 "C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure/syscfg.h"
 1249              		.file 4 "C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure/exti.h"
 1250              		.file 5 "C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure/spoopy.xbm"
 1251              		.file 6 "C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure/exit.xbm"
 1252              		.file 7 "C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure/enemy.xbm"
 1253              		.file 8 "C:/School/DAT017/Mop-DAT017/Labs and Excercises/spoopys_bizarre_adventure/sprites.h"
