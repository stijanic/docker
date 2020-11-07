# Assigning a dictionary with three key-value pairs to residents:
residents = {'Puffin' : 104, 'Sloth' : 105, 'Burmese Python' : 106}

print(residents['Puffin']) # Prints Puffin's room number

# Your code here!
print(residents['Sloth']) # Prints Sloth's room number
print(residents['Burmese Python']) # Prints Burmese Python's room number

menu = {} # Empty dictionary
menu['Chicken Alfredo'] = 14.50 # Adding new key-value pair
print(menu['Chicken Alfredo'])

# Your code here: Add some dish-price pairs to menu!
menu['Beef Martinos'] = 16.50 # Adding new key-value pair
menu['Chicken Nicolos'] = 15.50 # Adding new key-value pair
menu['Porc Mitoc'] = 34.50 # Adding new key-value pair

print("There are " + str(len(menu)) + " items on the menu.")
print(menu)

# key - animal_name : value - location 
zoo_animals = { 'Unicorn' : 'Cotton Candy House',
'Sloth' : 'Rainforest Exhibit',
'Bengal Tiger' : 'Jungle House',
'Atlantic Puffin' : 'Arctic Exhibit',
'Rockhopper Penguin' : 'Arctic Exhibit'}
# A dictionary (or list) declaration may break across multiple lines

# Removing the 'Unicorn' entry. (Unicorns are incredibly expensive.)
del zoo_animals['Unicorn']

# Your code here!
del zoo_animals['Sloth']
del zoo_animals['Bengal Tiger']
zoo_animals['Rockhopper Penguin'] = 'Anything other'

print(zoo_animals)

inventory = {
    'gold' : 500,
    'pouch' : ['flint', 'twine', 'gemstone'], # Assigned a new list to 'pouch' key
    'backpack' : ['xylophone','dagger', 'bedroll','bread loaf']
}

# Adding a key 'burlap bag' and assigning a list to it
inventory['burlap bag'] = ['apple', 'small ruby', 'three-toed sloth']

# Sorting the list found under the key 'pouch'
inventory['pouch'].sort() 

# Your code here
inventory['pocket'] = ['seashell', 'strange berry', 'lint']
print(inventory['pocket'])

inventory['backpack'].sort()
print(inventory['backpack'])

inventory['backpack'].remove('dagger')
print(inventory['backpack'])

inventory['gold'] += 50
print(inventory['gold'])

my_dict = {
    "Name": "Zika",
    "Age": 34,
    "City": "Milojkovac"
    }

print(my_dict.items())

print(my_dict.keys(), my_dict.values())
