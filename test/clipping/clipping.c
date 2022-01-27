/*
 * clipping.c
 *
 * Clipping tiny glyphs.
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

#define CLIP_X0     100 
#define CLIP_Y0     10
#define CLIP_X1     450
#define CLIP_Y1     150

#define CLIP
/*#undef CLIP*/

extern void oldwiz_font;
extern void chicago_font;

char *text[]={
    "Ozracje je mracno, vreme oblacno...",
    "...vesoljni potop je ze mimo!",
    "A glej zla usoda,",
    "je prava nadloga",
    "in spet se pripravlja ta dan,",
    "ko svet bo porusen, pregnan!",
    "Svetilka in kompas,",
    "edino orodje za hude je case",
    "pogumno ... ne jamraj ...",
    "zanesi se nase!"};

void main() {

    /* clear text mode */
    clrscr();
    setcursortype(NOCURSOR);

    /* enter graphics */
    gpx_t *g=gpx_init();

    /* clear graphics mode. */
    gpx_cls(g);

    /* now draw text. */
    int ypos=0, i;
    for(i=0;i<sizeof(text)/sizeof(char*);i++) {
        gpx_draw_string(g, (font_t *)&oldwiz_font, 0, ypos+i*16, text[i]);  
        gpx_draw_string(g, (font_t *)&chicago_font, 400, ypos+i*16, text[i]);          
    }

#ifdef CLIP

    /* wait for keypress */
    while (!kbhit());

    /* clear graphics */
    gpx_cls(g);

    /* first set clip rectangle. */
    rect_t clip_rect = {CLIP_X0,CLIP_Y0,CLIP_X1,CLIP_Y1};
    rect_t clip_outer={CLIP_X0-1,CLIP_Y0-1,CLIP_X1+2,CLIP_Y1+2};
    gpx_draw_rect(g,&clip_outer);
    gpx_set_clip_area(g,&clip_rect);

    ypos=0;
    for(i=0;i<sizeof(text)/sizeof(char*);i++) {
        gpx_draw_string(g, (font_t *)&oldwiz_font, 0, ypos+i*16, text[i]);  
        gpx_draw_string(g, (font_t *)&chicago_font, 400, ypos+i*16, text[i]);          
    }

#endif

    /* wait for keypress */
    while (!kbhit());

    /* clear graphics */
    gpx_cls(g);

    /* leave graphics */
    gpx_exit(g);

    /* restore cursor */
    setcursortype(NORMALCURSOR);
}