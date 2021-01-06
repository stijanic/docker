def remove_duplicates(l):
    result = []
    for item in l:
        if (item not in result):
            result.append(item)
    return result