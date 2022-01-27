/*
 * conio.c
 *
 * DOS/Windows like implementation of conio.h for fast text ops.
 *
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 03.08.2021   tstih
 *
 */
#ifndef __CONIO_H__
#define __CONIO_H__

#include <stdbool.h>

#include <sys/bdos.h>

#define AT_NORMAL       0x00
#define AT_BLINK        0x01
#define AT_UNDERLINE    0x02
#define AT_HIGHLIGHT    0x10
#define AT_REVERSE      0x20

struct text_info {
    unsigned char attr;         /* Current attribute. */
    unsigned char screenheight; /* text screen's height */
    unsigned char screenwidth;  /* text screen's width */
    unsigned char curx;         /* x-coordinate */
    unsigned char cury;         /* y-coordinate */
}; 

/* check for keypress (don't block), return 0 if no key */
extern int kbhit(void);

/* move cursor to x,y */
extern void gotoxy(int x, int y);

/* clear screen and move cursor to 0,0 */
extern void clrscr(void);

/* Set raw attribute */
void setattr(unsigned char attr);

/* get screen dimensions */
extern void gettextinfo(struct text_info *r);

/* fast put character */
extern int putch(int c);

/* read char and attr at cursor */
extern void rdchat(char *c, unsigned char *attr);

/* fast put string */
extern int cputs(const char *str);

/* current x */
extern int wherex(void);

/* current y */
extern int wherey(void);

/* set cursor type */
#define NOCURSOR        0
#define NORMALCURSOR    1
extern void setcursortype(int cur_t);

#endif /* __CONIO_H__ */