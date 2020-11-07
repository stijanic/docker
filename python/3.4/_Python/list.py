suitcase = [] 
suitcase.append("sunglasses")

# Your code here!
suitcase.append("glasses")
suitcase.append("underwear")
suitcase.append("wax")

list_length = len(suitcase) # Set this to the length of suitcase

print("There are %d items in the suitcase." % (list_length))
print(suitcase)

animals = ["aardvark", "badger", "duck", "emu", "fennec fox"]
duck_index = animals.index("duck"); # Use index() to find "duck"

# Your code here!
animals.insert(duck_index, "cobra");

print(animals) # Observe what prints after the insert operation

backpack = ['xylophone', 'dagger', 'tent', 'bread loaf']
backpack.remove('dagger')
print(backpack)