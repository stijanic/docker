count = 0

if count < 5:
    print("Hello, I am an if statement and count is", count)
    
while count <= 9:
    print("Hello, I am a while and count is", count)
    count += 1

loop_condition = True

while loop_condition:
    print("I am a loop")
    loop_condition = False

num = 1

while num <= 10:  # Fill in the condition
    # Print num squared
    print(num ** 2)
    # Increment num (make sure to do this!)
    num += 1

choice = input('Enjoying the course? (y/n)')

while (choice != 'y' and choice != 'n'):  # Fill in the condition (before the colon)
    choice = input("Sorry, I didn't catch that. Enter again: ")

count = 0

while count < 10: # Add a colon
    print(count)
    # Increment count
    count += 1

count = 0

while True:
    print(count)
    count += 1
    if count >= 10:
        break

import random

print("Lucky Numbers! 3 numbers will be generated.")
print("If one of them is a '5', you lose!")

count = 0
while count < 3:
    num = random.randint(1, 6)
    print(num)
    if num == 5:
        print("Sorry, you lose!")
        break
    count += 1
else:
    print("You win!")

from random import randint

# Generates a number from 1 through 10 inclusive
random_number = randint(1, 10)

guesses_left = 3
# Start your game!
while guesses_left > 0:
    guess = int(input('Your guess: '))
    print(guess)
    if guess == random_number:
        print('You win!')
        break
    guesses_left -= 1
else:
    print('You lose.')

hobbies = []

# Add your code below!
for i in range(0, 3):
    hobbies.append(input("What is your hobby?"))

thing = "spam!"

for c in thing:
    print(c)

word = "eggs!"

# Your code here!
for c in word:
    print(c)

phrase = "A bird in the hand..."

# Add your for loop
for char in phrase:
    if (char == 'a' or char == 'A'):
        print('X',)
    else:
        print(char,)

#Don't delete this print statement!
print

numbers  = [7, 9, 12, 54, 99]

print("This list contains: ")

for num in numbers:
    print(num)

# Add your loop below!
for num in numbers:
    print(num ** 2)

d = {'a': 'apple', 'b': 'berry', 'c': 'cherry'}

for key in d:
    # Your code here!
    print(key, d[key])

choices = ['pizza', 'pasta', 'salad', 'nachos']

print('Your choices are:')
for index, item in enumerate(choices):
    print(index + 1, item)

list_a = [3, 9, 17, 15, 19]
list_b = [2, 4, 8, 10, 30, 40, 50, 60, 70, 80, 90]

for a, b in zip(list_a, list_b):
    # Add your code here!
    if (a > b):
        print(a)
    else:
        print(b)

fruits = ['banana', 'apple', 'orange', 'tomato', 'pear', 'grape']

print('You have...')
for f in fruits:
    if f == 'tomato':
        print('A tomato is not a fruit!') # (It actually is.)
        break
    print('A', f)
else:
    print('A fine selection of fruits!')

fruits = ['banana', 'apple', 'orange', 'tomato', 'pear', 'grape']

print('You have...')
for f in fruits:
    if f == 'tomato':
        print('A tomato is not a fruit!') # (It actually is.)
    print('A', f)
else:
    print('A fine selection of fruits!')

