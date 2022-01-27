/*
 * vec-test.c
 *
 * Vector functions tests. Since operating system (CP/M 3)
 * uses bank 2 for operating system, make sure your handler
 * is above 0xc000. Otherwise it will crash.
 * 
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 12.10.2021   tstih
 *
 */
#include <stdint.h>
#include <stdio.h>
#include <partner.h>

void (*_prev)();

void main() {

    /* Create isr at C000. */
    unsigned char *isr=(unsigned char *)0xc000;
    /* EI */
    isr[0]=0xfb;
    /* RETI */
    isr[1]=0xed;
    isr[2]=0x4d;

    /* Set vector. */
    _prev=(void (*)())getvec(V_AVDC_VBL);
    printf("\nGET VBL = %04x\n",_prev);
    setvec(V_AVDC_VBL, (void *)&isr);
    uint16_t curr=getvec(V_AVDC_VBL);
    printf("\nSET VBL = %04x\n",curr);

    /* Turn on avdc vblank. */
    __asm
        ld      a,#0b01110000
        out     (#0x39),a
    __endasm;

    /* Induce delay. */
    for (int i=0;i<10;i++) {
        if (i%4==0) {
            curr=getvec(V_AVDC_VBL);
            printf("VBL = %04x\n",curr);
        }
    }
    
    /* Restore vector. */
    setvec(V_AVDC_VBL, _prev);
    curr=getvec(V_AVDC_VBL);
    printf("\n\nRESTORE VBL = %04x\n",curr);
}