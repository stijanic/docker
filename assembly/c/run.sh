#!/bin/bash

if [ "$1" == "clean" ]; then
	rm -f att
	rm -f intel
	rm -f tsc

	rm -f *.o

	exit 0
fi

gcc -gstabs -std=c99 -pedantic att.c -o att && file att && ./att
gcc -gstabs -masm=intel intel.c -o intel && file intel &&  ./intel
gcc -gstabs tsc.c -o tsc && file tsc && ./tsc
