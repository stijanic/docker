# Write your function below!
def fizz_count(x):
    count = 0
    for element in x:
        if (element == "fizz"):
            count += 1
    return count

fizz_count(["fizz","cat","fizz"])