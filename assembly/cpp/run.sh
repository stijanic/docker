#!/bin/bash

if [ "$1" == "clean" ]; then
	rm -f gassaid

	rm -f *.o

	exit 0
fi

g++ -gstabs gassaid.cpp gassaid.s -o gassaid && file gassaid && ./gassaid
