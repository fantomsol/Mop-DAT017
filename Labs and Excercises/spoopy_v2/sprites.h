#ifndef SPRITES_H
#define SPRITES_H

#include "graphicdisplay.h"
#include "spoopy.xbm"
#include "wall.xbm"
#include "exit.xbm"

typedef struct tSprite{
    unsigned char width;
    unsigned char height;
    unsigned char* data;
} SPRITE, *PSPRITE;

typedef struct tSpriteObj{
	PSPRITE sprt;
	int dir_x, dir_y;
	int pos_x, pos_y;
	void (* draw) (struct tSpriteObj*);
	void (* clear) (struct tSpriteObj*);
	void (* move) (struct tSpriteObj*);
	void (* set_speed) (struct tSpriteObj*, int, int);
}SPRITE_OBJECT, *PSPRITE_OBJECT;

void load_sprite(SPRITE*, unsigned char*, int, int);
void draw_sprite(SPRITE*, int, int, int);
void draw_sprite_object(PSPRITE_OBJECT);
void clear_sprite_object(PSPRITE_OBJECT);
void move_sprite_object(PSPRITE_OBJECT);
void set_sprite_object_speed(PSPRITE_OBJECT, int, int);
void dummy_function1(PSPRITE_OBJECT);
void dummy_function2(PSPRITE_OBJECT, int, int);

PSPRITE_OBJECT init_spoopy(void);
PSPRITE_OBJECT init_wall(void);
PSPRITE_OBJECT init_exit(void);

void update_sprite_object(PSPRITE_OBJECT);

/*GEOMETRY spoopy_geometry;
GEOMETRY portal_geometry;
OBJECT spoopy;
OBJECT portal;

#define spoopy_width 16
#define spoopy_height 16
static unsigned char spoopy_bits[] = {
   0x3c, 0x3c, 0x43, 0xc2, 0x9d, 0xb9, 0x0f, 0xd0, 0x74, 0x2e, 0x4a, 0x52,
   0x6a, 0x56, 0x7a, 0x5e, 0x84, 0x21, 0xf8, 0x1f, 0x30, 0x0c, 0x0c, 0x10,
   0x12, 0x24, 0x16, 0x38, 0xc8, 0x11, 0x78, 0x1e };


#define spoopy_right_width 16
#define spoopy_right_height 16
static unsigned char spoopy_right_bits[] = {
   0xf8, 0x07, 0x06, 0x0f, 0x31, 0x10, 0x09, 0x20, 0x07, 0x27, 0x84, 0x24,
   0x84, 0x26, 0x84, 0x27, 0x08, 0x18, 0xf0, 0x0f, 0x30, 0x0c, 0x0c, 0x18,
   0x12, 0x18, 0x16, 0x08, 0xc8, 0x11, 0x78, 0x1e };

#define spoopy_left_width 16
#define spoopy_left_height 16
static unsigned char spoopy_left_bits[] = {
   0xe0, 0x1f, 0xf0, 0x60, 0x08, 0x8c, 0x04, 0x90, 0xe4, 0xe0, 0x24, 0x21,
   0x64, 0x21, 0xe4, 0x21, 0x18, 0x10, 0xf0, 0x0f, 0x30, 0x0c, 0x18, 0x30,
   0x18, 0x48, 0x10, 0x68, 0x88, 0x13, 0x78, 0x1e };

#define spoopy_back_width 16
#define spoopy_back_height 16
static unsigned char spoopy_back_bits[] = {
   0x3c, 0x3c, 0x43, 0xc2, 0x9d, 0xb9, 0x0b, 0xf0, 0x04, 0x20, 0x02, 0x40,
   0x02, 0x40, 0x02, 0x40, 0x04, 0x20, 0xf8, 0x1f, 0x10, 0x08, 0x0e, 0x30,
   0x02, 0x48, 0x0c, 0x78, 0x88, 0x13, 0x78, 0x1e };

#define enemy_width 16
#define enemy_height 16
static unsigned char enemy_bits[] = {
   0x1e, 0x78, 0xfe, 0x7f, 0x06, 0x60, 0x34, 0x2c, 0x68, 0x16, 0x48, 0x12,
   0x30, 0x0c, 0xe0, 0x07, 0x60, 0x06, 0xb0, 0x0d, 0xd0, 0x0a, 0x68, 0x17,
   0x9c, 0x39, 0x6c, 0x36, 0xf4, 0x2f, 0x9c, 0x39 };

#define portal_width 16
#define portal_height 16
static unsigned char portal_bits[] = {
   0x55, 0x55, 0xaa, 0xaa, 0x55, 0x55, 0xaa, 0xaa, 0x55, 0x55, 0xaa, 0xaa,
   0x55, 0x55, 0xaa, 0xaa, 0x55, 0x55, 0xaa, 0xaa, 0x55, 0x55, 0xaa, 0xaa,
   0x55, 0x55, 0xaa, 0xaa, 0x55, 0x55, 0xaa, 0xaa };

#define end_portal_width 16
#define end_portal_height 16
static unsigned char end_portal_bits[] = {
   0x55, 0x55, 0xaa, 0xaa, 0x55, 0x75, 0xa2, 0xda, 0x55, 0x75, 0xaa, 0xaa,
   0x55, 0x55, 0xaa, 0xaa, 0x55, 0x55, 0xaa, 0xaa, 0x55, 0x55, 0xaa, 0x8a,
   0x5d, 0x55, 0xbe, 0xfa, 0x5d, 0x55, 0xaa, 0x8a };*/
#endif // sprites.h