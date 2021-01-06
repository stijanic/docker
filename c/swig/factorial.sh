#!/bin/bash

# Makefile
echo
echo "0. Building exectuable and shared library"
echo
make
make swig

# Python
echo
echo -n "1. Python: factorial(20)... # of iterations-> "
time python python.py
sleep 1

# Python ctypes
echo
echo -n "2. Python ctypes: factorial(20)... # of iterations-> "
time python python_ctypes.py
sleep 1

# Python SWIG
echo
echo -n "3. Python SWIG: factorial(20)... # of iterations-> "
time python python_swig.py
sleep 1

# C
echo
echo -n "4. C: factorial(20)... # of iterations-> "
time ./factorial
sleep 1

echo
echo -n "5. Cleaning... Hit enter."
read
make clean
