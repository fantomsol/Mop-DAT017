/*
 * 	startup.c
 *
 */
#include "gpio.h"
#include "syscfg.h"
#include "exti.h"
#include "sprites.h"

//#define INTERRUPT_TARGET_PINS 0x0F00
#define INTERRUPT_TARGET_PINS ((1 << 5) + (1 << 6))
#define NVIC 0xE000E100
#define NVIC_ISER0 *((volatile unsigned int *) NVIC)
#define NVIC_ISER1 *((volatile unsigned int *) (NVIC + 0x004))

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

#define GRID_WIDTH 16
#define GRID_HEIGHT 16

#define EMPTY_SPACE 0
#define SPOOPY_SPACE 1
#define EXIT_SPACE 2
#define WALL_SPACE 3

#define MAP_WIDTH (SCREEN_WIDTH / GRID_WIDTH) /*Default: 8*/
#define MAP_HEIGHT (SCREEN_HEIGHT / GRID_HEIGHT) /*Default: 4*/
#define WALL_AMOUNT 0

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
void app_init(void);
void keyboard_interrupt_handler(void);
void position_checking(PSPRITE_OBJECT);
void init_map_grid(PSPRITE_OBJECT, PSPRITE_OBJECT, PSPRITE_OBJECT[]);

unsigned char keyboard_val = 0;
unsigned char map_grid[MAP_WIDTH][MAP_HEIGHT];

unsigned char win_state = 0;

unsigned char start_message1[] = "Spoopy's";
unsigned char start_message2[] = "bizarre adventure";

unsigned char victory_message1[] = "Congratulations!";
unsigned char victory_message2[] = "You win!";

void startup(void){
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

void main(void){
    app_init();
    //sprites_init();
    
    graphic_clear_screen();
    ascii_clear_screen();
    graphic_write_command(LCD_ON, B_CS1 | B_CS2);
    graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
    
    gotoxy(1, 1);
    ascii_write_string(start_message1);
    gotoxy(1, 2);
    ascii_write_string(start_message2);
    
    // Initiate objects
    SPRITE spoopy_sprite = {
        0, // Init values, disregard these as these will be set later
        0,
        {0}
    };
    load_sprite(&spoopy_sprite, spoop_bits, spoop_width, spoop_height);
     // Initiate Spoopy
    SPRITE_OBJECT spoopy = {
        &spoopy_sprite, // sprite
        0, 0, // Set velocity, x & y
        500, 500, // Set position, x & y
        draw_sprite_object,
        clear_sprite_object,
        move_sprite_object,
        set_sprite_object_speed,
    };
    PSPRITE_OBJECT spoopy_pointer = &spoopy;
    
    //init_spoopy(spoopy_pointer)
    SPRITE exit_sprite = {
        0,
        0,
        {0}
    };
    PSPRITE exit_sprite_pointer = &exit_sprite;
    load_sprite(exit_sprite_pointer, exit_bits, exit_width, exit_height);
    
    SPRITE_OBJECT exit = {
        exit_sprite_pointer,
        0, 0,
        500, 500,
        draw_sprite_object,
        clear_sprite_object,
        dummy_function1,
        dummy_function2
    };
    PSPRITE_OBJECT exit_pointer = &exit;
    PSPRITE_OBJECT wall_pointers[WALL_AMOUNT];
    for(int i = 0; i < WALL_AMOUNT; i++){
        wall_pointers[i] = init_wall();
    }
    
    init_map_grid(spoopy_pointer, exit_pointer, wall_pointers);
	
    // Draw pointers
    
    spoopy_pointer->draw(spoopy_pointer);
    
    graphic_write_command(LCD_ON, B_CS1 | B_CS2);
    graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 
    exit_pointer->draw(exit_pointer);
    for(int i = 0; i < WALL_AMOUNT; i++){
        wall_pointers[i]->draw(wall_pointers[i]);
    }
    
    GPIO_D.odrHigh = 0xF0;
	while(1){
        GPIO_D.odrLow = GPIO_D.idrHigh;
		keyboard_val = keyb();
		switch (keyboard_val){
			case 6: spoopy_pointer->set_speed(spoopy_pointer, 1, 0); break;
			case 4: spoopy_pointer->set_speed(spoopy_pointer, -1, 0); break;
			case 2: spoopy_pointer->set_speed(spoopy_pointer, 0, -1); break;
			case 8: spoopy_pointer->set_speed(spoopy_pointer, 0, 1); break;
            default: spoopy_pointer->set_speed(spoopy_pointer, 0, 0); break;
		}
        position_checking(spoopy_pointer);
        update_sprite_object(spoopy_pointer);
		graphic_write_command(LCD_ON, B_CS1 | B_CS2);
		graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
		delay_milli(250);
        if(win_state){
            break;
        }
	}
    
    ascii_clear_screen();
    graphic_clear_screen();
    
    spoopy_pointer->pos_x = (SCREEN_WIDTH / 2) - (spoopy_pointer->sprt->width / 2);
    spoopy_pointer->pos_y = (SCREEN_HEIGHT / 2) - (spoopy_pointer->sprt->height / 2);
    
    spoopy_pointer->draw(spoopy_pointer);
    
    gotoxy(1, 1);
    ascii_write_string(victory_message1);
    gotoxy(1, 2);
    ascii_write_string(victory_message2);
}

void keyboard_interrupt_handler(void){
    if(EXTI.pr & INTERRUPT_TARGET_PINS){
        keyboard_val = keyb();
        GPIO_D.odrHigh = 0xF0;
        
        EXTI.pr |= (EXTI.pr & INTERRUPT_TARGET_PINS);
    }
}

void position_checking(PSPRITE_OBJECT spoopy_pointer){
    int spoopy_current_x = (spoopy_pointer->pos_x + 1) / GRID_WIDTH;
    int spoopy_current_y = (spoopy_pointer->pos_y + 1) / GRID_HEIGHT;
    
    int next_space = map_grid[spoopy_current_x + spoopy_pointer->dir_x][spoopy_current_y + spoopy_pointer->dir_y];
    
    // Set velocity to 0 if Spoopy is about to mave into a wall, otherwise multiply it by an apropriate amount
    switch(next_space){
        case WALL_SPACE: spoopy_pointer->set_speed(spoopy_pointer, 0, 0); break;
        case EXIT_SPACE: win_state = 1;
        default: spoopy_pointer->set_speed(spoopy_pointer, spoopy_pointer->dir_x * GRID_WIDTH, spoopy_pointer->dir_y * GRID_HEIGHT); break;
    }
    
    if(map_grid[spoopy_current_x][spoopy_current_y] == EXIT_SPACE){
        win_state = 1;
    }
}

void init_map_grid(PSPRITE_OBJECT spoopy, PSPRITE_OBJECT exit, PSPRITE_OBJECT walls[]){
    for(int x = 0; x < MAP_WIDTH; x++){
        for(int y = 0; y < MAP_HEIGHT; y++){
            map_grid[x][y] = EMPTY_SPACE;
        }
    }
    
    // Set Spoopy's starting position
    int spoopy_x = 0;
    int spoopy_y = 0;
    map_grid[spoopy_x][spoopy_y] = SPOOPY_SPACE;
    spoopy->pos_x = spoopy_x * GRID_WIDTH;
    spoopy->pos_y = spoopy_y * GRID_HEIGHT;
    
    // Set exit's starting position
    int exit_x = MAP_WIDTH - 1;
    int exit_y = MAP_HEIGHT - 1;
    map_grid[exit_x][exit_y] = EXIT_SPACE;
    exit->pos_x = exit_x * GRID_WIDTH;
    exit->pos_y = exit_y * GRID_HEIGHT;
    
    // Set walls' starting positions
    int wall_x[] = {1, 1, 1, 3, 3, 3, 5, 5, 5, 6};
    int wall_y[] = {0, 1, 2, 3, 2, 1, 0, 1, 2, 2};
    for(int i = 0; (i < sizeof(wall_x)) && (i < WALL_AMOUNT); i++){
        map_grid[wall_x[i]][wall_y[i]] = WALL_SPACE;
        walls[i]->pos_x = wall_x[i] * GRID_WIDTH;
        walls[i]->pos_y = wall_y[i] * GRID_HEIGHT;
    }
}

void app_init(void){
#ifdef USBDM
	*((unsigned long*) 0x40023830) = 0x18;
	__asm volatile( 
		" LDR R0, =0x08000209\n"
		" BLX R0\n"
		);
#endif

    GPIO_D.moder &= 0xFFFF0000;
    GPIO_D.moder |= 0x00005555;

    graphicdisplay_init();
    asciidisplay_init();
    graphic_initialize();
    
    keyboard_init();
    
    // *** Interrupt init ***
    // Set port D pin 8-11 as interrupts
    SYSCFG.exticr3 = 0x3333;
    
    // Set pin 8-11 as interrupts on both flanks
    EXTI.imr = INTERRUPT_TARGET_PINS;
    EXTI.ftsr |= INTERRUPT_TARGET_PINS;
    EXTI.rtsr |= INTERRUPT_TARGET_PINS;
    
    // Set up interrupt vector
    *((void (**) (void))0x2001C09C) = keyboard_interrupt_handler;
    *((void (**) (void))0x2001C0E0) = keyboard_interrupt_handler;
    
    // Enable interrupt vectors
    NVIC_ISER0 |= (1 << 23);
    NVIC_ISER1 |= (1 << (40 - 32));
}
