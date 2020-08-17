
# ifeq ($(CC),)
# ifeq ($(origin CC),undefined)
# #     CC := clang
# 	@echo "aaaa"
# endif


# CC=clang
# CC=mips-linux-gnu-gcc
# CFLAGS=-g -pthread
CC      = mips-linux-gnu-gcc
CFLAGS  = $(INCLUDES) -g -Wall -Wextra -D_FILE_OFFSET_BITS=64 -Wa,-mips32r2 -Wa,-mips32r2 -DWITH_THREADS -fPIC -EL -pthread
BINS=server

all: $(BINS)

%: %.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -rf *.dSYM $(BINS)