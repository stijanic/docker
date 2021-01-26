#!/bin/bash

if [ "$1" == "clean" ]; then
	rm -f cpuid32
	rm -f cpuid_printf32
	rm -f fact32
	rm -f fact
	rm -f fib
	rm -f hello
	rm -f sizetest1
	rm -f sizetest2
	rm -f sizetest3

	rm -f *.o

	exit 0
fi

gcc -m32 -gstabs -static -nostdlib -o cpuid32 cpuid32.s && file cpuid32 && ./cpuid32; echo $?
gcc -m32 -gstabs -static -o cpuid_printf32 cpuid_printf32.s && file cpuid_printf32 && ./cpuid_printf32; echo $?
gcc -m32 -gstabs -static -nostdlib -o fact32 fact32.s && file fact32 && ./fact32; echo $?
gcc -gstabs -static -nostdlib -o fact fact.s && file fact && ./fact; echo $?
gcc -gstabs -static -o fib fib.s && file fib && ./fib; echo $?
gcc -gstabs -static -nostdlib -o hello hello.s && file hello && ./hello; echo $?
gcc -m32 -gstabs -static -nostdlib -o sizetest1 sizetest1.s && file sizetest1 && ./sizetest1; echo $?
gcc -m32 -gstabs -static -nostdlib -o sizetest2 sizetest2.s && file sizetest2 && ./sizetest2; echo $?
gcc -m32 -gstabs -static -nostdlib -o sizetest3 sizetest3.s && file sizetest3 && ./sizetest3; echo $?
