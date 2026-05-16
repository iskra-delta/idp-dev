# We only allow compilation on linux!
ifneq ($(shell uname), Linux)
$(error OS must be Linux!)
endif

# Check if all required tools are on the system.
REQUIRED = sdcc sdar sdasz80 sdldz80 sed
K := $(foreach exec,$(REQUIRED),\
    $(if $(shell which $(exec)),,$(error "$(exec) not found. Please install or add to path.")))

# Compiler and linker.
CC			=	sdcc
CFLAGS		=	--std-c11 -mz80 $(addprefix -I,include) --no-std-crt0 --nostdinc --nostdlib --debug
LD			= 	sdcc
LDFLAGS		= 	-mz80 -Wl -y \
				--code-loc 0x100 --no-std-crt0 --nostdlib --nostdinc \
				-Llib -llibsdcc-z80 -llibcpm3-z80 -llibpartner -llibgpx -llibtiles -p

# Data segment fix (relink due to SDCC bug)
L2			=	sdldz80
L2FLAGS		=	-nf
L2FIX		=	sed '/-b _DATA = 0x8000/d'

# Source files.
CRT0		=	lib/crt0cpm3-z80
SRC			=	$(wildcard *.c)
OBJS		=	$(patsubst %.c,%.rel,$(SRC))
TARGET		=	hello

# Rules.
.PHONY: all
all: $(TARGET).com

$(TARGET).com: $(TARGET).ihx
	sdobjcopy -I ihex -O binary $(basename $@).ihx $(basename $@).com

$(TARGET).ihx: $(OBJS)
	$(LD) $(LDFLAGS) -o $(TARGET).ihx $(CRT0).rel $(OBJS)
	$(L2FIX) $(TARGET).lk > $(TARGET).link
	$(L2) $(L2FLAGS) $(TARGET).link

%.rel: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

.PHONY: clean
clean:
	rm -f *.cdb *.ihx *.lk *.map *.noi *.rel *.link *.sym *.lst *.adb *.asm *.com
