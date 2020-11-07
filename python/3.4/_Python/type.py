def distance_from_zero(distance):
    if (type(distance) == int or type(distance) == float):
        return abs(distance)
    else:
        return "Nope"