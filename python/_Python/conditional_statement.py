response = 'Y'

answer = "Left"
if answer == "Left":
    print("This is the Verbal Abuse Room, you heap of parrot droppings!")
    
# Will the above print(statement print(to the console?)
# Set response to 'Y' if you think so, and 'N' if you think not.

def using_control_once():
    if 2 == 2:
        return "Success #1"

def using_control_again():
    if 3 >= 2:
        return "Success #2"


print(using_control_once())
print(using_control_again())

answer = "'Tis but a scratch!"

def black_knight():
    if answer == "'Tis but a scratch!":
        return True
    else:             
        return False       # Make sure this returns False

def french_soldier():
    if answer == "Go away, or I shall taunt you a second time!":
        return True
    else:             
        return False       # Make sure this returns False

def greater_less_equal_5(answer):
    if answer > 5:
        return 1
    elif answer < 5:          
        return -1
    else:
        return 0

        
print(greater_less_equal_5(4))
print(greater_less_equal_5(5))
print(greater_less_equal_5(6))

# Make sure that the_flying_circus() returns True
def the_flying_circus():
    if 1 == 1 and 2 == 2 or not 4 < 5:    # Start coding here!
        return True;
        # Don't forget to indent
        # the code inside this block!
    elif 2 > 1 and not 2 < 0 or 4 >= 4:
        return True;
        # Keep going here.
        # You'll want to add the else statement, too!
    else:
        print("Not sure!")
        