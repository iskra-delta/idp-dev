/*
 * tiles.h
 *
 * Header file for libtiles.
 *
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 05.12.2021   tstih
 *
 */
#ifndef __TILES_H__
#define __TILES_H__

#include <gpx.h>

/* Tilemap struct. */
typedef struct tile_map_s {
    unsigned char width;
    unsigned char height;
    unsigned char tilewidth;
    unsigned char tileheight;
    unsigned char data[0];
} tile_map_t;

/* Draw tilemap at x,y. If mrect is null it draws entire map,
   otherwise mrect is a relative rectangle inside tile map in
   tile units. */
extern void tile_map_draw(
    gpx_t *g,
    unsigned int x,
    unsigned int y,
    rect_t *mrect,
    tile_map_t *map, 
    font_t *glyphs);

#endif /* __PARTNER_H__ */