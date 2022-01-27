/*
 * test.c
 *
 * Display vector font.
 * 
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 29.08.2021   tstih
 *
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <sys/stat.h>

#include <partner.h>
#include <gpx.h>

extern void cursors_font;

int main() {

    /* Clear (text mode) screen */
    clrscr();

    /* enter graphics mode */
    gpx_t *g=gpx_init();

    font_t* f=(font_t *)&cursors_font;

    /* draw rectangle 
    rect_t rect={ 100,100,400,200};
    gpx_draw_rect(g, &rect); */

    int x=256, y=0, oe=0;
    while (y<128) {
        gpx_draw_string(g, f, x, y, "A");
        if (oe==0) {
            x++;
            if (x==768) {
                y=y+16;
                oe=1;
            }
         } else 
         {
             x--;
             if (x==128) {
                y=y+16;
                oe=0;
             }
         }
    }

    /* leave graphics */
    gpx_exit(g);

    while (!kbhit()) {}

    return 0;
}