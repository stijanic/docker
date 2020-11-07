ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly


# Type your Ruby code below!
puts "This is crazy!" if 1 > 2


# Type your Ruby code below!
puts "This is crazy!" unless 2 > 1


# Type your Ruby code below!
puts 3 > 4 ? "3 is not less than 4." : "3 is less than 4!"


puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!
case greeting
when "Serbian"
    puts "Zdravo!"
when "English"
    puts "Hello!"
when "French"
    puts "Bonjour!"
when "German"
    puts "Guten Tag!"
when "Finnish"
    puts "Haloo!"
else
    puts "I don't know that language!"
end


favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book


# Write your code on line 2!
favorite_language ||= "Serbian"
puts favorite_language


favorite_animal ||= "Pig"