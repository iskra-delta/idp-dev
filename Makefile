# We only allow compilation on linux!
ifneq ($(shell uname), Linux)
$(error OS must be Linux!)
endif

# Check if all required tools are on the system.
REQUIRED = sdcc sdar sdasz80 sdldz80 sed
K := $(foreach exec,$(REQUIRED),\
    $(if $(shell which $(exec)),,$(error "$(exec) not found. Please install or add to path.")))


# Global root folder.
export ROOT 		= 	$(realpath .)

# Submodule locations.
LIBCPM_DIR			=	$(ROOT)/lib/libcpm3-z80
LIBGPX_DIR			=	$(ROOT)/lib/libgpx

# Global settings: folders.
export BUILD_DIR	=	$(ROOT)/build
export BIN_DIR		=	$(ROOT)/bin
export SDK_DIR		=   $(ROOT)/sdk
export INC_DIR		=	$(ROOT)/include $(LIBCPM_DIR)/include $(LIBGPX_DIR)/include
export TEMPLATE_DIR	=	$(ROOT)/template

# Build reduced version of libraries?
export SLIM			=	

# Globa settings: tools.
export CC			=	sdcc
export CFLAGS		=	--std-c11 -mz80 -I. $(addprefix -I,$(INC_DIR)) --no-std-crt0 --nostdinc --nostdlib --debug -D SLIM=$(SLIM)
export AS			=	sdasz80
export ASFLAGS		=	-xlos -g
export AR			=	sdar
export ARFLAGS		=	-rc

# Subfolders for make.
SUBDIRS = lib

# Rules.
.PHONY: all
all:	sdk

.PHONY: sdk
sdk:	libs
	rm -f -r $(SDK_DIR)
	mkdir -p $(SDK_DIR) $(SDK_DIR)/lib $(SDK_DIR)/include
	cp $(BIN_DIR)/* $(SDK_DIR)/lib
	cp -r $(ROOT)/include/* $(SDK_DIR)/include
	cp -r $(LIBCPM_DIR)/include/* $(SDK_DIR)/include
	cp -r $(LIBGPX_DIR)/include/* $(SDK_DIR)/include
	cp $(TEMPLATE_DIR)/* $(SDK_DIR)

.PHONY: libs
libs:	$(BUILD_DIR) $(SUBDIRS)
	cp $(BUILD_DIR)/crt0cpm3-z80.rel $(BIN_DIR)
	cp $(BUILD_DIR)/*.lib $(BIN_DIR)

.PHONY: $(BUILD_DIR)
$(BUILD_DIR):
	# Remove bin dir (we are going to write again).
	rm -f -r $(BIN_DIR)
	# Create all dirs
	mkdir -p $(BUILD_DIR) $(BIN_DIR)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ PLATFORM=partner SLIM=$(SLIM)
	
.PHONY: clean
clean:
	rm -f -r $(BUILD_DIR)
	rm -f -r $(BIN_DIR)
	rm -f -r $(SDK_DIR)

