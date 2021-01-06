def factorial(n):
    if n == 1:
        return n
    else:
        return n * factorial(n - 1)

for i in range(0, 9000001):
    factorial(20)
#    print("Factorial of ", i ," is: ", factorial(20))
print(i)
