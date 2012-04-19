ifndef QCONFIG
QCONFIG=qconfig.mk
endif
include $(QCONFIG)

#####################################
# Preset make macros go here
#####################################

NAME=cppunit
SO_VERSION=1.0

EXTRA_SRCVPATH+=$(PROJECT_ROOT)/src/cppunit

EXCLUDE_OBJS=DllMain.o

EXTRA_INCVPATH+=$(PROJECT_ROOT)/src
EXTRA_INCVPATH+=$(PROJECT_ROOT)/include

# Avoid error when linking the test program
CCFLAGS += -fPIC

define PINFO
PINFO DESCRIPTION=CppUnit library
endef
INSTALLDIR=usr/lib

include $(MKFILES_ROOT)/qtargets.mk

#####################################
# Post-set make macros go here
#####################################

# Use the QNX build system's $(VARIANT_LIST) to determine whether to use
# debugging libraries, etc.
ifeq ($(filter g,$(VARIANT_LIST)),g)
  CCFLAGS += -O0
else
  # Non-debug build.
  #
  # Enable optimizations suitable for modern C++.
  CCFLAGS += -O3
endif
