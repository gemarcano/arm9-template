C9FLAGS=-mcpu=arm946e-s -march=armv5te -mlittle-endian -mword-relocations

#THUMBFLAGS=-mthumb -Wl,--use-blx
SIZE_OPTIMIZATION = -Wl,--gc-sections -ffunction-sections
AM_CFLAGS= -std=gnu11 -O0 -g  -fomit-frame-pointer -ffast-math \
	-Wpedantic -Wall -Wextra -Wcast-align -Wcast-qual \
	-Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op \
	-Wmissing-declarations -Wmissing-include-dirs -Wredundant-decls \
	-Wshadow -Wsign-conversion -Wstrict-overflow=5 -Wswitch-default \
	-Wundef -Wno-unused $(THUMBFLAGS) $(SIZE_OPTIMIZATION) $(INCPATHS) $(C9FLAGS)

AM_LDFLAGS=-Wl,--use-blx,--pic-veneer,-q
OCFLAGS=--set-section-flags .bss=alloc,load,contents

