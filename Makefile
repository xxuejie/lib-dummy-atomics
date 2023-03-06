CC := riscv64-unknown-elf-gcc
AR := riscv64-unknown-elf-ar
LIB := libdummyatomics.a

all: $(LIB)

$(LIB): atomics.o
	$(AR) rcs $@ $^

atomics.o: atomics.c
	$(CC) -O3 -g -c -o $@ $<

clean:
	rm -rf *.o $(LIB)

.PHONY: all clean
