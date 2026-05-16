/*
 * smem.h
 *
 * Shared memory.
 *
 * MIT License (see: LICENSE)
 * copyright (c) 2021 tomaz stih
 *
 * 30.01.2021   tstih
 *
 */
#ifndef __SMEM_H__
#define __SMEM_H__

#include <stddef.h>

/* allocate block in shared memory */
extern void *salloc(size_t size);

/* free block from shared memory */
extern void sfree(void *p);

#endif /* __SMEM_H__ */