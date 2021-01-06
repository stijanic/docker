n = [3, 5, 7]
def print_list(x):
    for i in range(0, len(x)):
        print(x[i])
print_list(n)

n = [3, 5, 7]
def double_list(x):
    for i in range(0, len(x)):
        x[i] = x[i] * 2
# Don't forget to return your new list!
    return x
print(double_list(n))

n = [[1, 2, 3], [4, 5, 6, 7, 8, 9]]
# Add your function here
def flatten(lists):
    results = []
    for l in lists:
        for k in l:
            results.append(k)
    return results

print(flatten(n))