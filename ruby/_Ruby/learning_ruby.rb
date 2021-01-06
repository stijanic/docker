# type code here
puts "Let's get started!"


def ruby
  puts "Ruby is a language."
end

def rails
  puts "It is used to build Rails applications."
end

ruby
rails


name = "Srdjan"
puts name

sum = 1 + 3.4
puts sum

correct = true
puts correct


cities = ["Belgrade", "London", "Paris"]
puts cities[1]


seasons = {"winter" => 5, "spring" => 15, "summer" => 25, "automn" => 15}
puts seasons["winter"]


foods = ["fruits", "vegetables", "meat"]
puts "My favorite foods are #{foods}"


colors = ["red", "blue", "green", "yellow"]
puts colors.first


def clock(time)
	puts "It's #{time}"
end

clock("10:00 pm")


num = 1

if num.even?
	puts "This inteer is even."
else
  puts "This integer is odd."
end


names = ["Mike", "Jack", "Nikola", "Pera"]

names.each do |name|
  puts "hello #{name}"
end


class Person

 def hello
  puts "hello"
 end

end

person1 = Person.new
person1.hello

person2 = Person.new
person2.hello



class Dog
  

 def initialize(name, color)
  @name = name
  @color = color
 end

 def describe
  puts "My name is #{@name} and I am #{@color}"
 end

end

dog1 = Dog.new("Rover", "beige")
dog1.describe