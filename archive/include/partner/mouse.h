/*
 * mouse.h
 *
 * Mouse functions (on SIO port B).
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
#ifndef __MOUSE_H__
#define __MOUSE_H__

#include <stdint.h>
#include <stdbool.h>

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

#endif /* __MOUSE_H__ */