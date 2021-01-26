#!/bin/bash

if [ "$1" == "clean" ]; then
	rm -f gassaid

	rm -f *.o

	exit 0
fi

g++ -g gassaid.cpp gassaid.s -o gassaid && file gassaid && ./gassaid
