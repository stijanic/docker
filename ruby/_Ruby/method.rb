def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10 # Ignore this for now. We'll explain it soon!


# Define your method below!

def greeting
    puts "greetings"
end

# Define your method above this line.

greeting # Ignore this for now. We'll explain
         # it in the next exercise!


def array_of_10
  puts (1..10).to_a
end

array_of_10


def cubertino(n)
  puts n ** 3
end

cubertino(8)


def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")


def add(x, y)
    return x + y
end


def greeter(name)
    return "Greetings " + name
end

def by_three?(number)
    if (number % 3 == 0)
        return true
    else
        return false
    end
end


def welcome
    puts "Welcome to Ruby!"
end

welcome


def welcome(name)
    return "Hello, #{name}"
end

welcome("Srdjan")