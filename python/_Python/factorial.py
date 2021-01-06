def factorial(x):
    result = 1
    for i in range(1, x + 1):
        result *= i
    return result

def factorial(x):
    if (x) <= 0:
        return 1
    else:
        return factorial(x - 1) * x
