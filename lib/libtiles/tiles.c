/*
 * tiles.c
 *
 * Main libtiles file.
 *
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 05.12.2021   tstih
 *
 */
#include <tiles.h>
#include <stdio.h>
#include <stdlib.h>

void tile_map_draw(
    gpx_t *g,
    unsigned int x,
    unsigned int y,
    rect_t *mrect,
    tile_map_t *map, 
    font_t *glyphs) {

    /* reserve space for one tile row... */
    int rowlen=mrect->x1 - mrect->x0 + 1;
    char *tilerow=malloc(rowlen+1);

    /* first find tile rectangle in tile map... */
    char *pstart=map->data, rowndx=0;
    for (int row=mrect->y0;row<=mrect->y1;row++) {
        rowndx=0;
        for (int col=mrect->x0; col<=mrect->x1; col++) { 
            char *ptile=pstart + row*rowlen + col; 
            tilerow[rowndx++]=((*ptile)+1);
        }
        tilerow[rowndx]=0; /* terminate! */
        /* and draw... */
        gpx_draw_string(g, glyphs, x, y, tilerow);
        y=y+map->tileheight;
    }

    /* free the row space */
    free(tilerow);

}