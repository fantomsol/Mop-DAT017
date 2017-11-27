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

GEOMETRY ball_geometry = {
	12,
	4,4,
	{
		{0,1}, {0,2}, {1,0}, {2,0}, {2,0}, {3,0},
		{2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2} 
	}
};

void set_object_speed(POBJECT o, int speedx, int speedy);

void draw_object(POBJECT o);

#endif // GEOMETRY_H