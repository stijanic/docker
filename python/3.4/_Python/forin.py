my_list = [1,9,3,8,5,7]

for number in my_list:
    # Your code here
    print(2 * number)

webster = {
	"Aardvark" : "A star of a popular children's cartoon show.",
    "Baa" : "The sound a goat makes.",
    "Carpet": "Goes on the floor.",
    "Dab": "A small amount."
}

# Add your code below!
for word in webster:
    print(webster[word])

names = ["Adam","Alex","Mariah","Martine","Columbus"]
for name in names:
    print(name)

a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

for number in a:
    if (number % 2 == 0):
        print(number)

for letter in "Codecademy":
    print(letter)
    
# Empty lines to make the output pretty
print
print

word = "Programming is fun!"

for letter in word:
    # Only print(out the letter i)
    if letter == "i":
        print(letter)