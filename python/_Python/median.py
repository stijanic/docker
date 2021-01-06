def median(l):
    sorted_list = sorted(l)
    if (len(sorted_list) <= 0):
        return sorted_list[0]
        
    if (len(sorted_list) % 2 == 0):
        return ((sorted_list[len(sorted_list) / 2 - 1] + sorted_list[len(sorted_list) / 2]) / 2.0)
    else:
        return sorted_list[(len(sorted_list) - 1) / 2]