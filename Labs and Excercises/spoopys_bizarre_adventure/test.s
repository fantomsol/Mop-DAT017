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
 124              		.section	.start_section,"ax",%progbits
 125              		.align	1
 126              		.global	startup
 127              		.syntax unified
 128              		.code	16
 129              		.thumb_func
 130              		.fpu softvfp
 132              	startup:
 133              	.LFB0:
 134              		.file 1 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_
   1:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** /*
   2:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  * 	startup.c
   3:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  *
   4:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  */
   5:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "gpio.h"
   6:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "syscfg.h"
   7:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "exti.h"
   8:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "sprites.h"
   9:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  10:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** //#define INTERRUPT_TARGET_PINS 0x0F00
  11:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define INTERRUPT_TARGET_PINS ((1 << 5) + (1 << 6))
  12:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define NVIC 0xE000E100
  13:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define NVIC_ISER0 *((volatile unsigned int *) NVIC)
  14:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define NVIC_ISER1 *((volatile unsigned int *) (NVIC + 0x004))
  15:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  16:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define SCREEN_WIDTH 128
  17:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define SCREEN_HEIGHT 64
  18:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  19:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define GRID_WIDTH 16
  20:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define GRID_HEIGHT 16
  21:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  22:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define EMPTY_SPACE 0
  23:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define SPOOPY_SPACE 1
  24:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define EXIT_SPACE 2
  25:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define WALL_SPACE 3
  26:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  27:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define MAP_WIDTH (SCREEN_WIDTH / GRID_WIDTH) /*Default: 8*/
  28:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define MAP_HEIGHT (SCREEN_HEIGHT / GRID_HEIGHT) /*Default: 4*/
  29:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define WALL_AMOUNT 0
  30:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  31:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  32:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void app_init(void);
  33:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void keyboard_interrupt_handler(void);
  34:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void position_checking(PSPRITE_OBJECT);
  35:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void init_map_grid(PSPRITE_OBJECT, PSPRITE_OBJECT, PSPRITE_OBJECT[]);
  36:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  37:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char keyboard_val = 0;
  38:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char map_grid[MAP_WIDTH][MAP_HEIGHT];
  39:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  40:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char win_state = 0;
  41:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  42:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char start_message1[] = "Spoopy's";
  43:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char start_message2[] = "bizarre adventure";
  44:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  45:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char victory_message1[] = "Congratulations!";
  46:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char victory_message2[] = "You win!";
  47:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  48:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void startup(void){
 135              		.loc 1 48 0
 136              		.cfi_startproc
 137              		@ Naked Function: prologue and epilogue provided by programmer.
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 1, uses_anonymous_args = 0
  49:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** __asm volatile(
 140              		.loc 1 49 0
 141              		.syntax divided
 142              	@ 49 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_biza
 143 0000 0248     		 LDR R0,=0x2001C000
 144 0002 8546     	 MOV SP,R0
 145 0004 FFF7FEFF 	 BL main
 146 0008 FEE7     	_exit: B .
 147              	
 148              	@ 0 "" 2
  50:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  51:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	" MOV SP,R0\n"
  52:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	" BL main\n"				/* call main */
  53:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	"_exit: B .\n"				/* never return */
  54:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	) ;
  55:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 149              		.loc 1 55 0
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
 181              		.global	victory_message1
 182 007e 0000     		.align	2
 185              	victory_message1:
 186 0080 436F6E67 		.ascii	"Congratulations!\000"
 186      72617475 
 186      6C617469 
 186      6F6E7321 
 186      00
 187              		.global	victory_message2
 188 0091 000000   		.align	2
 191              	victory_message2:
 192 0094 596F7520 		.ascii	"You win!\000"
 192      77696E21 
 192      00
 193              		.text
 194              		.align	1
 195              		.global	main
 196              		.syntax unified
 197              		.code	16
 198              		.thumb_func
 199              		.fpu softvfp
 201              	main:
 202              	.LFB1:
  56:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  57:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void main(void){
 203              		.loc 1 57 0
 204              		.cfi_startproc
 205              		@ args = 0, pretend = 0, frame = 112
 206              		@ frame_needed = 1, uses_anonymous_args = 0
 207 0000 80B5     		push	{r7, lr}
 208              		.cfi_def_cfa_offset 8
 209              		.cfi_offset 7, -8
 210              		.cfi_offset 14, -4
 211 0002 9CB0     		sub	sp, sp, #112
 212              		.cfi_def_cfa_offset 120
 213 0004 00AF     		add	r7, sp, #0
 214              		.cfi_def_cfa_register 7
  58:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     app_init();
 215              		.loc 1 58 0
 216 0006 FFF7FEFF 		bl	app_init
  59:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     //sprites_init();
  60:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
  61:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphic_clear_screen();
 217              		.loc 1 61 0
 218 000a FFF7FEFF 		bl	graphic_clear_screen
  62:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_clear_screen();
 219              		.loc 1 62 0
 220 000e FFF7FEFF 		bl	ascii_clear_screen
  63:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 221              		.loc 1 63 0
 222 0012 1821     		movs	r1, #24
 223 0014 3F20     		movs	r0, #63
 224 0016 FFF7FEFF 		bl	graphic_write_command
  64:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 225              		.loc 1 64 0
 226 001a 1821     		movs	r1, #24
 227 001c C020     		movs	r0, #192
 228 001e FFF7FEFF 		bl	graphic_write_command
  65:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
  66:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 1);
 229              		.loc 1 66 0
 230 0022 0121     		movs	r1, #1
 231 0024 0120     		movs	r0, #1
 232 0026 FFF7FEFF 		bl	gotoxy
  67:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(start_message1);
 233              		.loc 1 67 0
 234 002a A14B     		ldr	r3, .L19
 235 002c 1800     		movs	r0, r3
 236 002e FFF7FEFF 		bl	ascii_write_string
  68:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 2);
 237              		.loc 1 68 0
 238 0032 0221     		movs	r1, #2
 239 0034 0120     		movs	r0, #1
 240 0036 FFF7FEFF 		bl	gotoxy
  69:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(start_message2);
 241              		.loc 1 69 0
 242 003a 9E4B     		ldr	r3, .L19+4
 243 003c 1800     		movs	r0, r3
 244 003e FFF7FEFF 		bl	ascii_write_string
  70:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
  71:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Initiate objects
  72:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     SPRITE spoopy_sprite = {
 245              		.loc 1 72 0
 246 0042 5423     		movs	r3, #84
 247 0044 FB18     		adds	r3, r7, r3
 248 0046 0022     		movs	r2, #0
 249 0048 1A70     		strb	r2, [r3]
 250 004a 5423     		movs	r3, #84
 251 004c FB18     		adds	r3, r7, r3
 252 004e 0022     		movs	r2, #0
 253 0050 5A70     		strb	r2, [r3, #1]
 254 0052 5423     		movs	r3, #84
 255 0054 FB18     		adds	r3, r7, r3
 256 0056 0022     		movs	r2, #0
 257 0058 5A60     		str	r2, [r3, #4]
  73:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         0, // Init values, disregard these as these will be set later
  74:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         0,
  75:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         {0}
  76:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     };
  77:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     load_sprite(&spoopy_sprite, spoop_bits, spoop_width, spoop_height);
 258              		.loc 1 77 0
 259 005a 9749     		ldr	r1, .L19+8
 260 005c 5423     		movs	r3, #84
 261 005e F818     		adds	r0, r7, r3
 262 0060 1023     		movs	r3, #16
 263 0062 1022     		movs	r2, #16
 264 0064 FFF7FEFF 		bl	load_sprite
  78:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****      // Initiate Spoopy
  79:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     SPRITE_OBJECT spoopy = {
 265              		.loc 1 79 0
 266 0068 3023     		movs	r3, #48
 267 006a FB18     		adds	r3, r7, r3
 268 006c 5422     		movs	r2, #84
 269 006e BA18     		adds	r2, r7, r2
 270 0070 1A60     		str	r2, [r3]
 271 0072 3023     		movs	r3, #48
 272 0074 FB18     		adds	r3, r7, r3
 273 0076 0022     		movs	r2, #0
 274 0078 5A60     		str	r2, [r3, #4]
 275 007a 3023     		movs	r3, #48
 276 007c FB18     		adds	r3, r7, r3
 277 007e 0022     		movs	r2, #0
 278 0080 9A60     		str	r2, [r3, #8]
 279 0082 3023     		movs	r3, #48
 280 0084 FB18     		adds	r3, r7, r3
 281 0086 FA22     		movs	r2, #250
 282 0088 5200     		lsls	r2, r2, #1
 283 008a DA60     		str	r2, [r3, #12]
 284 008c 3023     		movs	r3, #48
 285 008e FB18     		adds	r3, r7, r3
 286 0090 FA22     		movs	r2, #250
 287 0092 5200     		lsls	r2, r2, #1
 288 0094 1A61     		str	r2, [r3, #16]
 289 0096 3023     		movs	r3, #48
 290 0098 FB18     		adds	r3, r7, r3
 291 009a 884A     		ldr	r2, .L19+12
 292 009c 5A61     		str	r2, [r3, #20]
 293 009e 3023     		movs	r3, #48
 294 00a0 FB18     		adds	r3, r7, r3
 295 00a2 874A     		ldr	r2, .L19+16
 296 00a4 9A61     		str	r2, [r3, #24]
 297 00a6 3023     		movs	r3, #48
 298 00a8 FB18     		adds	r3, r7, r3
 299 00aa 864A     		ldr	r2, .L19+20
 300 00ac DA61     		str	r2, [r3, #28]
 301 00ae 3023     		movs	r3, #48
 302 00b0 FB18     		adds	r3, r7, r3
 303 00b2 854A     		ldr	r2, .L19+24
 304 00b4 1A62     		str	r2, [r3, #32]
  80:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         &spoopy_sprite, // sprite
  81:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         0, 0, // Set velocity, x & y
  82:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         500, 500, // Set position, x & y
  83:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         draw_sprite_object,
  84:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         clear_sprite_object,
  85:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         move_sprite_object,
  86:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         set_sprite_object_speed,
  87:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     };
  88:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE_OBJECT spoopy_pointer = &spoopy;
 305              		.loc 1 88 0
 306 00b6 3023     		movs	r3, #48
 307 00b8 FB18     		adds	r3, r7, r3
 308 00ba 7B66     		str	r3, [r7, #100]
  89:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
  90:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     //init_spoopy(spoopy_pointer)
  91:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     SPRITE exit_sprite = {
 309              		.loc 1 91 0
 310 00bc 2823     		movs	r3, #40
 311 00be FB18     		adds	r3, r7, r3
 312 00c0 0022     		movs	r2, #0
 313 00c2 1A70     		strb	r2, [r3]
 314 00c4 2823     		movs	r3, #40
 315 00c6 FB18     		adds	r3, r7, r3
 316 00c8 0022     		movs	r2, #0
 317 00ca 5A70     		strb	r2, [r3, #1]
 318 00cc 2823     		movs	r3, #40
 319 00ce FB18     		adds	r3, r7, r3
 320 00d0 0022     		movs	r2, #0
 321 00d2 5A60     		str	r2, [r3, #4]
  92:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         0,
  93:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         0,
  94:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         {0}
  95:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     };
  96:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE exit_sprite_pointer = &exit_sprite;
 322              		.loc 1 96 0
 323 00d4 2823     		movs	r3, #40
 324 00d6 FB18     		adds	r3, r7, r3
 325 00d8 3B66     		str	r3, [r7, #96]
  97:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     load_sprite(exit_sprite_pointer, exit_bits, exit_width, exit_height);
 326              		.loc 1 97 0
 327 00da 7C49     		ldr	r1, .L19+28
 328 00dc 386E     		ldr	r0, [r7, #96]
 329 00de 1023     		movs	r3, #16
 330 00e0 1022     		movs	r2, #16
 331 00e2 FFF7FEFF 		bl	load_sprite
  98:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
  99:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     SPRITE_OBJECT exit = {
 332              		.loc 1 99 0
 333 00e6 3B1D     		adds	r3, r7, #4
 334 00e8 3A6E     		ldr	r2, [r7, #96]
 335 00ea 1A60     		str	r2, [r3]
 336 00ec 3B1D     		adds	r3, r7, #4
 337 00ee 0022     		movs	r2, #0
 338 00f0 5A60     		str	r2, [r3, #4]
 339 00f2 3B1D     		adds	r3, r7, #4
 340 00f4 0022     		movs	r2, #0
 341 00f6 9A60     		str	r2, [r3, #8]
 342 00f8 3B1D     		adds	r3, r7, #4
 343 00fa FA22     		movs	r2, #250
 344 00fc 5200     		lsls	r2, r2, #1
 345 00fe DA60     		str	r2, [r3, #12]
 346 0100 3B1D     		adds	r3, r7, #4
 347 0102 FA22     		movs	r2, #250
 348 0104 5200     		lsls	r2, r2, #1
 349 0106 1A61     		str	r2, [r3, #16]
 350 0108 3B1D     		adds	r3, r7, #4
 351 010a 6C4A     		ldr	r2, .L19+12
 352 010c 5A61     		str	r2, [r3, #20]
 353 010e 3B1D     		adds	r3, r7, #4
 354 0110 6B4A     		ldr	r2, .L19+16
 355 0112 9A61     		str	r2, [r3, #24]
 356 0114 3B1D     		adds	r3, r7, #4
 357 0116 6E4A     		ldr	r2, .L19+32
 358 0118 DA61     		str	r2, [r3, #28]
 359 011a 3B1D     		adds	r3, r7, #4
 360 011c 6D4A     		ldr	r2, .L19+36
 361 011e 1A62     		str	r2, [r3, #32]
 100:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         exit_sprite_pointer,
 101:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         0, 0,
 102:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         500, 500,
 103:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         draw_sprite_object,
 104:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         clear_sprite_object,
 105:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         dummy_function1,
 106:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         dummy_function2
 107:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     };
 108:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE_OBJECT exit_pointer = &exit;
 362              		.loc 1 108 0
 363 0120 3B1D     		adds	r3, r7, #4
 364 0122 FB65     		str	r3, [r7, #92]
 365              	.LBB2:
 109:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE_OBJECT wall_pointers[WALL_AMOUNT];
 110:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; i < WALL_AMOUNT; i++){
 366              		.loc 1 110 0
 367 0124 0023     		movs	r3, #0
 368 0126 FB66     		str	r3, [r7, #108]
 369 0128 09E0     		b	.L3
 370              	.L4:
 111:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         wall_pointers[i] = init_wall();
 371              		.loc 1 111 0 discriminator 3
 372 012a FFF7FEFF 		bl	init_wall
 373 012e 0100     		movs	r1, r0
 374 0130 3B1D     		adds	r3, r7, #4
 375 0132 FA6E     		ldr	r2, [r7, #108]
 376 0134 9200     		lsls	r2, r2, #2
 377 0136 D150     		str	r1, [r2, r3]
 110:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         wall_pointers[i] = init_wall();
 378              		.loc 1 110 0 discriminator 3
 379 0138 FB6E     		ldr	r3, [r7, #108]
 380 013a 0133     		adds	r3, r3, #1
 381 013c FB66     		str	r3, [r7, #108]
 382              	.L3:
 110:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         wall_pointers[i] = init_wall();
 383              		.loc 1 110 0 is_stmt 0 discriminator 1
 384 013e FB6E     		ldr	r3, [r7, #108]
 385 0140 002B     		cmp	r3, #0
 386 0142 F2DB     		blt	.L4
 387              	.LBE2:
 112:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 113:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 114:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     init_map_grid(spoopy_pointer, exit_pointer, wall_pointers);
 388              		.loc 1 114 0 is_stmt 1
 389 0144 3A1D     		adds	r2, r7, #4
 390 0146 F96D     		ldr	r1, [r7, #92]
 391 0148 7B6E     		ldr	r3, [r7, #100]
 392 014a 1800     		movs	r0, r3
 393 014c FFF7FEFF 		bl	init_map_grid
 115:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	
 116:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Draw pointers
 117:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 118:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->draw(spoopy_pointer);
 394              		.loc 1 118 0
 395 0150 7B6E     		ldr	r3, [r7, #100]
 396 0152 5B69     		ldr	r3, [r3, #20]
 397 0154 7A6E     		ldr	r2, [r7, #100]
 398 0156 1000     		movs	r0, r2
 399 0158 9847     		blx	r3
 400              	.LVL0:
 119:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 120:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 401              		.loc 1 120 0
 402 015a 1821     		movs	r1, #24
 403 015c 3F20     		movs	r0, #63
 404 015e FFF7FEFF 		bl	graphic_write_command
 121:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 405              		.loc 1 121 0
 406 0162 1821     		movs	r1, #24
 407 0164 C020     		movs	r0, #192
 408 0166 FFF7FEFF 		bl	graphic_write_command
 122:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  
 123:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     exit_pointer->draw(exit_pointer);
 409              		.loc 1 123 0
 410 016a FB6D     		ldr	r3, [r7, #92]
 411 016c 5B69     		ldr	r3, [r3, #20]
 412 016e FA6D     		ldr	r2, [r7, #92]
 413 0170 1000     		movs	r0, r2
 414 0172 9847     		blx	r3
 415              	.LVL1:
 416              	.LBB3:
 124:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; i < WALL_AMOUNT; i++){
 417              		.loc 1 124 0
 418 0174 0023     		movs	r3, #0
 419 0176 BB66     		str	r3, [r7, #104]
 420 0178 0DE0     		b	.L5
 421              	.L6:
 125:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         wall_pointers[i]->draw(wall_pointers[i]);
 422              		.loc 1 125 0 discriminator 3
 423 017a 3B1D     		adds	r3, r7, #4
 424 017c BA6E     		ldr	r2, [r7, #104]
 425 017e 9200     		lsls	r2, r2, #2
 426 0180 D358     		ldr	r3, [r2, r3]
 427 0182 5B69     		ldr	r3, [r3, #20]
 428 0184 3A1D     		adds	r2, r7, #4
 429 0186 B96E     		ldr	r1, [r7, #104]
 430 0188 8900     		lsls	r1, r1, #2
 431 018a 8A58     		ldr	r2, [r1, r2]
 432 018c 1000     		movs	r0, r2
 433 018e 9847     		blx	r3
 434              	.LVL2:
 124:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; i < WALL_AMOUNT; i++){
 435              		.loc 1 124 0 discriminator 3
 436 0190 BB6E     		ldr	r3, [r7, #104]
 437 0192 0133     		adds	r3, r3, #1
 438 0194 BB66     		str	r3, [r7, #104]
 439              	.L5:
 124:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; i < WALL_AMOUNT; i++){
 440              		.loc 1 124 0 is_stmt 0 discriminator 1
 441 0196 BB6E     		ldr	r3, [r7, #104]
 442 0198 002B     		cmp	r3, #0
 443 019a EEDB     		blt	.L6
 444              	.LBE3:
 126:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 127:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 128:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     GPIO_D.odrHigh = 0xF0;
 445              		.loc 1 128 0 is_stmt 1
 446 019c 4E4B     		ldr	r3, .L19+40
 447 019e F022     		movs	r2, #240
 448 01a0 5A75     		strb	r2, [r3, #21]
 449              	.L16:
 450              	.LBB4:
 129:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	while(1){
 130:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         GPIO_D.odrLow = GPIO_D.idrHigh;
 451              		.loc 1 130 0
 452 01a2 4D4B     		ldr	r3, .L19+40
 453 01a4 4C4A     		ldr	r2, .L19+40
 454 01a6 527C     		ldrb	r2, [r2, #17]
 455 01a8 D2B2     		uxtb	r2, r2
 456 01aa 1A75     		strb	r2, [r3, #20]
 131:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		keyboard_val = keyb();
 457              		.loc 1 131 0
 458 01ac FFF7FEFF 		bl	keyb
 459 01b0 0300     		movs	r3, r0
 460 01b2 DAB2     		uxtb	r2, r3
 461 01b4 494B     		ldr	r3, .L19+44
 462 01b6 1A70     		strb	r2, [r3]
 132:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		switch (keyboard_val){
 463              		.loc 1 132 0
 464 01b8 484B     		ldr	r3, .L19+44
 465 01ba 1B78     		ldrb	r3, [r3]
 466 01bc 042B     		cmp	r3, #4
 467 01be 0FD0     		beq	.L8
 468 01c0 02DC     		bgt	.L9
 469 01c2 022B     		cmp	r3, #2
 470 01c4 14D0     		beq	.L10
 471 01c6 22E0     		b	.L7
 472              	.L9:
 473 01c8 062B     		cmp	r3, #6
 474 01ca 02D0     		beq	.L11
 475 01cc 082B     		cmp	r3, #8
 476 01ce 17D0     		beq	.L12
 477 01d0 1DE0     		b	.L7
 478              	.L11:
 133:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 			case 6: spoopy_pointer->set_speed(spoopy_pointer, 1, 0); break;
 479              		.loc 1 133 0
 480 01d2 7B6E     		ldr	r3, [r7, #100]
 481 01d4 1B6A     		ldr	r3, [r3, #32]
 482 01d6 786E     		ldr	r0, [r7, #100]
 483 01d8 0022     		movs	r2, #0
 484 01da 0121     		movs	r1, #1
 485 01dc 9847     		blx	r3
 486              	.LVL3:
 487 01de 1DE0     		b	.L13
 488              	.L8:
 134:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 			case 4: spoopy_pointer->set_speed(spoopy_pointer, -1, 0); break;
 489              		.loc 1 134 0
 490 01e0 7B6E     		ldr	r3, [r7, #100]
 491 01e2 1B6A     		ldr	r3, [r3, #32]
 492 01e4 0122     		movs	r2, #1
 493 01e6 5142     		rsbs	r1, r2, #0
 494 01e8 786E     		ldr	r0, [r7, #100]
 495 01ea 0022     		movs	r2, #0
 496 01ec 9847     		blx	r3
 497              	.LVL4:
 498 01ee 15E0     		b	.L13
 499              	.L10:
 135:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 			case 2: spoopy_pointer->set_speed(spoopy_pointer, 0, -1); break;
 500              		.loc 1 135 0
 501 01f0 7B6E     		ldr	r3, [r7, #100]
 502 01f2 1B6A     		ldr	r3, [r3, #32]
 503 01f4 0122     		movs	r2, #1
 504 01f6 5242     		rsbs	r2, r2, #0
 505 01f8 786E     		ldr	r0, [r7, #100]
 506 01fa 0021     		movs	r1, #0
 507 01fc 9847     		blx	r3
 508              	.LVL5:
 509 01fe 0DE0     		b	.L13
 510              	.L12:
 136:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 			case 8: spoopy_pointer->set_speed(spoopy_pointer, 0, 1); break;
 511              		.loc 1 136 0
 512 0200 7B6E     		ldr	r3, [r7, #100]
 513 0202 1B6A     		ldr	r3, [r3, #32]
 514 0204 786E     		ldr	r0, [r7, #100]
 515 0206 0122     		movs	r2, #1
 516 0208 0021     		movs	r1, #0
 517 020a 9847     		blx	r3
 518              	.LVL6:
 519 020c 06E0     		b	.L13
 520              	.L7:
 137:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****             default: spoopy_pointer->set_speed(spoopy_pointer, 0, 0); break;
 521              		.loc 1 137 0
 522 020e 7B6E     		ldr	r3, [r7, #100]
 523 0210 1B6A     		ldr	r3, [r3, #32]
 524 0212 786E     		ldr	r0, [r7, #100]
 525 0214 0022     		movs	r2, #0
 526 0216 0021     		movs	r1, #0
 527 0218 9847     		blx	r3
 528              	.LVL7:
 529 021a C046     		nop
 530              	.L13:
 138:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		}
 139:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         position_checking(spoopy_pointer);
 531              		.loc 1 139 0
 532 021c 7B6E     		ldr	r3, [r7, #100]
 533 021e 1800     		movs	r0, r3
 534 0220 FFF7FEFF 		bl	position_checking
 140:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         update_sprite_object(spoopy_pointer);
 535              		.loc 1 140 0
 536 0224 7B6E     		ldr	r3, [r7, #100]
 537 0226 1800     		movs	r0, r3
 538 0228 FFF7FEFF 		bl	update_sprite_object
 141:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 539              		.loc 1 141 0
 540 022c 1821     		movs	r1, #24
 541 022e 3F20     		movs	r0, #63
 542 0230 FFF7FEFF 		bl	graphic_write_command
 142:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 543              		.loc 1 142 0
 544 0234 1821     		movs	r1, #24
 545 0236 C020     		movs	r0, #192
 546 0238 FFF7FEFF 		bl	graphic_write_command
 143:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		delay_milli(250);
 547              		.loc 1 143 0
 548 023c FA20     		movs	r0, #250
 549 023e FFF7FEFF 		bl	delay_milli
 144:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         if(win_state){
 550              		.loc 1 144 0
 551 0242 274B     		ldr	r3, .L19+48
 552 0244 1B78     		ldrb	r3, [r3]
 553 0246 002B     		cmp	r3, #0
 554 0248 00D1     		bne	.L18
 555              	.LBE4:
 129:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         GPIO_D.odrLow = GPIO_D.idrHigh;
 556              		.loc 1 129 0
 557 024a AAE7     		b	.L16
 558              	.L18:
 559              	.LBB5:
 145:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****             break;
 560              		.loc 1 145 0
 561 024c C046     		nop
 562              	.LBE5:
 146:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         }
 147:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	}
 148:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 149:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_clear_screen();
 563              		.loc 1 149 0
 564 024e FFF7FEFF 		bl	ascii_clear_screen
 150:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphic_clear_screen();
 565              		.loc 1 150 0
 566 0252 FFF7FEFF 		bl	graphic_clear_screen
 151:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 152:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->pos_x = (SCREEN_WIDTH / 2) - (spoopy_pointer->sprt->width / 2);
 567              		.loc 1 152 0
 568 0256 7B6E     		ldr	r3, [r7, #100]
 569 0258 1B68     		ldr	r3, [r3]
 570 025a 1B78     		ldrb	r3, [r3]
 571 025c 5B08     		lsrs	r3, r3, #1
 572 025e DBB2     		uxtb	r3, r3
 573 0260 1A00     		movs	r2, r3
 574 0262 4023     		movs	r3, #64
 575 0264 9A1A     		subs	r2, r3, r2
 576 0266 7B6E     		ldr	r3, [r7, #100]
 577 0268 DA60     		str	r2, [r3, #12]
 153:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->pos_y = (SCREEN_HEIGHT / 2) - (spoopy_pointer->sprt->height / 2);
 578              		.loc 1 153 0
 579 026a 7B6E     		ldr	r3, [r7, #100]
 580 026c 1B68     		ldr	r3, [r3]
 581 026e 5B78     		ldrb	r3, [r3, #1]
 582 0270 5B08     		lsrs	r3, r3, #1
 583 0272 DBB2     		uxtb	r3, r3
 584 0274 1A00     		movs	r2, r3
 585 0276 2023     		movs	r3, #32
 586 0278 9A1A     		subs	r2, r3, r2
 587 027a 7B6E     		ldr	r3, [r7, #100]
 588 027c 1A61     		str	r2, [r3, #16]
 154:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 155:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->draw(spoopy_pointer);
 589              		.loc 1 155 0
 590 027e 7B6E     		ldr	r3, [r7, #100]
 591 0280 5B69     		ldr	r3, [r3, #20]
 592 0282 7A6E     		ldr	r2, [r7, #100]
 593 0284 1000     		movs	r0, r2
 594 0286 9847     		blx	r3
 595              	.LVL8:
 156:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 157:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 1);
 596              		.loc 1 157 0
 597 0288 0121     		movs	r1, #1
 598 028a 0120     		movs	r0, #1
 599 028c FFF7FEFF 		bl	gotoxy
 158:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(victory_message1);
 600              		.loc 1 158 0
 601 0290 144B     		ldr	r3, .L19+52
 602 0292 1800     		movs	r0, r3
 603 0294 FFF7FEFF 		bl	ascii_write_string
 159:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 2);
 604              		.loc 1 159 0
 605 0298 0221     		movs	r1, #2
 606 029a 0120     		movs	r0, #1
 607 029c FFF7FEFF 		bl	gotoxy
 160:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(victory_message2);
 608              		.loc 1 160 0
 609 02a0 114B     		ldr	r3, .L19+56
 610 02a2 1800     		movs	r0, r3
 611 02a4 FFF7FEFF 		bl	ascii_write_string
 161:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 612              		.loc 1 161 0
 613 02a8 C046     		nop
 614 02aa BD46     		mov	sp, r7
 615 02ac 1CB0     		add	sp, sp, #112
 616              		@ sp needed
 617 02ae 80BD     		pop	{r7, pc}
 618              	.L20:
 619              		.align	2
 620              	.L19:
 621 02b0 00000000 		.word	start_message1
 622 02b4 00000000 		.word	start_message2
 623 02b8 00000000 		.word	spoop_bits
 624 02bc 00000000 		.word	draw_sprite_object
 625 02c0 00000000 		.word	clear_sprite_object
 626 02c4 00000000 		.word	move_sprite_object
 627 02c8 00000000 		.word	set_sprite_object_speed
 628 02cc 40000000 		.word	exit_bits
 629 02d0 00000000 		.word	dummy_function1
 630 02d4 00000000 		.word	dummy_function2
 631 02d8 000C0240 		.word	1073875968
 632 02dc 00000000 		.word	keyboard_val
 633 02e0 00000000 		.word	win_state
 634 02e4 00000000 		.word	victory_message1
 635 02e8 00000000 		.word	victory_message2
 636              		.cfi_endproc
 637              	.LFE1:
 639              		.align	1
 640              		.global	keyboard_interrupt_handler
 641              		.syntax unified
 642              		.code	16
 643              		.thumb_func
 644              		.fpu softvfp
 646              	keyboard_interrupt_handler:
 647              	.LFB2:
 162:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 163:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void keyboard_interrupt_handler(void){
 648              		.loc 1 163 0
 649              		.cfi_startproc
 650              		@ args = 0, pretend = 0, frame = 0
 651              		@ frame_needed = 1, uses_anonymous_args = 0
 652 02ec 80B5     		push	{r7, lr}
 653              		.cfi_def_cfa_offset 8
 654              		.cfi_offset 7, -8
 655              		.cfi_offset 14, -4
 656 02ee 00AF     		add	r7, sp, #0
 657              		.cfi_def_cfa_register 7
 164:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     if(EXTI.pr & INTERRUPT_TARGET_PINS){
 658              		.loc 1 164 0
 659 02f0 0D4B     		ldr	r3, .L24
 660 02f2 5B69     		ldr	r3, [r3, #20]
 661 02f4 6022     		movs	r2, #96
 662 02f6 1340     		ands	r3, r2
 663 02f8 12D0     		beq	.L23
 664              	.LBB6:
 165:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         keyboard_val = keyb();
 665              		.loc 1 165 0
 666 02fa FFF7FEFF 		bl	keyb
 667 02fe 0300     		movs	r3, r0
 668 0300 DAB2     		uxtb	r2, r3
 669 0302 0A4B     		ldr	r3, .L24+4
 670 0304 1A70     		strb	r2, [r3]
 166:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         GPIO_D.odrHigh = 0xF0;
 671              		.loc 1 166 0
 672 0306 0A4B     		ldr	r3, .L24+8
 673 0308 F022     		movs	r2, #240
 674 030a 5A75     		strb	r2, [r3, #21]
 167:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         
 168:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         EXTI.pr |= (EXTI.pr & INTERRUPT_TARGET_PINS);
 675              		.loc 1 168 0
 676 030c 064B     		ldr	r3, .L24
 677 030e 5B69     		ldr	r3, [r3, #20]
 678 0310 6022     		movs	r2, #96
 679 0312 1340     		ands	r3, r2
 680 0314 1900     		movs	r1, r3
 681 0316 044B     		ldr	r3, .L24
 682 0318 034A     		ldr	r2, .L24
 683 031a 5269     		ldr	r2, [r2, #20]
 684 031c 0A43     		orrs	r2, r1
 685 031e 5A61     		str	r2, [r3, #20]
 686              	.L23:
 687              	.LBE6:
 169:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 170:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 688              		.loc 1 170 0
 689 0320 C046     		nop
 690 0322 BD46     		mov	sp, r7
 691              		@ sp needed
 692 0324 80BD     		pop	{r7, pc}
 693              	.L25:
 694 0326 C046     		.align	2
 695              	.L24:
 696 0328 003C0140 		.word	1073822720
 697 032c 00000000 		.word	keyboard_val
 698 0330 000C0240 		.word	1073875968
 699              		.cfi_endproc
 700              	.LFE2:
 702              		.align	1
 703              		.global	position_checking
 704              		.syntax unified
 705              		.code	16
 706              		.thumb_func
 707              		.fpu softvfp
 709              	position_checking:
 710              	.LFB3:
 171:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 172:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void position_checking(PSPRITE_OBJECT spoopy_pointer){
 711              		.loc 1 172 0
 712              		.cfi_startproc
 713              		@ args = 0, pretend = 0, frame = 24
 714              		@ frame_needed = 1, uses_anonymous_args = 0
 715 0334 90B5     		push	{r4, r7, lr}
 716              		.cfi_def_cfa_offset 12
 717              		.cfi_offset 4, -12
 718              		.cfi_offset 7, -8
 719              		.cfi_offset 14, -4
 720 0336 87B0     		sub	sp, sp, #28
 721              		.cfi_def_cfa_offset 40
 722 0338 00AF     		add	r7, sp, #0
 723              		.cfi_def_cfa_register 7
 724 033a 7860     		str	r0, [r7, #4]
 173:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_current_x = (spoopy_pointer->pos_x + 1) / GRID_WIDTH;
 725              		.loc 1 173 0
 726 033c 7B68     		ldr	r3, [r7, #4]
 727 033e DB68     		ldr	r3, [r3, #12]
 728 0340 0133     		adds	r3, r3, #1
 729 0342 002B     		cmp	r3, #0
 730 0344 00DA     		bge	.L27
 731 0346 0F33     		adds	r3, r3, #15
 732              	.L27:
 733 0348 1B11     		asrs	r3, r3, #4
 734 034a 7B61     		str	r3, [r7, #20]
 174:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_current_y = (spoopy_pointer->pos_y + 1) / GRID_HEIGHT;
 735              		.loc 1 174 0
 736 034c 7B68     		ldr	r3, [r7, #4]
 737 034e 1B69     		ldr	r3, [r3, #16]
 738 0350 0133     		adds	r3, r3, #1
 739 0352 002B     		cmp	r3, #0
 740 0354 00DA     		bge	.L28
 741 0356 0F33     		adds	r3, r3, #15
 742              	.L28:
 743 0358 1B11     		asrs	r3, r3, #4
 744 035a 3B61     		str	r3, [r7, #16]
 175:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 176:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int next_space = map_grid[spoopy_current_x + spoopy_pointer->dir_x][spoopy_current_y + spoopy_p
 745              		.loc 1 176 0
 746 035c 7B68     		ldr	r3, [r7, #4]
 747 035e 5A68     		ldr	r2, [r3, #4]
 748 0360 7B69     		ldr	r3, [r7, #20]
 749 0362 D218     		adds	r2, r2, r3
 750 0364 7B68     		ldr	r3, [r7, #4]
 751 0366 9968     		ldr	r1, [r3, #8]
 752 0368 3B69     		ldr	r3, [r7, #16]
 753 036a CB18     		adds	r3, r1, r3
 754 036c 1749     		ldr	r1, .L35
 755 036e 9200     		lsls	r2, r2, #2
 756 0370 8A18     		adds	r2, r1, r2
 757 0372 D35C     		ldrb	r3, [r2, r3]
 758 0374 FB60     		str	r3, [r7, #12]
 177:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 178:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set velocity to 0 if Spoopy is about to mave into a wall, otherwise multiply it by an apropr
 179:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     switch(next_space){
 759              		.loc 1 179 0
 760 0376 FB68     		ldr	r3, [r7, #12]
 761 0378 022B     		cmp	r3, #2
 762 037a 08D0     		beq	.L30
 763 037c 032B     		cmp	r3, #3
 764 037e 09D1     		bne	.L29
 180:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         case WALL_SPACE: spoopy_pointer->set_speed(spoopy_pointer, 0, 0); break;
 765              		.loc 1 180 0
 766 0380 7B68     		ldr	r3, [r7, #4]
 767 0382 1B6A     		ldr	r3, [r3, #32]
 768 0384 7868     		ldr	r0, [r7, #4]
 769 0386 0022     		movs	r2, #0
 770 0388 0021     		movs	r1, #0
 771 038a 9847     		blx	r3
 772              	.LVL9:
 773 038c 0EE0     		b	.L32
 774              	.L30:
 181:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         case EXIT_SPACE: win_state = 1;
 775              		.loc 1 181 0
 776 038e 104B     		ldr	r3, .L35+4
 777 0390 0122     		movs	r2, #1
 778 0392 1A70     		strb	r2, [r3]
 779              	.L29:
 182:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         default: spoopy_pointer->set_speed(spoopy_pointer, spoopy_pointer->dir_x * GRID_WIDTH, spoo
 780              		.loc 1 182 0
 781 0394 7B68     		ldr	r3, [r7, #4]
 782 0396 1C6A     		ldr	r4, [r3, #32]
 783 0398 7B68     		ldr	r3, [r7, #4]
 784 039a 5B68     		ldr	r3, [r3, #4]
 785 039c 1901     		lsls	r1, r3, #4
 786 039e 7B68     		ldr	r3, [r7, #4]
 787 03a0 9B68     		ldr	r3, [r3, #8]
 788 03a2 1A01     		lsls	r2, r3, #4
 789 03a4 7B68     		ldr	r3, [r7, #4]
 790 03a6 1800     		movs	r0, r3
 791 03a8 A047     		blx	r4
 792              	.LVL10:
 793 03aa C046     		nop
 794              	.L32:
 183:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 184:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 185:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     if(map_grid[spoopy_current_x][spoopy_current_y] == EXIT_SPACE){
 795              		.loc 1 185 0
 796 03ac 074A     		ldr	r2, .L35
 797 03ae 7B69     		ldr	r3, [r7, #20]
 798 03b0 9B00     		lsls	r3, r3, #2
 799 03b2 D218     		adds	r2, r2, r3
 800 03b4 3B69     		ldr	r3, [r7, #16]
 801 03b6 D318     		adds	r3, r2, r3
 802 03b8 1B78     		ldrb	r3, [r3]
 803 03ba 022B     		cmp	r3, #2
 804 03bc 02D1     		bne	.L34
 186:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         win_state = 1;
 805              		.loc 1 186 0
 806 03be 044B     		ldr	r3, .L35+4
 807 03c0 0122     		movs	r2, #1
 808 03c2 1A70     		strb	r2, [r3]
 809              	.L34:
 187:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 188:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 810              		.loc 1 188 0
 811 03c4 C046     		nop
 812 03c6 BD46     		mov	sp, r7
 813 03c8 07B0     		add	sp, sp, #28
 814              		@ sp needed
 815 03ca 90BD     		pop	{r4, r7, pc}
 816              	.L36:
 817              		.align	2
 818              	.L35:
 819 03cc 00000000 		.word	map_grid
 820 03d0 00000000 		.word	win_state
 821              		.cfi_endproc
 822              	.LFE3:
 824              		.section	.rodata
 825              		.align	2
 826              	.LC0:
 827 0000 01000000 		.word	1
 828 0004 01000000 		.word	1
 829 0008 01000000 		.word	1
 830 000c 03000000 		.word	3
 831 0010 03000000 		.word	3
 832 0014 03000000 		.word	3
 833 0018 05000000 		.word	5
 834 001c 05000000 		.word	5
 835 0020 05000000 		.word	5
 836 0024 06000000 		.word	6
 837              		.align	2
 838              	.LC1:
 839 0028 00000000 		.word	0
 840 002c 01000000 		.word	1
 841 0030 02000000 		.word	2
 842 0034 03000000 		.word	3
 843 0038 02000000 		.word	2
 844 003c 01000000 		.word	1
 845 0040 00000000 		.word	0
 846 0044 01000000 		.word	1
 847 0048 02000000 		.word	2
 848 004c 02000000 		.word	2
 849              		.text
 850              		.align	1
 851              		.global	init_map_grid
 852              		.syntax unified
 853              		.code	16
 854              		.thumb_func
 855              		.fpu softvfp
 857              	init_map_grid:
 858              	.LFB4:
 189:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 190:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void init_map_grid(PSPRITE_OBJECT spoopy, PSPRITE_OBJECT exit, PSPRITE_OBJECT walls[]){
 859              		.loc 1 190 0
 860              		.cfi_startproc
 861              		@ args = 0, pretend = 0, frame = 128
 862              		@ frame_needed = 1, uses_anonymous_args = 0
 863 03d4 90B5     		push	{r4, r7, lr}
 864              		.cfi_def_cfa_offset 12
 865              		.cfi_offset 4, -12
 866              		.cfi_offset 7, -8
 867              		.cfi_offset 14, -4
 868 03d6 A1B0     		sub	sp, sp, #132
 869              		.cfi_def_cfa_offset 144
 870 03d8 00AF     		add	r7, sp, #0
 871              		.cfi_def_cfa_register 7
 872 03da F860     		str	r0, [r7, #12]
 873 03dc B960     		str	r1, [r7, #8]
 874 03de 7A60     		str	r2, [r7, #4]
 875              	.LBB7:
 191:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int x = 0; x < MAP_WIDTH; x++){
 876              		.loc 1 191 0
 877 03e0 0023     		movs	r3, #0
 878 03e2 FB67     		str	r3, [r7, #124]
 879 03e4 13E0     		b	.L38
 880              	.L41:
 881              	.LBB8:
 192:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         for(int y = 0; y < MAP_HEIGHT; y++){
 882              		.loc 1 192 0
 883 03e6 0023     		movs	r3, #0
 884 03e8 BB67     		str	r3, [r7, #120]
 885 03ea 0AE0     		b	.L39
 886              	.L40:
 193:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****             map_grid[x][y] = EMPTY_SPACE;
 887              		.loc 1 193 0 discriminator 3
 888 03ec 444A     		ldr	r2, .L46
 889 03ee FB6F     		ldr	r3, [r7, #124]
 890 03f0 9B00     		lsls	r3, r3, #2
 891 03f2 D218     		adds	r2, r2, r3
 892 03f4 BB6F     		ldr	r3, [r7, #120]
 893 03f6 D318     		adds	r3, r2, r3
 894 03f8 0022     		movs	r2, #0
 895 03fa 1A70     		strb	r2, [r3]
 192:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         for(int y = 0; y < MAP_HEIGHT; y++){
 896              		.loc 1 192 0 discriminator 3
 897 03fc BB6F     		ldr	r3, [r7, #120]
 898 03fe 0133     		adds	r3, r3, #1
 899 0400 BB67     		str	r3, [r7, #120]
 900              	.L39:
 192:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         for(int y = 0; y < MAP_HEIGHT; y++){
 901              		.loc 1 192 0 is_stmt 0 discriminator 1
 902 0402 BB6F     		ldr	r3, [r7, #120]
 903 0404 032B     		cmp	r3, #3
 904 0406 F1DD     		ble	.L40
 905              	.LBE8:
 191:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int x = 0; x < MAP_WIDTH; x++){
 906              		.loc 1 191 0 is_stmt 1 discriminator 2
 907 0408 FB6F     		ldr	r3, [r7, #124]
 908 040a 0133     		adds	r3, r3, #1
 909 040c FB67     		str	r3, [r7, #124]
 910              	.L38:
 191:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int x = 0; x < MAP_WIDTH; x++){
 911              		.loc 1 191 0 is_stmt 0 discriminator 1
 912 040e FB6F     		ldr	r3, [r7, #124]
 913 0410 072B     		cmp	r3, #7
 914 0412 E8DD     		ble	.L41
 915              	.LBE7:
 194:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         }
 195:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 196:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 197:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set Spoopy's starting position
 198:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_x = 0;
 916              		.loc 1 198 0 is_stmt 1
 917 0414 0023     		movs	r3, #0
 918 0416 3B67     		str	r3, [r7, #112]
 199:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_y = 0;
 919              		.loc 1 199 0
 920 0418 0023     		movs	r3, #0
 921 041a FB66     		str	r3, [r7, #108]
 200:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     map_grid[spoopy_x][spoopy_y] = SPOOPY_SPACE;
 922              		.loc 1 200 0
 923 041c 384A     		ldr	r2, .L46
 924 041e 3B6F     		ldr	r3, [r7, #112]
 925 0420 9B00     		lsls	r3, r3, #2
 926 0422 D218     		adds	r2, r2, r3
 927 0424 FB6E     		ldr	r3, [r7, #108]
 928 0426 D318     		adds	r3, r2, r3
 929 0428 0122     		movs	r2, #1
 930 042a 1A70     		strb	r2, [r3]
 201:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     spoopy->pos_x = spoopy_x * GRID_WIDTH;
 931              		.loc 1 201 0
 932 042c 3B6F     		ldr	r3, [r7, #112]
 933 042e 1A01     		lsls	r2, r3, #4
 934 0430 FB68     		ldr	r3, [r7, #12]
 935 0432 DA60     		str	r2, [r3, #12]
 202:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     spoopy->pos_y = spoopy_y * GRID_HEIGHT;
 936              		.loc 1 202 0
 937 0434 FB6E     		ldr	r3, [r7, #108]
 938 0436 1A01     		lsls	r2, r3, #4
 939 0438 FB68     		ldr	r3, [r7, #12]
 940 043a 1A61     		str	r2, [r3, #16]
 203:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 204:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set exit's starting position
 205:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int exit_x = MAP_WIDTH - 1;
 941              		.loc 1 205 0
 942 043c 0723     		movs	r3, #7
 943 043e BB66     		str	r3, [r7, #104]
 206:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int exit_y = MAP_HEIGHT - 1;
 944              		.loc 1 206 0
 945 0440 0323     		movs	r3, #3
 946 0442 7B66     		str	r3, [r7, #100]
 207:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     map_grid[exit_x][exit_y] = EXIT_SPACE;
 947              		.loc 1 207 0
 948 0444 2E4A     		ldr	r2, .L46
 949 0446 BB6E     		ldr	r3, [r7, #104]
 950 0448 9B00     		lsls	r3, r3, #2
 951 044a D218     		adds	r2, r2, r3
 952 044c 7B6E     		ldr	r3, [r7, #100]
 953 044e D318     		adds	r3, r2, r3
 954 0450 0222     		movs	r2, #2
 955 0452 1A70     		strb	r2, [r3]
 208:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     exit->pos_x = exit_x * GRID_WIDTH;
 956              		.loc 1 208 0
 957 0454 BB6E     		ldr	r3, [r7, #104]
 958 0456 1A01     		lsls	r2, r3, #4
 959 0458 BB68     		ldr	r3, [r7, #8]
 960 045a DA60     		str	r2, [r3, #12]
 209:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     exit->pos_y = exit_y * GRID_HEIGHT;
 961              		.loc 1 209 0
 962 045c 7B6E     		ldr	r3, [r7, #100]
 963 045e 1A01     		lsls	r2, r3, #4
 964 0460 BB68     		ldr	r3, [r7, #8]
 965 0462 1A61     		str	r2, [r3, #16]
 210:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 211:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set walls' starting positions
 212:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int wall_x[] = {1, 1, 1, 3, 3, 3, 5, 5, 5, 6};
 966              		.loc 1 212 0
 967 0464 3C23     		movs	r3, #60
 968 0466 FB18     		adds	r3, r7, r3
 969 0468 264A     		ldr	r2, .L46+4
 970 046a 13CA     		ldmia	r2!, {r0, r1, r4}
 971 046c 13C3     		stmia	r3!, {r0, r1, r4}
 972 046e 13CA     		ldmia	r2!, {r0, r1, r4}
 973 0470 13C3     		stmia	r3!, {r0, r1, r4}
 974 0472 13CA     		ldmia	r2!, {r0, r1, r4}
 975 0474 13C3     		stmia	r3!, {r0, r1, r4}
 976 0476 1268     		ldr	r2, [r2]
 977 0478 1A60     		str	r2, [r3]
 213:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int wall_y[] = {0, 1, 2, 3, 2, 1, 0, 1, 2, 2};
 978              		.loc 1 213 0
 979 047a 1423     		movs	r3, #20
 980 047c FB18     		adds	r3, r7, r3
 981 047e 224A     		ldr	r2, .L46+8
 982 0480 13CA     		ldmia	r2!, {r0, r1, r4}
 983 0482 13C3     		stmia	r3!, {r0, r1, r4}
 984 0484 13CA     		ldmia	r2!, {r0, r1, r4}
 985 0486 13C3     		stmia	r3!, {r0, r1, r4}
 986 0488 13CA     		ldmia	r2!, {r0, r1, r4}
 987 048a 13C3     		stmia	r3!, {r0, r1, r4}
 988 048c 1268     		ldr	r2, [r2]
 989 048e 1A60     		str	r2, [r3]
 990              	.LBB9:
 214:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; (i < sizeof(wall_x)) && (i < WALL_AMOUNT); i++){
 991              		.loc 1 214 0
 992 0490 0023     		movs	r3, #0
 993 0492 7B67     		str	r3, [r7, #116]
 994 0494 29E0     		b	.L42
 995              	.L44:
 215:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         map_grid[wall_x[i]][wall_y[i]] = WALL_SPACE;
 996              		.loc 1 215 0 discriminator 4
 997 0496 3C23     		movs	r3, #60
 998 0498 FB18     		adds	r3, r7, r3
 999 049a 7A6F     		ldr	r2, [r7, #116]
 1000 049c 9200     		lsls	r2, r2, #2
 1001 049e D258     		ldr	r2, [r2, r3]
 1002 04a0 1423     		movs	r3, #20
 1003 04a2 FB18     		adds	r3, r7, r3
 1004 04a4 796F     		ldr	r1, [r7, #116]
 1005 04a6 8900     		lsls	r1, r1, #2
 1006 04a8 CB58     		ldr	r3, [r1, r3]
 1007 04aa 1549     		ldr	r1, .L46
 1008 04ac 9200     		lsls	r2, r2, #2
 1009 04ae 8A18     		adds	r2, r1, r2
 1010 04b0 0321     		movs	r1, #3
 1011 04b2 D154     		strb	r1, [r2, r3]
 216:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         walls[i]->pos_x = wall_x[i] * GRID_WIDTH;
 1012              		.loc 1 216 0 discriminator 4
 1013 04b4 7B6F     		ldr	r3, [r7, #116]
 1014 04b6 9B00     		lsls	r3, r3, #2
 1015 04b8 7A68     		ldr	r2, [r7, #4]
 1016 04ba D318     		adds	r3, r2, r3
 1017 04bc 1B68     		ldr	r3, [r3]
 1018 04be 3C22     		movs	r2, #60
 1019 04c0 BA18     		adds	r2, r7, r2
 1020 04c2 796F     		ldr	r1, [r7, #116]
 1021 04c4 8900     		lsls	r1, r1, #2
 1022 04c6 8A58     		ldr	r2, [r1, r2]
 1023 04c8 1201     		lsls	r2, r2, #4
 1024 04ca DA60     		str	r2, [r3, #12]
 217:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         walls[i]->pos_y = wall_y[i] * GRID_HEIGHT;
 1025              		.loc 1 217 0 discriminator 4
 1026 04cc 7B6F     		ldr	r3, [r7, #116]
 1027 04ce 9B00     		lsls	r3, r3, #2
 1028 04d0 7A68     		ldr	r2, [r7, #4]
 1029 04d2 D318     		adds	r3, r2, r3
 1030 04d4 1B68     		ldr	r3, [r3]
 1031 04d6 1422     		movs	r2, #20
 1032 04d8 BA18     		adds	r2, r7, r2
 1033 04da 796F     		ldr	r1, [r7, #116]
 1034 04dc 8900     		lsls	r1, r1, #2
 1035 04de 8A58     		ldr	r2, [r1, r2]
 1036 04e0 1201     		lsls	r2, r2, #4
 1037 04e2 1A61     		str	r2, [r3, #16]
 214:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         map_grid[wall_x[i]][wall_y[i]] = WALL_SPACE;
 1038              		.loc 1 214 0 discriminator 4
 1039 04e4 7B6F     		ldr	r3, [r7, #116]
 1040 04e6 0133     		adds	r3, r3, #1
 1041 04e8 7B67     		str	r3, [r7, #116]
 1042              	.L42:
 214:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         map_grid[wall_x[i]][wall_y[i]] = WALL_SPACE;
 1043              		.loc 1 214 0 is_stmt 0 discriminator 1
 1044 04ea 7B6F     		ldr	r3, [r7, #116]
 1045 04ec 272B     		cmp	r3, #39
 1046 04ee 02D8     		bhi	.L45
 214:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         map_grid[wall_x[i]][wall_y[i]] = WALL_SPACE;
 1047              		.loc 1 214 0 discriminator 3
 1048 04f0 7B6F     		ldr	r3, [r7, #116]
 1049 04f2 002B     		cmp	r3, #0
 1050 04f4 CFDB     		blt	.L44
 1051              	.L45:
 1052              	.LBE9:
 218:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 219:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 1053              		.loc 1 219 0 is_stmt 1
 1054 04f6 C046     		nop
 1055 04f8 BD46     		mov	sp, r7
 1056 04fa 21B0     		add	sp, sp, #132
 1057              		@ sp needed
 1058 04fc 90BD     		pop	{r4, r7, pc}
 1059              	.L47:
 1060 04fe C046     		.align	2
 1061              	.L46:
 1062 0500 00000000 		.word	map_grid
 1063 0504 00000000 		.word	.LC0
 1064 0508 28000000 		.word	.LC1
 1065              		.cfi_endproc
 1066              	.LFE4:
 1068              		.align	1
 1069              		.global	app_init
 1070              		.syntax unified
 1071              		.code	16
 1072              		.thumb_func
 1073              		.fpu softvfp
 1075              	app_init:
 1076              	.LFB5:
 220:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 221:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void app_init(void){
 1077              		.loc 1 221 0
 1078              		.cfi_startproc
 1079              		@ args = 0, pretend = 0, frame = 0
 1080              		@ frame_needed = 1, uses_anonymous_args = 0
 1081 050c 80B5     		push	{r7, lr}
 1082              		.cfi_def_cfa_offset 8
 1083              		.cfi_offset 7, -8
 1084              		.cfi_offset 14, -4
 1085 050e 00AF     		add	r7, sp, #0
 1086              		.cfi_def_cfa_register 7
 222:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #ifdef USBDM
 223:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	*((unsigned long*) 0x40023830) = 0x18;
 1087              		.loc 1 223 0
 1088 0510 204B     		ldr	r3, .L49
 1089 0512 1822     		movs	r2, #24
 1090 0514 1A60     		str	r2, [r3]
 224:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	__asm volatile( 
 1091              		.loc 1 224 0
 1092              		.syntax divided
 1093              	@ 224 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_biz
 1094 0516 2A48     		 LDR R0, =0x08000209
 1095 0518 8047     	 BLX R0
 1096              	
 1097              	@ 0 "" 2
 225:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		" LDR R0, =0x08000209\n"
 226:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		" BLX R0\n"
 227:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		);
 228:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #endif
 229:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 230:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     GPIO_D.moder &= 0xFFFF0000;
 1098              		.loc 1 230 0
 1099              		.thumb
 1100              		.syntax unified
 1101 051a 1F4B     		ldr	r3, .L49+4
 1102 051c 1E4A     		ldr	r2, .L49+4
 1103 051e 1268     		ldr	r2, [r2]
 1104 0520 120C     		lsrs	r2, r2, #16
 1105 0522 1204     		lsls	r2, r2, #16
 1106 0524 1A60     		str	r2, [r3]
 231:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     GPIO_D.moder |= 0x00005555;
 1107              		.loc 1 231 0
 1108 0526 1C4B     		ldr	r3, .L49+4
 1109 0528 1B4A     		ldr	r2, .L49+4
 1110 052a 1268     		ldr	r2, [r2]
 1111 052c 1B49     		ldr	r1, .L49+8
 1112 052e 0A43     		orrs	r2, r1
 1113 0530 1A60     		str	r2, [r3]
 232:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 233:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphicdisplay_init();
 1114              		.loc 1 233 0
 1115 0532 FFF7FEFF 		bl	graphicdisplay_init
 234:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     asciidisplay_init();
 1116              		.loc 1 234 0
 1117 0536 FFF7FEFF 		bl	asciidisplay_init
 235:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphic_initialize();
 1118              		.loc 1 235 0
 1119 053a FFF7FEFF 		bl	graphic_initialize
 236:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 237:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     keyboard_init();
 1120              		.loc 1 237 0
 1121 053e FFF7FEFF 		bl	keyboard_init
 238:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 239:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // *** Interrupt init ***
 240:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set port D pin 8-11 as interrupts
 241:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     SYSCFG.exticr3 = 0x3333;
 1122              		.loc 1 241 0
 1123 0542 174B     		ldr	r3, .L49+12
 1124 0544 174A     		ldr	r2, .L49+16
 1125 0546 1A61     		str	r2, [r3, #16]
 242:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 243:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set pin 8-11 as interrupts on both flanks
 244:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     EXTI.imr = INTERRUPT_TARGET_PINS;
 1126              		.loc 1 244 0
 1127 0548 174B     		ldr	r3, .L49+20
 1128 054a 6022     		movs	r2, #96
 1129 054c 1A60     		str	r2, [r3]
 245:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     EXTI.ftsr |= INTERRUPT_TARGET_PINS;
 1130              		.loc 1 245 0
 1131 054e 164B     		ldr	r3, .L49+20
 1132 0550 154A     		ldr	r2, .L49+20
 1133 0552 D268     		ldr	r2, [r2, #12]
 1134 0554 6021     		movs	r1, #96
 1135 0556 0A43     		orrs	r2, r1
 1136 0558 DA60     		str	r2, [r3, #12]
 246:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     EXTI.rtsr |= INTERRUPT_TARGET_PINS;
 1137              		.loc 1 246 0
 1138 055a 134B     		ldr	r3, .L49+20
 1139 055c 124A     		ldr	r2, .L49+20
 1140 055e 9268     		ldr	r2, [r2, #8]
 1141 0560 6021     		movs	r1, #96
 1142 0562 0A43     		orrs	r2, r1
 1143 0564 9A60     		str	r2, [r3, #8]
 247:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 248:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set up interrupt vector
 249:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     *((void (**) (void))0x2001C09C) = keyboard_interrupt_handler;
 1144              		.loc 1 249 0
 1145 0566 114B     		ldr	r3, .L49+24
 1146 0568 114A     		ldr	r2, .L49+28
 1147 056a 1A60     		str	r2, [r3]
 250:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     *((void (**) (void))0x2001C0E0) = keyboard_interrupt_handler;
 1148              		.loc 1 250 0
 1149 056c 114B     		ldr	r3, .L49+32
 1150 056e 104A     		ldr	r2, .L49+28
 1151 0570 1A60     		str	r2, [r3]
 251:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 252:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Enable interrupt vectors
 253:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     NVIC_ISER0 |= (1 << 23);
 1152              		.loc 1 253 0
 1153 0572 114B     		ldr	r3, .L49+36
 1154 0574 104A     		ldr	r2, .L49+36
 1155 0576 1268     		ldr	r2, [r2]
 1156 0578 8021     		movs	r1, #128
 1157 057a 0904     		lsls	r1, r1, #16
 1158 057c 0A43     		orrs	r2, r1
 1159 057e 1A60     		str	r2, [r3]
 254:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     NVIC_ISER1 |= (1 << (40 - 32));
 1160              		.loc 1 254 0
 1161 0580 0E4B     		ldr	r3, .L49+40
 1162 0582 0E4A     		ldr	r2, .L49+40
 1163 0584 1268     		ldr	r2, [r2]
 1164 0586 8021     		movs	r1, #128
 1165 0588 4900     		lsls	r1, r1, #1
 1166 058a 0A43     		orrs	r2, r1
 1167 058c 1A60     		str	r2, [r3]
 255:C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 1168              		.loc 1 255 0
 1169 058e C046     		nop
 1170 0590 BD46     		mov	sp, r7
 1171              		@ sp needed
 1172 0592 80BD     		pop	{r7, pc}
 1173              	.L50:
 1174              		.align	2
 1175              	.L49:
 1176 0594 30380240 		.word	1073887280
 1177 0598 000C0240 		.word	1073875968
 1178 059c 55550000 		.word	21845
 1179 05a0 00380140 		.word	1073821696
 1180 05a4 33330000 		.word	13107
 1181 05a8 003C0140 		.word	1073822720
 1182 05ac 9CC00120 		.word	536985756
 1183 05b0 00000000 		.word	keyboard_interrupt_handler
 1184 05b4 E0C00120 		.word	536985824
 1185 05b8 00E100E0 		.word	-536813312
 1186 05bc 04E100E0 		.word	-536813308
 1187              		.cfi_endproc
 1188              	.LFE5:
 1190              	.Letext0:
 1191              		.file 2 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_
 1192              		.file 3 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_
 1193              		.file 4 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_
 1194              		.file 5 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_
 1195              		.file 6 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_
 1196              		.file 7 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_
 1197              		.file 8 "C:/Users/lahtig/Downloads/Mop-DAT017-master/Mop-DAT017-master/Labs and exercises/spoopys_
