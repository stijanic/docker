from ctypes import *
factorial_lib = CDLL('./_factorial.cpython-39-x86_64-linux-gnu.so')
for i in range(0, 9000001):
    factorial_lib.factorial(20)
#    print('Factorial of ' + str(i) + ' is: ' + str(factorial.factorial(20)))
print(i)
