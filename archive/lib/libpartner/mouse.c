/*
 * mouse.c
 *
 * Mouse functions (on SIO port B), using Logitech C7 prompt
 * protocol.
 *
 * NOTES
 *  - Normalize relative coordinates after emulator fix.
 * 
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 06.11.2021   tstih
 *
 */
#include <string.h>
#include <partner/mouse.h>

#define PORTB_DTA       0xDA
#define PORTB_CTL       0xDB
#define MOUSE_COUNTOUT  100
#define MDTA_SIZE       5
#define PORT_READS      50

/* Values for emulator, until Matej fixes it. */
#if MOUSE_FIX
#define SPANX           2048
#define SPANY           2048
#else
#define SPANX           512
#define SPANY           256
#endif

/* SIO port B data and control regs. */
__sfr __at PORTB_DTA PBDTA;  
__sfr __at PORTB_CTL PBCTL;  

/* Mouse block. */
typedef struct mouse_block_s {
    unsigned char btn;
    unsigned char dxl;
    unsigned char dxh;
    unsigned char dyl;
    unsigned char dyh;
} mouse_block_t;

/* Mouse rectangle. */
static int _mr_left, _mr_top, _mr_right, _mr_bottom;
static int _mfx, _mfy;
static mouse_info_t _mi;

/* Mouse internal infos. */
static mouse_block_t _mblk;
static unsigned char _mdta[MDTA_SIZE];
static unsigned char _mdta_ptr;
static unsigned char _mdta_co;

static void _portb_write(unsigned char b) {

    /* Wait for ready status. */
    unsigned char status=0;
    while (!status) status = PBCTL & 0x04;

    /* Write byte to port. */
    PBDTA=b;
}

static unsigned int _portb_read(int waitloop) {
    
    unsigned char status = 0;
    while (waitloop>0 && !status) {
        /* Get status, bit 0. */
        status = PBCTL & 0x01;
        /* And loop. */
        waitloop--;
    }
    
    if ( status )
        return PBDTA;
    else
        return -1;
}

static int _get_delta(unsigned char hi, unsigned char lo) {
    // First get the number.
    int coord=hi<<6 | lo;
    // is it negative?
    if (coord&0x800) coord=coord | 0xf000;
    return coord;
}

/* Read current mouse position and buttons. */
mouse_info_t *get_mouse_info() {
    /* Get button status. */
    _mi.buttons = _mblk.btn;
    /* Get delta x and y (from -2048 to 2048), scale is 4096. */
    int dx = _get_delta(_mblk.dxh,_mblk.dxl) / _mfx;
    int dy = _get_delta(_mblk.dyh,_mblk.dyl) / _mfy;
    /* And update x and y, make sure they are inside bounds. */
    _mi.x=_mi.x + dx; _mi.y=_mi.y - dy;
    if (_mi.x<_mr_left) _mi.x=_mr_left;
    if (_mi.x>_mr_right) _mi.x=_mr_right;
    if (_mi.y<_mr_top) _mi.y=_mr_top;
    if (_mi.y>_mr_bottom) _mi.y=_mr_bottom;
    /* Return internal struct. */
    return &_mi;
}

/* Resume mouse operations after READ error. */
void mouse_resume() {
    /* RR0. */
    PBCTL = 0;
    /* Initial prompt. */
    _mdta_ptr=0;
    _mdta_co=MOUSE_COUNTOUT;
    memset(_mdta,0,MDTA_SIZE); /* Clear mdta. */
    _portb_write('P');
}

/* Calibrate and reset the mouse. */
void mouse_calibrate(
    int left, 
    int top, 
    int right, 
    int bottom, 
    int x, 
    int y) {

    /* Store coords. */
    _mr_left=left;
    _mr_top=top;
    _mr_right=right;
    _mr_bottom=bottom;
    _mi.x=x;
    _mi.y=y;

    /* Dividers. */
    _mfx=SPANX / (_mr_right-_mr_left) + 1;
    _mfy=SPANY / (_mr_bottom-_mr_top) + 1;
    if (_mfy==0) _mfy=1;

    /* And resume operation. */
    mouse_resume();
}

/* Mouse scan should be called in every loop. This is a finite state
   nachine that reads mouse bytes from serial port and, when full,
   decyphers their meaning. */
int mouse_scan() {

    if (_mdta_ptr==MDTA_SIZE) { /* Process! */
        /* Any change? */
        int status = 
            _mdta[0] 
            + _mdta[1] 
            + _mdta[2] 
            + _mdta[3] 
            + _mdta[4];
        if (status!=0) {
            memcpy(&_mblk, _mdta, sizeof(mouse_block_t));
            status = 1;
        } else
            status = 0;
        /* Resume. */
        mouse_resume();
        return status;

    } else if (_mdta_co==0) { /* Count out. */
        _mdta_co=MOUSE_COUNTOUT;
        return -1; /* Error! */
    } else {
        /* Read char, loop 10 times. */
        int ch = _portb_read(PORT_READS); 
        /* If data available store, otherwise check
           for count out. */ 
        if (ch!=-1) _mdta[_mdta_ptr++]=ch;
        else _mdta_co--;
        /* We did something... */
        return 0;
    }
}