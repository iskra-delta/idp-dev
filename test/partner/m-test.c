/*
 * m-test.c
 *
 * Mouse test.
 * 
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 11.08.2021   tstih
 *
 */

#include <partner.h>

void main() {

    /* Clear screen. */
    clrscr();

    /* Hide mouse cursor. */
    setcursortype(NOCURSOR);

    /* Get screen size. */
    struct text_info ti;
    gettextinfo(&ti);

    /* Mouse info. */
    mouse_info_t *pmi;
    int x,y;
    unsigned char b;
    char prev_char;
    unsigned char prev_attr;

    /* Set mouse cursor bounds. */
    mouse_calibrate(
        0,0, ti.screenwidth, ti.screenheight    /* Screen rectangle. */
        ,ti.screenwidth/2, ti.screenheight/2);  /* Cursor position. */

    pmi = get_mouse_info();
    x=pmi->x; y=pmi->y; b=pmi->buttons;
    gotoxy(x,y); rdchat(&prev_char,&prev_attr);
    setattr(AT_REVERSE);
    putch(prev_char);    

    while (!kbhit()) {

        /* And receive. */
        int r = mouse_scan();

        if (r < 0) {
            mouse_resume();
        } else if (r == 1) {
            /* And output result. */
            pmi = get_mouse_info();
            if (x!=pmi->x || y!=pmi->y || b!=pmi->buttons) {
                /* Restore previous attribute. */
                gotoxy(x,y);
                setattr(prev_attr);
                putch(prev_char);
                /* New coords. */
                x = pmi->x; y = pmi->y; b = pmi->buttons;
                gotoxy(x,y); rdchat(&prev_char,&prev_attr);
                setattr(AT_REVERSE);
                putch(prev_char);   
            }
        }
    }

    /* Restore cursor. */
    setcursortype(NORMALCURSOR);
}
