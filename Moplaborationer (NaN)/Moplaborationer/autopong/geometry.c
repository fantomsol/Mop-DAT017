#include "geometry.h"

void set_object_speed(POBJECT o, int speedx, int speedy) {
	o->dirx = speedx;
	o->diry = speedy;
}

void draw_object(POBJECT o) {
	for(int i = 0; i < o->geo->numpoints; i++) {
		pixel(
			o->posx + o->geo->px[i].x,
			o->posy + o->geo->px[i].y,
			1
		);
	}
}

void clear_object(POBJECT o) {
	for(int i = 0; i < o->geo->numpoints; i++) {
		pixel(
			o->posx + o->geo->px[i].x,
			o->posy + o->geo->px[i].y,
			0
		);
	}
}

void move_object(POBJECT o) {
	clear_object(o);
	unsigned char newx, newy;
	newx = o->posx + o->dirx;
	newy = o->posy + o->diry;
	if(newx < 1 || newx + o->geo->sizex > 128) {
		o->dirx = -1 * o->dirx;
	}
	if(newy < 1 || newy + o->geo->sizey > 64) {
		o->diry = -1 * o->diry;
	}
	o->posx += o->dirx;
	o->posy += o->diry;
	
	draw_object(o);
}