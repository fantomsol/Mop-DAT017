#include "sprites.h"

void sprites_init(void){
    GEOMETRY spoopy_geometry = {
		32, // numpoints
		spoopy_width, spoopy_height, // Size x and y
		// px
		spoopy_bits
	};
	
	OBJECT spoopy = {
		&spoopy_geometry,
		0, 0,
		1, 2,
		draw_object,
		clear_object,
		move_object,
		set_object_speed
	};
	
	GEOMETRY portal_geometry = {
		32,
		portal_width, portal_height,
		portal_bits
	};
	
	OBJECT portal = {
		&portal_geometry,
		0, 0,
		1, 1,
		draw_object,
		clear_object,
		move_object,
		set_object_speed
	};
}