#ifndef SPRITES_H
#define SPRITES_H

#include "graphicdisplay.h"
#include "spoopy.xbm"
#include "exit.xbm"
#include "enemy.xbm"

typedef struct tSprite{
    unsigned char width;
    unsigned char height;
    unsigned char * data;
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

void update_sprite_object(PSPRITE_OBJECT);
#endif // sprites.h