# Folders
SUBDIRS = stdlib partner gpx clipping fshow gshow hello mouse tiles utils

# Rules.
.PHONY: all
all:	$(SUBDIRS) 

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@
