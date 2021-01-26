#!/bin/bash

if [ "$1" == "clean" ]; then
	rm -f att
	rm -f intel
	rm -f tsc

	rm -f *.o

	exit 0
fi

gcc -g -std=c99 -pedantic att.c -o att && file att && ./att
gcc -g -masm=intel intel.c -o intel && file intel &&  ./intel
gcc -g tsc.c -o tsc && file tsc && ./tsc
