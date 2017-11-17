#include <stdio.h>

void app_init(void);
unsigned char keyb(void);
void out7seg(unsigned char);

// Konstantdefinitioner (portadresser)
void startup(void){
    
}

void main(void)
{
    app_init();
    while(1){
        out7seg(keyb());
    }
}

void app_init(void){
    
}

// Läs knapp från tangentbord och ge tillbaka dess karaktär
unsigned char keyb(void){
    
}

// Skriv ut 'c' på 7-segments-display
void out7seg(unsigned char c){
    
}
