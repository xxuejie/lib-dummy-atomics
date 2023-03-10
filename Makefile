CC := riscv64-unknown-elf-gcc
AR := riscv64-unknown-elf-ar
LIB := libdummyatomics.a
CFLAGS := -Wall -Werror -Wextra -O3 -g -fdata-sections -ffunction-sections

all: $(LIB)

$(LIB): atomics.o
	$(AR) rcs $@ $^

atomics.o: atomics.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf *.o $(LIB)

.PHONY: all clean
