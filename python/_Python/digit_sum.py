def digit_sum(n):
    total = 0;
    for i in range(0, len(str(n))):
        total += int(str(n)[i])
    return total