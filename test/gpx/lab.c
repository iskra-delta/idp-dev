/*
 * lab.c.line-clip
 *
 * Clipping lines.
 * 
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 05.12.2021   tstih
 *
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <partner.h>

#include <gpx.h>

void main() {

    /* clear text mode */
    clrscr();
    setcursortype(NOCURSOR);

    /* Enter graphic mode. */
    gpx_t *g=gpx_init();

    /* Reset clip area. */
    /*gpx_set_clip_area(g, NULL);*/
    rect_t screen={0,0,1023,511};
    gpx_draw_rect(g,&screen);

    /* clip test */
    rect_t clip_rect={500,150,600,300};
    gpx_set_clip_area(g, &clip_rect);
    gpx_draw_rect(g,&clip_rect);

   for(int xd=0; xd<900; xd+=10)
        gpx_draw_line(g, xd, 0, xd+40, 511);

    /* first draw rectangle with hor. lines */
    rect_t clip_rect_2={600,100,620,120};
    gpx_set_clip_area(g, &clip_rect_2);
    gpx_draw_rect(g,&clip_rect_2);
    for(int y=0;y<511;y++)
        gpx_draw_line(g,0,y,1023,y);

    /* now do the same with vert. lines */
    rect_t clip_rect_3={640,100,660,120};
    gpx_set_clip_area(g, &clip_rect_3);
    gpx_draw_rect(g,&clip_rect_3);
    for(int x=0;x<1023;x++)
        gpx_draw_line(g,x,0,x,511);

    while (!kbhit());

    /* clear graphics */
    gpx_cls(g);

    /* Leave graphics mode. */
    gpx_exit(g);

    /* restore cursor */
    setcursortype(NORMALCURSOR);
}