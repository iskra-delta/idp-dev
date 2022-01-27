/*
 * scn2674.h
 * 
 * header for text mode (only) primitives for the signetics scn2674 card.
 *
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 23.03.2021   tstih
 * 
 */
#ifndef _SCN2674_H
#define _SCN2674_H

/* show cursor */
extern void _scn2674_cursor_on();

/* hide cursor */
extern void _scn2674_cursor_off();

/* clear screen */
extern void _scn2674_cls();

/* goto x,y */
extern void _scn2674_xy(int x, int y);

/* burst out characters, without memory access check */
#define BURST_CHARS 10
extern void _scn2674_burst(
    const char *chars, 
    unsigned char attr, 
    unsigned char count);

/* put single char, don't change cursor position*/
extern void _scn2674_putchar(char ch, unsigned char attr);

/* get char and attribute at cursor position */
extern void _scn2674_getchar(char *ch, unsigned char *attr);

/* get cursor address */
extern unsigned int _scn2674_curptr();

/* get row address */
extern unsigned int _scn2674_rowptr(int row);

#endif /* _SCN2674_H */