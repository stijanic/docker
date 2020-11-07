def count(sequence, item):
    result = 0
    for i in sequence:
        if (i == item):
            result += 1
    return result