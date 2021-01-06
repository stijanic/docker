print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

print "What's your city name?"
city = gets.chomp
city.capitalize!

print "What's your state name?"
state = gets.chomp
state.upcase!

puts "Your first and last names are #{first_name} #{last_name}, your city is #{city} and your state is #{state}"