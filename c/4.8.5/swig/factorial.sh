echo "source factorial.sh"
rm -rf build factorial factorial.py factorial_wrap.c __pycache__/ *.so
swig -python factorial.i
python setup.py build_ext
cp ./build/lib.linux-x86_64-3.9/_factorial.cpython-39-x86_64-linux-gnu.so .
python <<EOF
import factorial
for n in range(21):
  print('Factorial(' + str(n) + ') => ' + str(factorial.factorial(n)))
EOF
