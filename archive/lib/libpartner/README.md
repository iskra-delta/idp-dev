![status.badge] [![language.badge]][language.url] [![standard.badge]][standard.url] [![license.badge]][license.url]

# Auxiliary Library for Iskra Delta Partner

## Introduction

**libpartner** abstracts access to *Partner* hardware. 
It's purpose is to supplement the *libcpm3-z80*.
It implements all platform specific functions required
by the later.

Beyond supplementing the standard library, *libpartner*
implements some additional functionality.

| Header     | Content                             |
|------------|-------------------------------------| 
| bcd.h      | Support for 8-bit BCD conversions.  |
| conio.h    | Fast console (text mode) functions. |
| mouse.h    | Logitech C7 mouse routines.         |
| syinfo.h   | Querying the system info.           |
| vect.h     | ISR routines.                       |

## How do I use it?

Link the `libpartner.lib` from the `bin` directory with your
project, and include `partner.h` header file in you source 
file.

## What is in the headers?

Click on the header name to see the scope of its implementation.

<details><summary>bcd.h/</summary>

~~~cpp
/* convert byte to bcd */
extern uint8_t bin2bcd(uint8_t bin);

/* convert bcd to byte */
extern uint8_t bcd2bin(uint8_t bcd);
~~~
</details>  


<details><summary>conio.h/</summary>

~~~cpp
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
~~~
</details>  


<details><summary>mouse.h/</summary>

~~~cpp
/* Mouse info structure. */
#define RBUTTON 0x04
#define MBUTTON 0x08
#define LBUTTON 0x10
typedef struct mouse_into_s {
    unsigned char buttons;
    int x;
    int y;
} mouse_info_t;

/* Calibrate mouse bounds, and set mouse position. */
extern void mouse_calibrate(
    int left, 
    int top, 
    int right, 
    int bottom, 
    int x, 
    int y);

/* Get current mouse position and buttons. 
   NOTE
    - the returned structure is volatile and changes as new mouse
      events are detected
*/
extern mouse_info_t *get_mouse_info();

/* Resume mouse operations after READ error. */
extern void mouse_resume();

/* You must call this function in every main loop of your progeram.
   It reads available mouse coordinates from serial port and 
   (if whole package received) it updates the mouse_info_t struct
   returned by get_mouse_info.
   Return values are
    - 0 ... no new even available
    - 1 ... pending new mouse event
    - -1 ... error while reading the event.
*/
extern int mouse_scan();
~~~
</details>  


<details><summary>sysinfo.h/</summary>

~~~cpp
/* get partner model, the values are also 
   bitmasks 
   bit meaning
    0  1=2xFDD, 0=1xFDD
    1  HDD
    2  Graphics */
#define M_1F    0x00                    /* 1 FDD */
#define M_2F    0x01                    /* 2 FDD */
#define M_WF    0x02                    /* HDD + FDD */
#define M_1FG   0x04                    /* 1 FDD + G */
#define M_2FG   0x05                    /* 2 FDD + G */
#define M_WFG   0x06                    /* HDD + FDD + G */
extern int model();

/* is it the emulator? */
extern bool isemu();
~~~
</details>  


<details><summary>vect.h/</summary>

~~~cpp
/* vector offsets */
#define V_PIO_A         0x84
#define V_PIO_B         0x86
#define V_FDC           0x88
#define V_CTC_1         0x8A    /* motor int. */
#define V_MOT           0x8A    /* -"- */
#define V_CTC_2         0x8C    /* timer */
#define V_CTC_3         0x8E    /* avdint VB */
#define V_AVDC_VBL      0x8E    /* -"- */
#define V_SIO_1         0x90
#define V_KBD_INT       0x9C
#define V_KBD_ERR       0x9E
#define V_SIO_2         0xA0
#define V_CPIO_A        0xB0
#define V_CPIO_B        0xB2

/* set interrupt vector 
   NOTES
    when using your own interrupt handler, you should
    take care of bank switching. one possibility is to
    compile your ISR to common memory (C000+). another
    is to have common memory "switch", which somehow 
    detects the bank and does the bank switch (and back)
    if required. 
    if you don't handle bank switching and an interrupt
    happens while in a bank without your ISR code,
    it will jump into the unknown and most likely cause a
    crash. 
*/
extern void setvec(uint8_t offs, void (*handler)());

/* get interrupt vector */
extern uint16_t getvec(uint8_t offs);
~~~
</details>  


## Where can I find some samples?

You can find code samples in the [test folder](../../test/partner).


[language.url]:   https://en.wikipedia.org/wiki/ANSI_C
[language.badge]: https://img.shields.io/badge/language-C-blue.svg

[standard.url]:   https://en.wikipedia.org/wiki/C89/
[standard.badge]: https://img.shields.io/badge/standard-C89-blue.svg

[license.url]:    https://github.com/tstih/nice/blob/master/LICENSE
[license.badge]:  https://img.shields.io/badge/license-MIT-blue.svg

[status.badge]:  https://img.shields.io/badge/status-beta-orange.svg