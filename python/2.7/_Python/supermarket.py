prices = {
    "banana" : 4,
    "apple"  : 2,
    "orange" : 1.5,
    "pear"   : 3,
}
stock = {
    "banana" : 6,
    "apple"  : 0,
    "orange" : 32,
    "pear"   : 15,
}

for key in prices:
    print(key)
    print("price: %s" % prices[key])
    print("stock: %s" % stock[key])

total = 0

for key in prices:
    print(prices[key] * stock[key])
    total += prices[key] * stock[key]

print(total)

# Write your code below!
def compute_bill(food):
    total = 0
    for article in food:
        if stock[article] > 0:
            total += prices[article]
            stock[article] -= 1
    return total