#!/bin/bash

if [ "$1" == "clean" ]; then
	rm -f ascii
	rm -f hello32
	rm -f hello64
	rm -f helloany
	rm -f hello
	rm -f helloyou

	rm -f *.o

	exit 0
fi

nasm -g -f elf64 ascii.asm && ld -o ascii ascii.o && file ascii && ./ascii; echo $?
nasm -g -f elf32 hello32.asm && ld -m elf_i386 -o hello32 hello32.o && file hello32 && ./hello32; echo $?
nasm -g -f elf64 hello32.asm -o hello64.o && ld -o hello64 hello64.o && file hello64 && ./hello64; echo $?
nasm -g -f elf64 helloany.asm && ld -o helloany helloany.o && file helloany && ./helloany; echo $?
nasm -g -f elf64 hello.asm && ld -o hello hello.o && file hello && ./hello; echo $?
nasm -g -f elf64 helloyou.asm && ld -o helloyou helloyou.o && file helloyou && ./helloyou; echo $?
