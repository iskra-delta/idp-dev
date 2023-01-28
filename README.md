![status.badge] [![language.badge]][language.url] [![standard.badge]][standard.url] [![license.badge]][license.url]

# idp-dev

Welcome to the **idp-dev**, the Iskra Delta Partner SDK. 

 ![Iskra Delta Partner](doc/img/partner.jpg)

We are a group of volunteers interested in preserving our digital heritage. 
We provide tools and tutorials to developers writing software for the 
*Iskra Delta Partner* computer. 

We maintain repositories:

 * **idp-dev**. This repository.
 * [idp-sw.](https://github.com/tstih/idp-sw). Sample projects using this SDK.
 * [idp-games.](https://github.com/mgrcar/idp-games) Games!!!
 * [idp-doc.](https://github.com/tstih/idp-doc) Documentation archive.

Additional Partner resources:
 * [Iskra Delta Partner ROMs](https://github.com/rihardgDev/Iskra-Delta-Partner-ROM)
 * [Iskra Delta Partner Emulator](http://matejhorvat.si/sl/slorac/delta/partner/index.htm)
 * [The PARTNER (Part Time Nerds) Group](https://part-time-nerds.org/)

 > If you'd like to donate old Iskra Delta Partner, Gorenje Dialog 
 > or Triglav hardware, please consider donating to us.

# Cloning this repository

This repository **contains submodules**; clone it with `--recurse-submodules.`

~~~
git clone https://github.com/tstih/idp-dev.git --recurse-submodules
~~~

# Table of Contents

- [The SDK](#the-sdk)
  * [Libraries](#libraries)
  * [The Architecture](#the-architecture)
  * [Current Status](#current-status)
  * [Building](#building)
    + [Prerequisites](#prerequisites)
    + [Make](#make)
      - [Other make targets](#other-make-targets)

# The SDK

## Libraries

Our initial project was *the C runtime*, consisting of a **C compiler** and a **Standard C library**. We adjusted the [SDCC compiler suite](http://sdcc.sourceforge.net/) to produce executables for the *Iskra Delta Partner* and wrote the standard library.

Later we realized that the wider retro community, using various *Z80* machines and *CP/M* systems, could benefit from our work and we separated it into four projects:

 * [libsdcc-z80](https://github.com/tstih/libsdcc-z80) is a library for bare metal programming
   with *SDCC*. You can use it to write programs from scratch for any *Z80* platform. Navigate to it to find out what it does and how to use it.

 * [libcpm3-z80](https://github.com/tstih/libcpm3-z80) is a platform-independent 
   *Standard C library* for *CP/M 3*. If you are interested in how a `.com` program for
   CP/M is created, and what parts of *the Standard library* are implemented? You'll find 
   the answers to your questions here.

 * **libpartner** provides access directly to *Partner* hardware. It also injects platform-specific functions into the *libcpm3-z80*, enabling extended features, such as managing
   the system time. This library is now the only *native* part of the `idp-dev` repository. 
   All other libraries are now separate git submodules.

 * [libgpx](https://github.com/tstih/libgpx) is an early version of a platform-independent library 
   for graphics, current targeting Iskra Delta Partner and ZX Spectrum 48K. 

## The Architecture

The following figure shows interdependencies between the submodules.

 ![Library Interdependencies](doc/img/libs.png)

All libraries and software require `libsdcc`. Partner programs require `libcpm3-z80`, and 
this library obtains native functions (such as reading and writing the system clock!) from 
`libpartner.` The `libgpx` is by design a multiplatform library, and it brings its own 
graphical drivers ... hence no dependencies to `libpartner.`

## Current Status

| Module                     | Status (complete) |
|----------------------------|-------------------|
| The SDCC auxiliary library | ![100%](https://progress-bar.dev/100/)|
| The Standard C library     | ![100%](https://progress-bar.dev/100/)|  
| The Partner library        | ![90%](https://progress-bar.dev/90/)|
| The Graphics library       | ![60%](https://progress-bar.dev/60/)|

When we say a library is 100% completed, it means that we implemented everything that was 
initially planned, not 100% compliance with the standard.

At present

We are still working on the mouse functions for the Partner library, primarily because 
we don't have a test environment, and we're waiting for more advanced emulation updates.

## Building

### Prerequisites

At present, the build environment is *Linux* with `sdcc` compiler suite installed. 

 > The *Standard C Library* requires the latest version of *SDCC* (**4.1.6**). 
 > You are going to have to [build it from the sources]
 > (http://sdcc.sourceforge.net/). To make things more complicated, 
 > the build process also requires an exact version of the `automake` tools 
 > (**1.16.2**) and will not compile with other versions.
 > Newer versions will also work. 

### Make

Compile everything with 

`make`

This compiles libraries and creates the `sdk/` directory with `.lib` files, 
`.h` files, and a hello world sample with its' `Makefile`.

 > The "Hello World" sample prints **Hello world!**. It links all 
 > existing IDP libraries so you can use it as a starting point 
 > for your own project.

`make libs`

Compile only libraries and copy them to the `bin` directory.

[language.url]:   https://en.wikipedia.org/wiki/ANSI_C
[language.badge]: https://img.shields.io/badge/language-C-blue.svg

[standard.url]:   https://en.wikipedia.org/wiki/C89/
[standard.badge]: https://img.shields.io/badge/standard-C89-blue.svg

[license.url]:    https://github.com/tstih/nice/blob/master/LICENSE
[license.badge]:  https://img.shields.io/badge/license-MIT-blue.svg

[status.badge]:  https://img.shields.io/badge/status-stable-dkgreen.svg
