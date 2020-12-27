#!/bin/bash

# SWIG build
swig -python factorial.i
python setup.py build_ext
cp ./build/lib.linux-x86_64-3.9/_factorial.cpython-39-x86_64-linux-gnu.so .

# C build
gcc main.c factorial.c -o factorial

# Python
echo
echo -n "Python: factorial(20)... # iterations-> "
time python python.py
sleep 3

# SWIG
echo
echo -n "SWIG: factorial(20)... # iterations-> "
time python swig.py
sleep 3

# C
echo
echo -n "C: factorial(20)... # iterations-> "
time ./factorial
sleep 3

echo
echo -n "I am ready to clean... Hit enter."
read
rm -rf build factorial factorial.py factorial_wrap.c __pycache__/ *.so a.out *.o
