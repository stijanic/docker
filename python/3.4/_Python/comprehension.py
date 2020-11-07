evens_to_50 = [i for i in range(51) if i % 2 == 0]
print(evens_to_50)

doubles_by_3 = [x*2 for x in range(1,6) if (x*2) % 3 == 0]

# Complete the following line. Use the line above for help.
even_squares = [x**2 for x in range(1,12) if (x) % 2 == 0]

print(even_squares)

cubes_by_four = [x**3 for x in range(1, 11) if x**3 % 4 == 0]

print(cubes_by_four)

to_21 = range(1, 22)
# odds = [x for x in to_21 if x % 2 == 1]
odds = to_21[::2]
print(odds)
middle_third = [x for x in to_21 if x > int(len(to_21) / 3.0) and x <= int(2 * len(to_21) / 3.0)]
print(middle_third)

threes_and_fives = [x for x in range(1, 16) if x % 3 == 0 or x % 5 == 0]
print(threes_and_fives)
