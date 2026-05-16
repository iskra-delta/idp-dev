/*
 * conio.c
 *
 * Parts of conio.h, implemented by libpartner.
 *
 * MIT License (see: LICENSE)
 * Copyright (c) 2021 Tomaz Stih
 *
 * 03.08.2021   tstih
 *
 */
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include <partner/conio.h>
#include <util/scn2674.h>

/* Current text_info */
static struct text_info _ti;

/* Initialization function. */
__sfr __at 0xac _SETUP_WIDTH;
void _init_conio() {
    /* Initialize text_info. */
    _ti.attr=0;
    _ti.curx=0xff;                       /* Uninitialized. */
    _ti.cury=0xff;                       /* Uninitialized. */
    _ti.screenheight=26;
    _ti.screenwidth = _SETUP_WIDTH - 1;
}


void gettextinfo(struct text_info *r) {
    r->curx=wherex();
    r->cury=wherey();
    r->attr=_ti.attr;
    r->screenheight=_ti.screenheight;
    r->screenwidth=_ti.screenwidth;
}


int kbhit(void) {
    return bdos(C_RAWIO,0xff);
}


int wherex(void) {
    if (_ti.curx==0xff) { /* Current col undefined. */
        uint8_t y=wherey();
        if (y!=0xff) /* Only if we have a meaningful y! */
            _ti.curx=_scn2674_curptr() - _scn2674_rowptr(y);
    }
    return _ti.curx;
}


int wherey(void) {
    if (_ti.cury==0xff) { /* Current row undefined? */
        uint16_t curaddr=_scn2674_curptr();
        for(unsigned char row=0;row<26;row++) {
            uint16_t rowaddr=_scn2674_rowptr(row);
            if (curaddr>=rowaddr && curaddr<rowaddr+132) { 
                _ti.cury=row;
                return row;
            }
        }
    }
    /* If we are here it's in gods hands. */
    return _ti.cury;
}


void setcursortype(int cur_t) {
    if (cur_t==NOCURSOR)
        _scn2674_cursor_off();
    else
        _scn2674_cursor_on();
}


void setattr(unsigned char attr) {
    _ti.attr=attr;
}

void rdchat(char *c, unsigned char *attr) {
    _scn2674_getchar(c,attr);
}


void clrscr(void) {
    _scn2674_cls();
    /* Reset text_info. */
    _init_conio();
    /* And cursors. */
    _ti.curx=0; _ti.cury=0;
}


void gotoxy(int x, int y) {
    /* Make sure the coordinate is valid. */
    if (x>=0 && x<_ti.screenwidth && y>=0 && y<_ti.screenheight) {
        _scn2674_xy(x,y);
        /* Update current x and y. */
        _ti.curx=x;
        _ti.cury=y;
    } else  
        _ti.curx=_ti.cury=0xff; /* Invalidate. */
}


int putch(int c) {
    char ch=c;
    if (wherex()<_ti.screenwidth-1) {
        _ti.curx=wherex()+1;
        _scn2674_burst(&ch,_ti.attr,1);
    }
    else if ((wherex()==_ti.screenwidth-1))
        _scn2674_putchar(ch,_ti.attr); 
    return c;
}


int cputs(const char *s) {
    /* first clip the string. */
    int len=strlen(s);
    if (!len) return 0;
    if (wherex()+len>=_ti.screenwidth)
        len=(_ti.screenwidth)-wherex();
    if (len>1) {
        _scn2674_burst(s,_ti.attr,len-1);
        _ti.curx=wherex()+len-1;
    }
    putch(s[len-1]);
    return len;
}