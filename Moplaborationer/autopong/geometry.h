#ifndef GEOMETRY_H
#define GEOMETRY_H

#define MAX_POINTS 20

typedef struct tPoint {
	unsigned char x;
	unsigned char y;
} POINT;

typedef struct tGeometry {
	int		numpoints;
	int 	sizex;
	int		sizey;
	POINT	px[MAX_POINTS];
} GEOMETRY, *PGEOMETRY;

typedef struct tObj {
	PGEOMETRY geo;
	int 	dirx, diry;
	int		posx, posy;
	void	(* draw) (struct tObj *);
	void	(* clear) (struct tObj *);
	void	(* move) (struct tObj *);
	void	(* set_speed) (struct tObj *, int, int);
} OBJECT, *POBJECT;

static GEOMETRY ball_geometry = {
	12,
	4,4,
	{
		{0,1}, {0,2}, {1,0}, {1,1}, {1,2}, {1,3},
		{2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2} 
	}
};

void set_object_speed(POBJECT o, int speedx, int speedy);

void draw_object(POBJECT o);

void clear_object(POBJECT o);

void move_object(POBJECT o);

static OBJECT ball = {
	&ball_geometry,		// geometri för en boll
	0, 0,				// initiala riktningskoordinater
	1, 1,				// initial startposition
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

#endif // GEOMETRY_H