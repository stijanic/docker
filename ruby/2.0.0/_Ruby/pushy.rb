alphabet = ["a", "b", "c"]
alphabet.push("d") # Update me!

caption = "A giraffe surrounded by "
caption += "weezards!" # Me, too!


alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!


favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love " << thing << "!"
end


favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end