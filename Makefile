TARGET = Tutorial
OBJS   = main.o

PSPDEV=$(shell psp-config -d)
PSPBIN=$(PSPDEV)/psp/bin
PSPSDK=$(shell psp-config --pspsdk-path)

CFLAGS = -O3 -G0 -Wall 
CFLAGS += $(shell $(PSPBIN)/sdl2-config --cflags)
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS  = $(CFLAGS)

LIBS = $(shell $(PSPBIN)/sdl2-config --libs)
LIBS += -lSDLmain

BUILD_PRX = 1
PSP_LARGE_MEMORY = 1
EXTRA_TARGETS   = EBOOT.PBP
PSP_EBOOT_TITLE = Tutorial

include $(PSPSDK)/lib/build.mak
