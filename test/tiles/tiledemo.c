/*
 * tiledemo.c
 *
 * Clipping tiny glyphs.
 * 
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 08.12.2021   tstih
 *
 */
#include <stdint.h>
#include <stdio.h>

#include <partner.h>
#include <gpx.h>
#include <tiles.h>

#define BIG

#ifdef BIG
extern void mmb_map;
extern void mmb_font;
#else
extern void mm1_font, mm2_font, mm3_font;
extern void mm_tilemap_1, mm_tilemap_2, mm_tilemap_3;
#endif

void main() {

    /* clear text mode */
    clrscr();
    setcursortype(NOCURSOR);

    /* enter graphics */
    gpx_t *g=gpx_init();

    /* clear graphics mode. */
    gpx_cls(g);

    /* Set clipping to test it... */
    rect_t clip_area = {130,40,503,250};
    gpx_draw_rect(g,&clip_area);
    gpx_set_clip_area(g,&clip_area);

    /* now draw tilemap */
    rect_t room_rect={0,0,31,15};

#ifdef BIG
    tile_map_draw(
        g,
        128,
        64,
        &room_rect,
        (tile_map_t *)&mmb_map, 
        (font_t *)&mmb_font);
#else
    tile_map_draw(
        g,
        50,
        50,
        &room_rect,
        (tile_map_t *)&mm_tilemap_1, 
        (font_t *)&mm1_font);

    tile_map_draw(
        g,
        350,
        50,
        &room_rect,
        (tile_map_t *)&mm_tilemap_2, 
        (font_t *)&mm2_font);

    tile_map_draw(
        g,
        650,
        50,
        &room_rect,
        (tile_map_t *)&mm_tilemap_3, 
        (font_t *)&mm3_font);
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