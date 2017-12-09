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
 134              		.file 1 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/startup.c"
   1:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** /*
   2:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  * 	startup.c
   3:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  *
   4:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****  */
   5:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "gpio.h"
   6:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "syscfg.h"
   7:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "exti.h"
   8:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #include "sprites.h"
   9:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  10:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define INTERRUPT_TARGET_PINS 0x0F000000
  11:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define NVIC_ISER0 *((volatile unsigned int *) 0xE000E100)
  12:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define NVIC_ISER1 *((volatile unsigned int *) 0xE000E104)
  13:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  14:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define SCREEN_WIDTH 128
  15:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define SCREEN_HEIGHT 64
  16:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  17:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define GRID_WIDTH 16
  18:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define GRID_HEIGHT 16
  19:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  20:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define EMPTY_SPACE 0
  21:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define SPOOPY_SPACE 1
  22:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define EXIT_SPACE 2
  23:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define WALL_SPACE 3
  24:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  25:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define MAP_WIDTH (SCREEN_WIDTH / GRID_WIDTH) // 8
  26:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define MAP_HEIGHT (SCREEN_HEIGHT / GRID_HEIGHT) // 4
  27:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #define WALL_AMOUNT (MAP_WIDTH * MAP_HEIGHT) // 32
  28:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  29:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  30:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void app_init(void);
  31:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void keyboard_interrupt_handler(void);
  32:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void position_checking(PSPRITE_OBJECT);
  33:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void init_map_grid(PSPRITE_OBJECT, PSPRITE_OBJECT, PSPRITE_OBJECT[]);
  34:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  35:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char keyboard_val = 0;
  36:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char map_grid[MAP_WIDTH][MAP_HEIGHT];
  37:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  38:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char win_state = 0;
  39:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  40:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char start_message1[] = "Spoopy's";
  41:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char start_message2[] = "bizarre adventure";
  42:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  43:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char victory_message1[] = "Congratulations!";
  44:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** unsigned char victory_message2[] = "You win!";
  45:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  46:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void startup(void){
 135              		.loc 1 46 0
 136              		.cfi_startproc
 137              		@ Naked Function: prologue and epilogue provided by programmer.
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 1, uses_anonymous_args = 0
  47:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** __asm volatile(
 140              		.loc 1 47 0
 141              		.syntax divided
 142              	@ 47 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/startup.c" 1
 143 0000 0248     		 LDR R0,=0x2001C000
 144 0002 8546     	 MOV SP,R0
 145 0004 FFF7FEFF 	 BL main
 146 0008 FEE7     	_exit: B .
 147              	
 148              	@ 0 "" 2
  48:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  49:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	" MOV SP,R0\n"
  50:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	" BL main\n"				/* call main */
  51:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	"_exit: B .\n"				/* never return */
  52:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	) ;
  53:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 149              		.loc 1 53 0
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
  54:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
  55:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void main(void){
 203              		.loc 1 55 0
 204              		.cfi_startproc
 205              		@ args = 0, pretend = 0, frame = 144
 206              		@ frame_needed = 1, uses_anonymous_args = 0
 207 0000 80B5     		push	{r7, lr}
 208              		.cfi_def_cfa_offset 8
 209              		.cfi_offset 7, -8
 210              		.cfi_offset 14, -4
 211 0002 A4B0     		sub	sp, sp, #144
 212              		.cfi_def_cfa_offset 152
 213 0004 00AF     		add	r7, sp, #0
 214              		.cfi_def_cfa_register 7
  56:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     app_init();
 215              		.loc 1 56 0
 216 0006 FFF7FEFF 		bl	app_init
  57:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     //sprites_init();
  58:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	
  59:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     //extern OBJECT spoopy;
  60:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     //extern OBJECT portal;
  61:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     /*GEOMETRY spoopy_geometry = {
  62:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		32, // numpoints
  63:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		spoopy_width, spoopy_height, // Size x and y
  64:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		// px
  65:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		spoopy_bits
  66:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	};
  67:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	
  68:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	OBJECT spoopy = {
  69:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		&spoopy_geometry,
  70:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		0, 0,
  71:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		1, 2,
  72:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		draw_sprite_object,
  73:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		clear_sprite_object,
  74:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		move_sprite_object,
  75:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		set_sprite_object_speed
  76:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	};
  77:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	
  78:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	GEOMETRY portal_geometry = {
  79:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		32,
  80:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		portal_width, portal_height,
  81:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		portal_bits
  82:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	};
  83:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	
  84:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	OBJECT portal = {
  85:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		&portal_geometry,
  86:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		0, 0,
  87:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		1, 1,
  88:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		draw_sprite_object,
  89:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		clear_sprite_object,
  90:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		move_sprite_object,
  91:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		set_sprite_object_speed
  92:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	};
  93:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	POBJECT p = &spoopy;*/
  94:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
  95:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Initiate objects
  96:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE_OBJECT spoopy_pointer = init_spoopy();
 217              		.loc 1 96 0
 218 000a FFF7FEFF 		bl	init_spoopy
 219 000e 0300     		movs	r3, r0
 220 0010 8422     		movs	r2, #132
 221 0012 BA18     		adds	r2, r7, r2
 222 0014 1360     		str	r3, [r2]
  97:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE_OBJECT exit_pointer = init_exit();
 223              		.loc 1 97 0
 224 0016 FFF7FEFF 		bl	init_exit
 225 001a 0300     		movs	r3, r0
 226 001c 8022     		movs	r2, #128
 227 001e BA18     		adds	r2, r7, r2
 228 0020 1360     		str	r3, [r2]
 229              	.LBB2:
  98:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     PSPRITE_OBJECT wall_pointers[WALL_AMOUNT];
  99:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; i < WALL_AMOUNT; i++){
 230              		.loc 1 99 0
 231 0022 0023     		movs	r3, #0
 232 0024 8C22     		movs	r2, #140
 233 0026 BA18     		adds	r2, r7, r2
 234 0028 1360     		str	r3, [r2]
 235 002a 0FE0     		b	.L3
 236              	.L4:
 100:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         wall_pointers[i] = init_wall();
 237              		.loc 1 100 0 discriminator 3
 238 002c FFF7FEFF 		bl	init_wall
 239 0030 0100     		movs	r1, r0
 240 0032 3B00     		movs	r3, r7
 241 0034 8C22     		movs	r2, #140
 242 0036 BA18     		adds	r2, r7, r2
 243 0038 1268     		ldr	r2, [r2]
 244 003a 9200     		lsls	r2, r2, #2
 245 003c D150     		str	r1, [r2, r3]
  99:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         wall_pointers[i] = init_wall();
 246              		.loc 1 99 0 discriminator 3
 247 003e 8C23     		movs	r3, #140
 248 0040 FB18     		adds	r3, r7, r3
 249 0042 1B68     		ldr	r3, [r3]
 250 0044 0133     		adds	r3, r3, #1
 251 0046 8C22     		movs	r2, #140
 252 0048 BA18     		adds	r2, r7, r2
 253 004a 1360     		str	r3, [r2]
 254              	.L3:
  99:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         wall_pointers[i] = init_wall();
 255              		.loc 1 99 0 is_stmt 0 discriminator 1
 256 004c 8C23     		movs	r3, #140
 257 004e FB18     		adds	r3, r7, r3
 258 0050 1B68     		ldr	r3, [r3]
 259 0052 1F2B     		cmp	r3, #31
 260 0054 EADD     		ble	.L4
 261              	.LBE2:
 101:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 102:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 103:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     init_map_grid(spoopy_pointer, exit_pointer, wall_pointers);
 262              		.loc 1 103 0 is_stmt 1
 263 0056 3A00     		movs	r2, r7
 264 0058 8023     		movs	r3, #128
 265 005a FB18     		adds	r3, r7, r3
 266 005c 1968     		ldr	r1, [r3]
 267 005e 8423     		movs	r3, #132
 268 0060 FB18     		adds	r3, r7, r3
 269 0062 1B68     		ldr	r3, [r3]
 270 0064 1800     		movs	r0, r3
 271 0066 FFF7FEFF 		bl	init_map_grid
 104:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	
 105:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Draw pointers
 106:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     spoopy_pointer->draw(spoopy_pointer);
 272              		.loc 1 106 0
 273 006a 8423     		movs	r3, #132
 274 006c FB18     		adds	r3, r7, r3
 275 006e 1B68     		ldr	r3, [r3]
 276 0070 5B69     		ldr	r3, [r3, #20]
 277 0072 8422     		movs	r2, #132
 278 0074 BA18     		adds	r2, r7, r2
 279 0076 1268     		ldr	r2, [r2]
 280 0078 1000     		movs	r0, r2
 281 007a 9847     		blx	r3
 282              	.LVL0:
 107:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     exit_pointer->draw(exit_pointer);
 283              		.loc 1 107 0
 284 007c 8023     		movs	r3, #128
 285 007e FB18     		adds	r3, r7, r3
 286 0080 1B68     		ldr	r3, [r3]
 287 0082 5B69     		ldr	r3, [r3, #20]
 288 0084 8022     		movs	r2, #128
 289 0086 BA18     		adds	r2, r7, r2
 290 0088 1268     		ldr	r2, [r2]
 291 008a 1000     		movs	r0, r2
 292 008c 9847     		blx	r3
 293              	.LVL1:
 294              	.LBB3:
 108:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; i < WALL_AMOUNT; i++){
 295              		.loc 1 108 0
 296 008e 0023     		movs	r3, #0
 297 0090 8822     		movs	r2, #136
 298 0092 BA18     		adds	r2, r7, r2
 299 0094 1360     		str	r3, [r2]
 300 0096 15E0     		b	.L5
 301              	.L6:
 109:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         wall_pointers[i]->draw(wall_pointers[i]);
 302              		.loc 1 109 0 discriminator 3
 303 0098 3B00     		movs	r3, r7
 304 009a 8822     		movs	r2, #136
 305 009c BA18     		adds	r2, r7, r2
 306 009e 1268     		ldr	r2, [r2]
 307 00a0 9200     		lsls	r2, r2, #2
 308 00a2 D358     		ldr	r3, [r2, r3]
 309 00a4 5B69     		ldr	r3, [r3, #20]
 310 00a6 3A00     		movs	r2, r7
 311 00a8 8821     		movs	r1, #136
 312 00aa 7918     		adds	r1, r7, r1
 313 00ac 0968     		ldr	r1, [r1]
 314 00ae 8900     		lsls	r1, r1, #2
 315 00b0 8A58     		ldr	r2, [r1, r2]
 316 00b2 1000     		movs	r0, r2
 317 00b4 9847     		blx	r3
 318              	.LVL2:
 108:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; i < WALL_AMOUNT; i++){
 319              		.loc 1 108 0 discriminator 3
 320 00b6 8823     		movs	r3, #136
 321 00b8 FB18     		adds	r3, r7, r3
 322 00ba 1B68     		ldr	r3, [r3]
 323 00bc 0133     		adds	r3, r3, #1
 324 00be 8822     		movs	r2, #136
 325 00c0 BA18     		adds	r2, r7, r2
 326 00c2 1360     		str	r3, [r2]
 327              	.L5:
 108:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; i < WALL_AMOUNT; i++){
 328              		.loc 1 108 0 is_stmt 0 discriminator 1
 329 00c4 8823     		movs	r3, #136
 330 00c6 FB18     		adds	r3, r7, r3
 331 00c8 1B68     		ldr	r3, [r3]
 332 00ca 1F2B     		cmp	r3, #31
 333 00cc E4DD     		ble	.L6
 334              	.LBE3:
 110:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 111:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 112:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 1);
 335              		.loc 1 112 0 is_stmt 1
 336 00ce 0121     		movs	r1, #1
 337 00d0 0120     		movs	r0, #1
 338 00d2 FFF7FEFF 		bl	gotoxy
 113:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(start_message1);
 339              		.loc 1 113 0
 340 00d6 414B     		ldr	r3, .L19
 341 00d8 1800     		movs	r0, r3
 342 00da FFF7FEFF 		bl	ascii_write_string
 114:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 2);
 343              		.loc 1 114 0
 344 00de 0221     		movs	r1, #2
 345 00e0 0120     		movs	r0, #1
 346 00e2 FFF7FEFF 		bl	gotoxy
 115:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(start_message2);
 347              		.loc 1 115 0
 348 00e6 3E4B     		ldr	r3, .L19+4
 349 00e8 1800     		movs	r0, r3
 350 00ea FFF7FEFF 		bl	ascii_write_string
 351              	.L16:
 116:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 117:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	while(1){
 118:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		//keyboard_val = keyb();
 119:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		switch (keyboard_val){
 352              		.loc 1 119 0
 353 00ee 3D4B     		ldr	r3, .L19+8
 354 00f0 1B78     		ldrb	r3, [r3]
 355 00f2 042B     		cmp	r3, #4
 356 00f4 13D0     		beq	.L8
 357 00f6 02DC     		bgt	.L9
 358 00f8 022B     		cmp	r3, #2
 359 00fa 1CD0     		beq	.L10
 360 00fc 32E0     		b	.L7
 361              	.L9:
 362 00fe 062B     		cmp	r3, #6
 363 0100 02D0     		beq	.L11
 364 0102 082B     		cmp	r3, #8
 365 0104 23D0     		beq	.L12
 366 0106 2DE0     		b	.L7
 367              	.L11:
 120:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 			case 6: spoopy_pointer->set_speed(spoopy_pointer, 1, 0); break;
 368              		.loc 1 120 0
 369 0108 8423     		movs	r3, #132
 370 010a FB18     		adds	r3, r7, r3
 371 010c 1B68     		ldr	r3, [r3]
 372 010e 1B6A     		ldr	r3, [r3, #32]
 373 0110 8422     		movs	r2, #132
 374 0112 BA18     		adds	r2, r7, r2
 375 0114 1068     		ldr	r0, [r2]
 376 0116 0022     		movs	r2, #0
 377 0118 0121     		movs	r1, #1
 378 011a 9847     		blx	r3
 379              	.LVL3:
 380 011c 2DE0     		b	.L13
 381              	.L8:
 121:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 			case 4: spoopy_pointer->set_speed(spoopy_pointer, -1, 0); break;
 382              		.loc 1 121 0
 383 011e 8423     		movs	r3, #132
 384 0120 FB18     		adds	r3, r7, r3
 385 0122 1B68     		ldr	r3, [r3]
 386 0124 1B6A     		ldr	r3, [r3, #32]
 387 0126 0122     		movs	r2, #1
 388 0128 5142     		rsbs	r1, r2, #0
 389 012a 8422     		movs	r2, #132
 390 012c BA18     		adds	r2, r7, r2
 391 012e 1068     		ldr	r0, [r2]
 392 0130 0022     		movs	r2, #0
 393 0132 9847     		blx	r3
 394              	.LVL4:
 395 0134 21E0     		b	.L13
 396              	.L10:
 122:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 			case 2: spoopy_pointer->set_speed(spoopy_pointer, 0, -1); break;
 397              		.loc 1 122 0
 398 0136 8423     		movs	r3, #132
 399 0138 FB18     		adds	r3, r7, r3
 400 013a 1B68     		ldr	r3, [r3]
 401 013c 1B6A     		ldr	r3, [r3, #32]
 402 013e 0122     		movs	r2, #1
 403 0140 5242     		rsbs	r2, r2, #0
 404 0142 8421     		movs	r1, #132
 405 0144 7918     		adds	r1, r7, r1
 406 0146 0868     		ldr	r0, [r1]
 407 0148 0021     		movs	r1, #0
 408 014a 9847     		blx	r3
 409              	.LVL5:
 410 014c 15E0     		b	.L13
 411              	.L12:
 123:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 			case 8: spoopy_pointer->set_speed(spoopy_pointer, 0, 1); break;
 412              		.loc 1 123 0
 413 014e 8423     		movs	r3, #132
 414 0150 FB18     		adds	r3, r7, r3
 415 0152 1B68     		ldr	r3, [r3]
 416 0154 1B6A     		ldr	r3, [r3, #32]
 417 0156 8422     		movs	r2, #132
 418 0158 BA18     		adds	r2, r7, r2
 419 015a 1068     		ldr	r0, [r2]
 420 015c 0122     		movs	r2, #1
 421 015e 0021     		movs	r1, #0
 422 0160 9847     		blx	r3
 423              	.LVL6:
 424 0162 0AE0     		b	.L13
 425              	.L7:
 124:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****             default: spoopy_pointer->set_speed(spoopy_pointer, 0, 0); break;
 426              		.loc 1 124 0
 427 0164 8423     		movs	r3, #132
 428 0166 FB18     		adds	r3, r7, r3
 429 0168 1B68     		ldr	r3, [r3]
 430 016a 1B6A     		ldr	r3, [r3, #32]
 431 016c 8422     		movs	r2, #132
 432 016e BA18     		adds	r2, r7, r2
 433 0170 1068     		ldr	r0, [r2]
 434 0172 0022     		movs	r2, #0
 435 0174 0021     		movs	r1, #0
 436 0176 9847     		blx	r3
 437              	.LVL7:
 438 0178 C046     		nop
 439              	.L13:
 125:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		}
 126:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         position_checking(spoopy_pointer);
 440              		.loc 1 126 0
 441 017a 8423     		movs	r3, #132
 442 017c FB18     		adds	r3, r7, r3
 443 017e 1B68     		ldr	r3, [r3]
 444 0180 1800     		movs	r0, r3
 445 0182 FFF7FEFF 		bl	position_checking
 127:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         update_sprite_object(spoopy_pointer);
 446              		.loc 1 127 0
 447 0186 8423     		movs	r3, #132
 448 0188 FB18     		adds	r3, r7, r3
 449 018a 1B68     		ldr	r3, [r3]
 450 018c 1800     		movs	r0, r3
 451 018e FFF7FEFF 		bl	update_sprite_object
 128:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 452              		.loc 1 128 0
 453 0192 1821     		movs	r1, #24
 454 0194 3F20     		movs	r0, #63
 455 0196 FFF7FEFF 		bl	graphic_write_command
 129:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 456              		.loc 1 129 0
 457 019a 1821     		movs	r1, #24
 458 019c C020     		movs	r0, #192
 459 019e FFF7FEFF 		bl	graphic_write_command
 130:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		delay_milli(250);
 460              		.loc 1 130 0
 461 01a2 FA20     		movs	r0, #250
 462 01a4 FFF7FEFF 		bl	delay_milli
 131:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         if(win_state){
 463              		.loc 1 131 0
 464 01a8 0F4B     		ldr	r3, .L19+12
 465 01aa 1B78     		ldrb	r3, [r3]
 466 01ac 002B     		cmp	r3, #0
 467 01ae 00D1     		bne	.L18
 119:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 			case 6: spoopy_pointer->set_speed(spoopy_pointer, 1, 0); break;
 468              		.loc 1 119 0
 469 01b0 9DE7     		b	.L16
 470              	.L18:
 132:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****             break;
 471              		.loc 1 132 0
 472 01b2 C046     		nop
 133:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         }
 134:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	}
 135:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 136:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 1);
 473              		.loc 1 136 0
 474 01b4 0121     		movs	r1, #1
 475 01b6 0120     		movs	r0, #1
 476 01b8 FFF7FEFF 		bl	gotoxy
 137:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(victory_message1);
 477              		.loc 1 137 0
 478 01bc 0B4B     		ldr	r3, .L19+16
 479 01be 1800     		movs	r0, r3
 480 01c0 FFF7FEFF 		bl	ascii_write_string
 138:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     gotoxy(1, 2);
 481              		.loc 1 138 0
 482 01c4 0221     		movs	r1, #2
 483 01c6 0120     		movs	r0, #1
 484 01c8 FFF7FEFF 		bl	gotoxy
 139:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     ascii_write_string(victory_message2);
 485              		.loc 1 139 0
 486 01cc 084B     		ldr	r3, .L19+20
 487 01ce 1800     		movs	r0, r3
 488 01d0 FFF7FEFF 		bl	ascii_write_string
 140:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 489              		.loc 1 140 0
 490 01d4 C046     		nop
 491 01d6 BD46     		mov	sp, r7
 492 01d8 24B0     		add	sp, sp, #144
 493              		@ sp needed
 494 01da 80BD     		pop	{r7, pc}
 495              	.L20:
 496              		.align	2
 497              	.L19:
 498 01dc 00000000 		.word	start_message1
 499 01e0 00000000 		.word	start_message2
 500 01e4 00000000 		.word	keyboard_val
 501 01e8 00000000 		.word	win_state
 502 01ec 00000000 		.word	victory_message1
 503 01f0 00000000 		.word	victory_message2
 504              		.cfi_endproc
 505              	.LFE1:
 507              		.align	1
 508              		.global	keyboard_interrupt_handler
 509              		.syntax unified
 510              		.code	16
 511              		.thumb_func
 512              		.fpu softvfp
 514              	keyboard_interrupt_handler:
 515              	.LFB2:
 141:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 142:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void keyboard_interrupt_handler(void){
 516              		.loc 1 142 0
 517              		.cfi_startproc
 518              		@ args = 0, pretend = 0, frame = 0
 519              		@ frame_needed = 1, uses_anonymous_args = 0
 520 01f4 80B5     		push	{r7, lr}
 521              		.cfi_def_cfa_offset 8
 522              		.cfi_offset 7, -8
 523              		.cfi_offset 14, -4
 524 01f6 00AF     		add	r7, sp, #0
 525              		.cfi_def_cfa_register 7
 143:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     if(EXTI.pr & 0x0F00){
 526              		.loc 1 143 0
 527 01f8 0E4B     		ldr	r3, .L24
 528 01fa 5A69     		ldr	r2, [r3, #20]
 529 01fc F023     		movs	r3, #240
 530 01fe 1B01     		lsls	r3, r3, #4
 531 0200 1340     		ands	r3, r2
 532 0202 13D0     		beq	.L23
 533              	.LBB4:
 144:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         keyboard_val = keyb();
 534              		.loc 1 144 0
 535 0204 FFF7FEFF 		bl	keyb
 536 0208 0300     		movs	r3, r0
 537 020a DAB2     		uxtb	r2, r3
 538 020c 0A4B     		ldr	r3, .L24+4
 539 020e 1A70     		strb	r2, [r3]
 145:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         GPIO_D.odrHigh = 0xF0;
 540              		.loc 1 145 0
 541 0210 0A4B     		ldr	r3, .L24+8
 542 0212 F022     		movs	r2, #240
 543 0214 5A75     		strb	r2, [r3, #21]
 146:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         
 147:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         EXTI.pr |= (EXTI.pr & 0x0F00);
 544              		.loc 1 147 0
 545 0216 074B     		ldr	r3, .L24
 546 0218 5A69     		ldr	r2, [r3, #20]
 547 021a F023     		movs	r3, #240
 548 021c 1B01     		lsls	r3, r3, #4
 549 021e 1A40     		ands	r2, r3
 550 0220 1100     		movs	r1, r2
 551 0222 044B     		ldr	r3, .L24
 552 0224 034A     		ldr	r2, .L24
 553 0226 5269     		ldr	r2, [r2, #20]
 554 0228 0A43     		orrs	r2, r1
 555 022a 5A61     		str	r2, [r3, #20]
 556              	.L23:
 557              	.LBE4:
 148:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 149:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 558              		.loc 1 149 0
 559 022c C046     		nop
 560 022e BD46     		mov	sp, r7
 561              		@ sp needed
 562 0230 80BD     		pop	{r7, pc}
 563              	.L25:
 564 0232 C046     		.align	2
 565              	.L24:
 566 0234 003C0140 		.word	1073822720
 567 0238 00000000 		.word	keyboard_val
 568 023c 000C0240 		.word	1073875968
 569              		.cfi_endproc
 570              	.LFE2:
 572              		.align	1
 573              		.global	position_checking
 574              		.syntax unified
 575              		.code	16
 576              		.thumb_func
 577              		.fpu softvfp
 579              	position_checking:
 580              	.LFB3:
 150:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 151:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void position_checking(PSPRITE_OBJECT spoopy_pointer){
 581              		.loc 1 151 0
 582              		.cfi_startproc
 583              		@ args = 0, pretend = 0, frame = 24
 584              		@ frame_needed = 1, uses_anonymous_args = 0
 585 0240 90B5     		push	{r4, r7, lr}
 586              		.cfi_def_cfa_offset 12
 587              		.cfi_offset 4, -12
 588              		.cfi_offset 7, -8
 589              		.cfi_offset 14, -4
 590 0242 87B0     		sub	sp, sp, #28
 591              		.cfi_def_cfa_offset 40
 592 0244 00AF     		add	r7, sp, #0
 593              		.cfi_def_cfa_register 7
 594 0246 7860     		str	r0, [r7, #4]
 152:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_current_x = spoopy_pointer->pos_x / GRID_WIDTH;
 595              		.loc 1 152 0
 596 0248 7B68     		ldr	r3, [r7, #4]
 597 024a DB68     		ldr	r3, [r3, #12]
 598 024c 002B     		cmp	r3, #0
 599 024e 00DA     		bge	.L27
 600 0250 0F33     		adds	r3, r3, #15
 601              	.L27:
 602 0252 1B11     		asrs	r3, r3, #4
 603 0254 7B61     		str	r3, [r7, #20]
 153:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_current_y = spoopy_pointer->pos_y / GRID_HEIGHT;
 604              		.loc 1 153 0
 605 0256 7B68     		ldr	r3, [r7, #4]
 606 0258 1B69     		ldr	r3, [r3, #16]
 607 025a 002B     		cmp	r3, #0
 608 025c 00DA     		bge	.L28
 609 025e 0F33     		adds	r3, r3, #15
 610              	.L28:
 611 0260 1B11     		asrs	r3, r3, #4
 612 0262 3B61     		str	r3, [r7, #16]
 154:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 155:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int next_space = map_grid[spoopy_current_x + spoopy_pointer->dir_x][spoopy_current_y + spoopy_p
 613              		.loc 1 155 0
 614 0264 7B68     		ldr	r3, [r7, #4]
 615 0266 5A68     		ldr	r2, [r3, #4]
 616 0268 7B69     		ldr	r3, [r7, #20]
 617 026a D218     		adds	r2, r2, r3
 618 026c 7B68     		ldr	r3, [r7, #4]
 619 026e 9968     		ldr	r1, [r3, #8]
 620 0270 3B69     		ldr	r3, [r7, #16]
 621 0272 CB18     		adds	r3, r1, r3
 622 0274 1149     		ldr	r1, .L33
 623 0276 9200     		lsls	r2, r2, #2
 624 0278 8A18     		adds	r2, r1, r2
 625 027a D35C     		ldrb	r3, [r2, r3]
 626 027c FB60     		str	r3, [r7, #12]
 156:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 157:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set velocity to 0 if Spoopy is about to mave into a wall, otherwise multiply it by an apropr
 158:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     switch(next_space){
 627              		.loc 1 158 0
 628 027e FB68     		ldr	r3, [r7, #12]
 629 0280 022B     		cmp	r3, #2
 630 0282 08D0     		beq	.L30
 631 0284 032B     		cmp	r3, #3
 632 0286 09D1     		bne	.L29
 159:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         case WALL_SPACE: spoopy_pointer->set_speed(spoopy_pointer, 0, 0); break;
 633              		.loc 1 159 0
 634 0288 7B68     		ldr	r3, [r7, #4]
 635 028a 1B6A     		ldr	r3, [r3, #32]
 636 028c 7868     		ldr	r0, [r7, #4]
 637 028e 0022     		movs	r2, #0
 638 0290 0021     		movs	r1, #0
 639 0292 9847     		blx	r3
 640              	.LVL8:
 641 0294 0EE0     		b	.L32
 642              	.L30:
 160:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         case EXIT_SPACE: win_state = 1;
 643              		.loc 1 160 0
 644 0296 0A4B     		ldr	r3, .L33+4
 645 0298 0122     		movs	r2, #1
 646 029a 1A70     		strb	r2, [r3]
 647              	.L29:
 161:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         default: spoopy_pointer->set_speed(spoopy_pointer, spoopy_pointer->dir_x * GRID_WIDTH, spoo
 648              		.loc 1 161 0
 649 029c 7B68     		ldr	r3, [r7, #4]
 650 029e 1C6A     		ldr	r4, [r3, #32]
 651 02a0 7B68     		ldr	r3, [r7, #4]
 652 02a2 5B68     		ldr	r3, [r3, #4]
 653 02a4 1901     		lsls	r1, r3, #4
 654 02a6 7B68     		ldr	r3, [r7, #4]
 655 02a8 9B68     		ldr	r3, [r3, #8]
 656 02aa 1A01     		lsls	r2, r3, #4
 657 02ac 7B68     		ldr	r3, [r7, #4]
 658 02ae 1800     		movs	r0, r3
 659 02b0 A047     		blx	r4
 660              	.LVL9:
 661 02b2 C046     		nop
 662              	.L32:
 162:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 163:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 663              		.loc 1 163 0
 664 02b4 C046     		nop
 665 02b6 BD46     		mov	sp, r7
 666 02b8 07B0     		add	sp, sp, #28
 667              		@ sp needed
 668 02ba 90BD     		pop	{r4, r7, pc}
 669              	.L34:
 670              		.align	2
 671              	.L33:
 672 02bc 00000000 		.word	map_grid
 673 02c0 00000000 		.word	win_state
 674              		.cfi_endproc
 675              	.LFE3:
 677              		.section	.rodata
 678              		.align	2
 679              	.LC0:
 680 0000 01000000 		.word	1
 681 0004 01000000 		.word	1
 682 0008 01000000 		.word	1
 683 000c 03000000 		.word	3
 684 0010 03000000 		.word	3
 685 0014 03000000 		.word	3
 686 0018 05000000 		.word	5
 687 001c 05000000 		.word	5
 688 0020 05000000 		.word	5
 689 0024 06000000 		.word	6
 690              		.align	2
 691              	.LC1:
 692 0028 00000000 		.word	0
 693 002c 01000000 		.word	1
 694 0030 02000000 		.word	2
 695 0034 03000000 		.word	3
 696 0038 02000000 		.word	2
 697 003c 01000000 		.word	1
 698 0040 00000000 		.word	0
 699 0044 01000000 		.word	1
 700 0048 02000000 		.word	2
 701 004c 02000000 		.word	2
 702              		.text
 703              		.align	1
 704              		.global	init_map_grid
 705              		.syntax unified
 706              		.code	16
 707              		.thumb_func
 708              		.fpu softvfp
 710              	init_map_grid:
 711              	.LFB4:
 164:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 165:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void init_map_grid(PSPRITE_OBJECT spoopy, PSPRITE_OBJECT exit, PSPRITE_OBJECT walls[]){
 712              		.loc 1 165 0
 713              		.cfi_startproc
 714              		@ args = 0, pretend = 0, frame = 128
 715              		@ frame_needed = 1, uses_anonymous_args = 0
 716 02c4 90B5     		push	{r4, r7, lr}
 717              		.cfi_def_cfa_offset 12
 718              		.cfi_offset 4, -12
 719              		.cfi_offset 7, -8
 720              		.cfi_offset 14, -4
 721 02c6 A1B0     		sub	sp, sp, #132
 722              		.cfi_def_cfa_offset 144
 723 02c8 00AF     		add	r7, sp, #0
 724              		.cfi_def_cfa_register 7
 725 02ca F860     		str	r0, [r7, #12]
 726 02cc B960     		str	r1, [r7, #8]
 727 02ce 7A60     		str	r2, [r7, #4]
 728              	.LBB5:
 166:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int x = 0; x < MAP_WIDTH; x++){
 729              		.loc 1 166 0
 730 02d0 0023     		movs	r3, #0
 731 02d2 FB67     		str	r3, [r7, #124]
 732 02d4 13E0     		b	.L36
 733              	.L39:
 734              	.LBB6:
 167:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         for(int y = 0; y < MAP_HEIGHT; y++){
 735              		.loc 1 167 0
 736 02d6 0023     		movs	r3, #0
 737 02d8 BB67     		str	r3, [r7, #120]
 738 02da 0AE0     		b	.L37
 739              	.L38:
 168:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****             map_grid[x][y] = EMPTY_SPACE;
 740              		.loc 1 168 0 discriminator 3
 741 02dc 424A     		ldr	r2, .L42
 742 02de FB6F     		ldr	r3, [r7, #124]
 743 02e0 9B00     		lsls	r3, r3, #2
 744 02e2 D218     		adds	r2, r2, r3
 745 02e4 BB6F     		ldr	r3, [r7, #120]
 746 02e6 D318     		adds	r3, r2, r3
 747 02e8 0022     		movs	r2, #0
 748 02ea 1A70     		strb	r2, [r3]
 167:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         for(int y = 0; y < MAP_HEIGHT; y++){
 749              		.loc 1 167 0 discriminator 3
 750 02ec BB6F     		ldr	r3, [r7, #120]
 751 02ee 0133     		adds	r3, r3, #1
 752 02f0 BB67     		str	r3, [r7, #120]
 753              	.L37:
 167:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         for(int y = 0; y < MAP_HEIGHT; y++){
 754              		.loc 1 167 0 is_stmt 0 discriminator 1
 755 02f2 BB6F     		ldr	r3, [r7, #120]
 756 02f4 032B     		cmp	r3, #3
 757 02f6 F1DD     		ble	.L38
 758              	.LBE6:
 166:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int x = 0; x < MAP_WIDTH; x++){
 759              		.loc 1 166 0 is_stmt 1 discriminator 2
 760 02f8 FB6F     		ldr	r3, [r7, #124]
 761 02fa 0133     		adds	r3, r3, #1
 762 02fc FB67     		str	r3, [r7, #124]
 763              	.L36:
 166:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int x = 0; x < MAP_WIDTH; x++){
 764              		.loc 1 166 0 is_stmt 0 discriminator 1
 765 02fe FB6F     		ldr	r3, [r7, #124]
 766 0300 072B     		cmp	r3, #7
 767 0302 E8DD     		ble	.L39
 768              	.LBE5:
 169:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         }
 170:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 171:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 172:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set Spoopy's starting position
 173:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_x = 0;
 769              		.loc 1 173 0 is_stmt 1
 770 0304 0023     		movs	r3, #0
 771 0306 3B67     		str	r3, [r7, #112]
 174:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int spoopy_y = 0;
 772              		.loc 1 174 0
 773 0308 0023     		movs	r3, #0
 774 030a FB66     		str	r3, [r7, #108]
 175:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     map_grid[spoopy_x][spoopy_y] = SPOOPY_SPACE;
 775              		.loc 1 175 0
 776 030c 364A     		ldr	r2, .L42
 777 030e 3B6F     		ldr	r3, [r7, #112]
 778 0310 9B00     		lsls	r3, r3, #2
 779 0312 D218     		adds	r2, r2, r3
 780 0314 FB6E     		ldr	r3, [r7, #108]
 781 0316 D318     		adds	r3, r2, r3
 782 0318 0122     		movs	r2, #1
 783 031a 1A70     		strb	r2, [r3]
 176:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     spoopy->pos_x = spoopy_x * GRID_WIDTH;
 784              		.loc 1 176 0
 785 031c 3B6F     		ldr	r3, [r7, #112]
 786 031e 1A01     		lsls	r2, r3, #4
 787 0320 FB68     		ldr	r3, [r7, #12]
 788 0322 DA60     		str	r2, [r3, #12]
 177:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     spoopy->pos_y = spoopy_y * GRID_HEIGHT;
 789              		.loc 1 177 0
 790 0324 FB6E     		ldr	r3, [r7, #108]
 791 0326 1A01     		lsls	r2, r3, #4
 792 0328 FB68     		ldr	r3, [r7, #12]
 793 032a 1A61     		str	r2, [r3, #16]
 178:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 179:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set exit's starting position
 180:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int exit_x = MAP_WIDTH - 1;
 794              		.loc 1 180 0
 795 032c 0723     		movs	r3, #7
 796 032e BB66     		str	r3, [r7, #104]
 181:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int exit_y = MAP_HEIGHT - 1;
 797              		.loc 1 181 0
 798 0330 0323     		movs	r3, #3
 799 0332 7B66     		str	r3, [r7, #100]
 182:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     map_grid[exit_x][exit_y] = EXIT_SPACE;
 800              		.loc 1 182 0
 801 0334 2C4A     		ldr	r2, .L42
 802 0336 BB6E     		ldr	r3, [r7, #104]
 803 0338 9B00     		lsls	r3, r3, #2
 804 033a D218     		adds	r2, r2, r3
 805 033c 7B6E     		ldr	r3, [r7, #100]
 806 033e D318     		adds	r3, r2, r3
 807 0340 0222     		movs	r2, #2
 808 0342 1A70     		strb	r2, [r3]
 183:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     exit->pos_x = exit_x * GRID_WIDTH;
 809              		.loc 1 183 0
 810 0344 BB6E     		ldr	r3, [r7, #104]
 811 0346 1A01     		lsls	r2, r3, #4
 812 0348 BB68     		ldr	r3, [r7, #8]
 813 034a DA60     		str	r2, [r3, #12]
 184:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     exit->pos_y = exit_y * GRID_HEIGHT;
 814              		.loc 1 184 0
 815 034c 7B6E     		ldr	r3, [r7, #100]
 816 034e 1A01     		lsls	r2, r3, #4
 817 0350 BB68     		ldr	r3, [r7, #8]
 818 0352 1A61     		str	r2, [r3, #16]
 185:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 186:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set walls' starting positions
 187:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int wall_x[] = {1, 1, 1, 3, 3, 3, 5, 5, 5, 6};
 819              		.loc 1 187 0
 820 0354 3C23     		movs	r3, #60
 821 0356 FB18     		adds	r3, r7, r3
 822 0358 244A     		ldr	r2, .L42+4
 823 035a 13CA     		ldmia	r2!, {r0, r1, r4}
 824 035c 13C3     		stmia	r3!, {r0, r1, r4}
 825 035e 13CA     		ldmia	r2!, {r0, r1, r4}
 826 0360 13C3     		stmia	r3!, {r0, r1, r4}
 827 0362 13CA     		ldmia	r2!, {r0, r1, r4}
 828 0364 13C3     		stmia	r3!, {r0, r1, r4}
 829 0366 1268     		ldr	r2, [r2]
 830 0368 1A60     		str	r2, [r3]
 188:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     int wall_y[] = {0, 1, 2, 3, 2, 1, 0, 1, 2, 2};
 831              		.loc 1 188 0
 832 036a 1423     		movs	r3, #20
 833 036c FB18     		adds	r3, r7, r3
 834 036e 204A     		ldr	r2, .L42+8
 835 0370 13CA     		ldmia	r2!, {r0, r1, r4}
 836 0372 13C3     		stmia	r3!, {r0, r1, r4}
 837 0374 13CA     		ldmia	r2!, {r0, r1, r4}
 838 0376 13C3     		stmia	r3!, {r0, r1, r4}
 839 0378 13CA     		ldmia	r2!, {r0, r1, r4}
 840 037a 13C3     		stmia	r3!, {r0, r1, r4}
 841 037c 1268     		ldr	r2, [r2]
 842 037e 1A60     		str	r2, [r3]
 843              	.LBB7:
 189:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     for(int i = 0; i < sizeof(wall_x); i++){
 844              		.loc 1 189 0
 845 0380 0023     		movs	r3, #0
 846 0382 7B67     		str	r3, [r7, #116]
 847 0384 29E0     		b	.L40
 848              	.L41:
 190:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         map_grid[wall_x[i]][wall_y[i]] = WALL_SPACE;
 849              		.loc 1 190 0 discriminator 3
 850 0386 3C23     		movs	r3, #60
 851 0388 FB18     		adds	r3, r7, r3
 852 038a 7A6F     		ldr	r2, [r7, #116]
 853 038c 9200     		lsls	r2, r2, #2
 854 038e D258     		ldr	r2, [r2, r3]
 855 0390 1423     		movs	r3, #20
 856 0392 FB18     		adds	r3, r7, r3
 857 0394 796F     		ldr	r1, [r7, #116]
 858 0396 8900     		lsls	r1, r1, #2
 859 0398 CB58     		ldr	r3, [r1, r3]
 860 039a 1349     		ldr	r1, .L42
 861 039c 9200     		lsls	r2, r2, #2
 862 039e 8A18     		adds	r2, r1, r2
 863 03a0 0321     		movs	r1, #3
 864 03a2 D154     		strb	r1, [r2, r3]
 191:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         walls[i]->pos_x = wall_x[i] * GRID_WIDTH;
 865              		.loc 1 191 0 discriminator 3
 866 03a4 7B6F     		ldr	r3, [r7, #116]
 867 03a6 9B00     		lsls	r3, r3, #2
 868 03a8 7A68     		ldr	r2, [r7, #4]
 869 03aa D318     		adds	r3, r2, r3
 870 03ac 1B68     		ldr	r3, [r3]
 871 03ae 3C22     		movs	r2, #60
 872 03b0 BA18     		adds	r2, r7, r2
 873 03b2 796F     		ldr	r1, [r7, #116]
 874 03b4 8900     		lsls	r1, r1, #2
 875 03b6 8A58     		ldr	r2, [r1, r2]
 876 03b8 1201     		lsls	r2, r2, #4
 877 03ba DA60     		str	r2, [r3, #12]
 192:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         walls[i]->pos_y = wall_y[i] * GRID_HEIGHT;
 878              		.loc 1 192 0 discriminator 3
 879 03bc 7B6F     		ldr	r3, [r7, #116]
 880 03be 9B00     		lsls	r3, r3, #2
 881 03c0 7A68     		ldr	r2, [r7, #4]
 882 03c2 D318     		adds	r3, r2, r3
 883 03c4 1B68     		ldr	r3, [r3]
 884 03c6 1422     		movs	r2, #20
 885 03c8 BA18     		adds	r2, r7, r2
 886 03ca 796F     		ldr	r1, [r7, #116]
 887 03cc 8900     		lsls	r1, r1, #2
 888 03ce 8A58     		ldr	r2, [r1, r2]
 889 03d0 1201     		lsls	r2, r2, #4
 890 03d2 1A61     		str	r2, [r3, #16]
 189:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         map_grid[wall_x[i]][wall_y[i]] = WALL_SPACE;
 891              		.loc 1 189 0 discriminator 3
 892 03d4 7B6F     		ldr	r3, [r7, #116]
 893 03d6 0133     		adds	r3, r3, #1
 894 03d8 7B67     		str	r3, [r7, #116]
 895              	.L40:
 189:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****         map_grid[wall_x[i]][wall_y[i]] = WALL_SPACE;
 896              		.loc 1 189 0 is_stmt 0 discriminator 1
 897 03da 7B6F     		ldr	r3, [r7, #116]
 898 03dc 272B     		cmp	r3, #39
 899 03de D2D9     		bls	.L41
 900              	.LBE7:
 193:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     }
 194:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 901              		.loc 1 194 0 is_stmt 1
 902 03e0 C046     		nop
 903 03e2 BD46     		mov	sp, r7
 904 03e4 21B0     		add	sp, sp, #132
 905              		@ sp needed
 906 03e6 90BD     		pop	{r4, r7, pc}
 907              	.L43:
 908              		.align	2
 909              	.L42:
 910 03e8 00000000 		.word	map_grid
 911 03ec 00000000 		.word	.LC0
 912 03f0 28000000 		.word	.LC1
 913              		.cfi_endproc
 914              	.LFE4:
 916              		.align	1
 917              		.global	app_init
 918              		.syntax unified
 919              		.code	16
 920              		.thumb_func
 921              		.fpu softvfp
 923              	app_init:
 924              	.LFB5:
 195:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 196:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** void app_init(void){
 925              		.loc 1 196 0
 926              		.cfi_startproc
 927              		@ args = 0, pretend = 0, frame = 0
 928              		@ frame_needed = 1, uses_anonymous_args = 0
 929 03f4 80B5     		push	{r7, lr}
 930              		.cfi_def_cfa_offset 8
 931              		.cfi_offset 7, -8
 932              		.cfi_offset 14, -4
 933 03f6 00AF     		add	r7, sp, #0
 934              		.cfi_def_cfa_register 7
 197:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #ifdef USBDM
 198:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	*((unsigned long*) 0x40023830) = 0x18;
 199:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 	__asm volatile( 
 200:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		" LDR R0, =0x08000209\n"
 201:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		" BLX R0\n"
 202:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 		);
 203:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** #endif
 204:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** 
 205:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     asciidisplay_init();
 935              		.loc 1 205 0
 936 03f8 FFF7FEFF 		bl	asciidisplay_init
 206:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     graphicdisplay_init();
 937              		.loc 1 206 0
 938 03fc FFF7FEFF 		bl	graphicdisplay_init
 207:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     delay_interrupt_init();
 939              		.loc 1 207 0
 940 0400 FFF7FEFF 		bl	delay_interrupt_init
 208:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     keyboard_init();
 941              		.loc 1 208 0
 942 0404 FFF7FEFF 		bl	keyboard_init
 209:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 210:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // *** Interrupt init ***
 211:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set port D pin 8-11 as interrupts
 212:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     SYSCFG.exticr3 = 0x3333;
 943              		.loc 1 212 0
 944 0408 154B     		ldr	r3, .L45
 945 040a 164A     		ldr	r2, .L45+4
 946 040c 1A61     		str	r2, [r3, #16]
 213:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 214:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set pin 8-11 as interrupts on both flanks
 215:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     EXTI.imr = INTERRUPT_TARGET_PINS;
 947              		.loc 1 215 0
 948 040e 164B     		ldr	r3, .L45+8
 949 0410 F022     		movs	r2, #240
 950 0412 1205     		lsls	r2, r2, #20
 951 0414 1A60     		str	r2, [r3]
 216:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     EXTI.ftsr |= INTERRUPT_TARGET_PINS;
 952              		.loc 1 216 0
 953 0416 144B     		ldr	r3, .L45+8
 954 0418 134A     		ldr	r2, .L45+8
 955 041a D268     		ldr	r2, [r2, #12]
 956 041c F021     		movs	r1, #240
 957 041e 0905     		lsls	r1, r1, #20
 958 0420 0A43     		orrs	r2, r1
 959 0422 DA60     		str	r2, [r3, #12]
 217:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     EXTI.rtsr |= INTERRUPT_TARGET_PINS;
 960              		.loc 1 217 0
 961 0424 104B     		ldr	r3, .L45+8
 962 0426 104A     		ldr	r2, .L45+8
 963 0428 9268     		ldr	r2, [r2, #8]
 964 042a F021     		movs	r1, #240
 965 042c 0905     		lsls	r1, r1, #20
 966 042e 0A43     		orrs	r2, r1
 967 0430 9A60     		str	r2, [r3, #8]
 218:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 219:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Set up interrupt vector
 220:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     *((void (**) (void))0x2001C09C) = keyboard_interrupt_handler;
 968              		.loc 1 220 0
 969 0432 0E4B     		ldr	r3, .L45+12
 970 0434 0E4A     		ldr	r2, .L45+16
 971 0436 1A60     		str	r2, [r3]
 221:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     *((void (**) (void))0x2001C0E0) = keyboard_interrupt_handler;
 972              		.loc 1 221 0
 973 0438 0E4B     		ldr	r3, .L45+20
 974 043a 0D4A     		ldr	r2, .L45+16
 975 043c 1A60     		str	r2, [r3]
 222:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     
 223:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     // Enable interrupt vectors
 224:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     NVIC_ISER0 |= (1 << 23);
 976              		.loc 1 224 0
 977 043e 0E4B     		ldr	r3, .L45+24
 978 0440 0D4A     		ldr	r2, .L45+24
 979 0442 1268     		ldr	r2, [r2]
 980 0444 8021     		movs	r1, #128
 981 0446 0904     		lsls	r1, r1, #16
 982 0448 0A43     		orrs	r2, r1
 983 044a 1A60     		str	r2, [r3]
 225:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c ****     NVIC_ISER1 |= (1 << (40 - 32));
 984              		.loc 1 225 0
 985 044c 0B4B     		ldr	r3, .L45+28
 986 044e 0B4A     		ldr	r2, .L45+28
 987 0450 1268     		ldr	r2, [r2]
 988 0452 8021     		movs	r1, #128
 989 0454 4900     		lsls	r1, r1, #1
 990 0456 0A43     		orrs	r2, r1
 991 0458 1A60     		str	r2, [r3]
 226:C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure\startup.c **** }
 992              		.loc 1 226 0
 993 045a C046     		nop
 994 045c BD46     		mov	sp, r7
 995              		@ sp needed
 996 045e 80BD     		pop	{r7, pc}
 997              	.L46:
 998              		.align	2
 999              	.L45:
 1000 0460 00380140 		.word	1073821696
 1001 0464 33330000 		.word	13107
 1002 0468 003C0140 		.word	1073822720
 1003 046c 9CC00120 		.word	536985756
 1004 0470 00000000 		.word	keyboard_interrupt_handler
 1005 0474 E0C00120 		.word	536985824
 1006 0478 00E100E0 		.word	-536813312
 1007 047c 04E100E0 		.word	-536813308
 1008              		.cfi_endproc
 1009              	.LFE5:
 1011              	.Letext0:
 1012              		.file 2 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/gpio.h"
 1013              		.file 3 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/syscfg.h"
 1014              		.file 4 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/exti.h"
 1015              		.file 5 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/spoopy.xbm"
 1016              		.file 6 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/wall.xbm"
 1017              		.file 7 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/exit.xbm"
 1018              		.file 8 "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/sprites.h"
