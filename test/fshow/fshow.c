/*
 * fshow.c
 *
 * Display font.
 * 
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 17.08.2021   tstih
 *
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>

#include <gpx.h>

font_t *font;

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

int main(int argc, char *argv[]) {

    /* First check the arguments. */
    if (argc!=4) {
        printf("Usage: fshow <font-file> <xpos> <ypos>\n\n");
        return -1;
    }
    char *fname=argv[1];
    int xpos=atoi(argv[2]), ypos=atoi(argv[3]);

    /* Get file len. */
    struct stat statbuf;
    if (stat(fname, &statbuf)<0) {
        printf("Unable to get file len for %s, exiting.\n", fname);
        return -1;
    }

    /* Now that we've got the length, allocate memory. */
    font=malloc(statbuf.st_size);

    /* And load the file into it. */
    int fd=open(fname,O_RDONLY);
    int bread=read(fd,font,statbuf.st_size);
    close(fd);

    /* enter graphics mode */
    gpx_t *g=gpx_init();
    
    /* draw string */
    for(int i=0;i<sizeof(text)/sizeof(char*);i++)
        gpx_draw_string(g, font, xpos, ypos+i*16, text[i]);   

    /* leave graphics */
    gpx_exit(g);

    /* Free raster memory. */
    free(font);

    return 0;
}