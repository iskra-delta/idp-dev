/*
 * vect.h
 *
 * interrupt vector library
 *
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 12.10.2021   tstih
 *
 */
#ifndef __VECT_H__
#define __VECT_H__

#include <stdint.h>

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

#endif /* __BCD_H__ */