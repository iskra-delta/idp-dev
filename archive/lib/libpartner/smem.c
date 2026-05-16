/*
 * smem.c
 *
 * Shared memory alloc functions (uses heap 
 * that is shared between both memory banks).
 * 
 * NOTES:
 *  This code uses undocumented features of
 *  the libcpm3-z80!!!
 * 
 * MIT License (see: LICENSE)
 * copyright (c) 2022 tomaz stih
 *
 * 30.01.2022   tstih
 *
 */
#include <stdint.h>
#include <stddef.h>

#define SMEMSTART   0xc000

/* shared heap */
uint16_t _sheap;

/* initialize custom heap */
extern void _heap_init(uint16_t start, uint16_t size);

/* allocate block on the heap (used by malloc) */
extern void *_alloc(uint16_t heap, size_t size);

/* release block from the heap (used by free) */
extern void _dealloc(uint16_t heap, void *p);

/* initialize shared memory heap */
void _init_smem() {
    /* initialize shared heap */
    _sheap=SMEMSTART;
    /* obtain mem top from CP/M. */
    uint16_t *bdosptr=(uint16_t *)0x0006;
    /* calculate free memory */
    uint16_t size=(*bdosptr) - _sheap;
    _heap_init((uint16_t)_sheap,size);
}

/* allocate block in shared memory */
void *salloc(size_t size)
{
    return _alloc((uint16_t)_sheap,size);
}

/* free block from shared memory */
void sfree(void *p)
{
    _dealloc((uint16_t)_sheap,p);
}