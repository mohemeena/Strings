# Makefile for Strings assignment
# Usage:
#   make                # build native binaries (gcc)
#   make CC=arm-none-eabi-gcc    # cross-compile for ARM (example)
#   make clean

CC ?= gcc
CFLAGS ?= -std=c99 -Wall -Wextra -O2
STR_IMPL ?= stra.c

SRCS_REPLACE = replace.c $(STR_IMPL)
SRCS_TEST = teststr.c $(STR_IMPL)

.PHONY: all clean

all: replace teststr

replace: $(SRCS_REPLACE)
	$(CC) $(CFLAGS) -o $@ $(SRCS_REPLACE)

teststr: $(SRCS_TEST)
	$(CC) $(CFLAGS) -o $@ $(SRCS_TEST)

clean:
	rm -f replace teststr *.o

# Notes for armlab / cross-compilation:
# If your armlab environment requires a specific cross-compiler, invoke make like:
#   make CC=arm-none-eabi-gcc
# or
#   make CC=arm-linux-gnueabihf-gcc
# Replace the CC value above with the toolchain available in armlab.
