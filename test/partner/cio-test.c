/*
 * cio-test.c
 *
 * Fast console io (conio.h) tests.
 * 
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 11.08.2021   tstih
 *
 */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <partner.h>

void wait(char *msg) {
    cputs(msg);
    while (!kbhit());
}

char line[133];
char text[133];
struct text_info ti;

void main() {

    /* ----- FILL SCREEN. ------------------------------ */
    /* Populate line with 132 letters A. */
    unsigned char i;
    for (i=0;i<132;i++) line[i]='A';
    line[i]=0;
    /* Now fill screen with letter A. */
    for (i=0;i<26;i++) {
        gotoxy(0,i);
        cputs(line);
    }
    while (!kbhit());


    /* ----- HIDE CURSOR AND CLEAR SCREEN--------------- */
    setcursortype(NOCURSOR);
    clrscr();
    setattr(AT_UNDERLINE);
    wait("Press any key.");


    /* ----- SHOW CURSOR AND BLINK --------------------- */
    setcursortype(NORMALCURSOR);
    gotoxy(0,1);
    setattr(AT_BLINK);
    wait("Press any key.");

    /* ----- GET TEXT INFO ----------------------------- */
    gotoxy(0,2);
    gettextinfo(&ti);
    setattr(AT_HIGHLIGHT);
    sprintf(text,"Cursor position is x=%d,y=%d",wherex(),wherey());
    cputs(text);
    sprintf(text," and screen size is x=%d,y=%d",ti.screenwidth,ti.screenheight);
    cputs(text);
    gotoxy(0,3);
    wait("Press any key.");

    /* ----- CURSOR TO RIGHT BOTTOM CORNER ------------- */
    gotoxy(130,25);
    cputs("ABC"); /* This text will be clipped to AB. */
    gotoxy(0,4);
    setattr(AT_REVERSE|AT_HIGHLIGHT);
    wait("Press any key.");

    /* ----- READ CHAR AND ATTRIBUTE ------------------- */
    setcursortype(NOCURSOR);
    char ch; 
    unsigned char a;
    for(i=0;i<5;i++)
        for(int j=0;j<132;j++) {
            gotoxy(j,i);
            rdchat(&ch,&a);
            gotoxy(j,10+i);
            setattr(a);
            putch(ch);
        }
    gotoxy(0,17);
    setattr(AT_NORMAL);
    wait("Press any key.");
}