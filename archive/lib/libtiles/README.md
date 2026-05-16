![status.badge] [![language.badge]][language.url] [![standard.badge]][standard.url] [![license.badge]][license.url]

# Tiles for Iskra Detla Partner

## Introduction

Draw tiles using **libgpx**. Since the later supports high resolution mode
as well as UDG mode, the library also operates in both modes. 

## How do I use it?

Link the `libtiles.lib` (and its dependancy `libgpx`!) from the `bin` directory 
with your project, and include `tiles.h` header file in you source file.

## What is in the headers?

Click on the header name to see the scope of its implementation.

<details><summary>tiles.h/</summary>

~~~cpp
/* Tilemap struct. */
typedef tile_map_s {
    unsigned char width;
    unsigned char height;
    unsigned char data[0];
} tile_map_t;

/* Draw tilemap at x,y. If mrect is null it draws entire map,
   otherwise mrect is a relative rectangle inside tile map in
   tile units. */
extern tile_map_draw(
    gpx_t *g,
    unsigned int x,
    unsigned int y,
    rect_t *mrect,
    tile_map_t *map, 
    font_t *glyphs);
~~~
</details>  


## Where can I find some samples?

You can find the Manic Miner sample in the [test folder](../../test/tiles).


[language.url]:   https://en.wikipedia.org/wiki/ANSI_C
[language.badge]: https://img.shields.io/badge/language-C-blue.svg

[standard.url]:   https://en.wikipedia.org/wiki/C89/
[standard.badge]: https://img.shields.io/badge/standard-C89-blue.svg

[license.url]:    https://github.com/tstih/nice/blob/master/LICENSE
[license.badge]:  https://img.shields.io/badge/license-MIT-blue.svg

[status.badge]:  https://img.shields.io/badge/status-beta-orange.svg