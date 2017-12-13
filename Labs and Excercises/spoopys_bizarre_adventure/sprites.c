#include "sprites.h"

void load_sprite(SPRITE* s, unsigned char* data, int width, int height){
    s->width = width;
    s->height = height;
    s->data = data;
}

void draw_sprite(SPRITE* s, int x, int y, int set){
    int width_in_bytes;
    
    if(s->width % 8 == 0){
        width_in_bytes = s->width / 8;
    } else {
        width_in_bytes = s->width / 8 + 1;
    }
    
    for(int i = 0; i < s->height; i++){
        for(int j = 0; j < width_in_bytes; j++){
            unsigned char byte = s->data[i * width_in_bytes + j];
            for(int k = 0; k < 8; k++){
                if(byte & (1 << k)){
                    pixel(8 * j + k + x + 1, i + y + 1, set);
                }
            }
        }
    }
}

void draw_sprite_object(PSPRITE_OBJECT p){
    draw_sprite(p->sprt, p->pos_x, p->pos_y, 1);
}

void clear_sprite_object(PSPRITE_OBJECT p){
    draw_sprite(p->sprt, p->pos_x, p->pos_y, 0);
}

void move_sprite_object(PSPRITE_OBJECT p){
    p->clear(p);
    p->pos_x += p->dir_x;
    p->pos_y += p->dir_y;
    
    if(p->pos_x < 0){
        p->pos_x = 0;
        p->dir_x = -p->dir_x;
    }
    if(p->pos_x + p->sprt->width > 127){
        p->pos_x = 127 - p->sprt->width;
        p->dir_x = -p->dir_x;
    }
    
    if(p->pos_y < 0){
        p->pos_y = 0;
        p->dir_y = -p->dir_y;
    }
    if(p->pos_y + p->sprt->height > 63){
        p->pos_y = 63 -p->sprt->height;
        p->dir_y = -p->dir_y;
    }
}

void set_sprite_object_speed(PSPRITE_OBJECT p, int x, int y){
    p->dir_x = x;
    p->dir_y = y;
}

void dummy_function1(PSPRITE_OBJECT p){
    return;
}

void dummy_function2(PSPRITE_OBJECT p, int x, int y){
    return;
}

void update_sprite_object(PSPRITE_OBJECT obj){
    obj->clear(obj);
    obj->move(obj);
    obj->draw(obj);
}

