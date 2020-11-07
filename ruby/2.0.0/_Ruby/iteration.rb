friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { 
  "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each do
    |lang| puts lang
end

languages.each {
    |lang| puts lang
}

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do
    |sub_array| sub_array.each do
        |food| puts food
    end
end

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  
secret_identities.each do
    |key, value| puts"#{key}: #{value}"
end

my_array = [[1, 2, 3], ["one", "two", "three"]]

prices = { 
  "apple" => 0.52,
  "banana" => 0.23,
  "kiwi" => 1.42
}

sounds = Hash.new
sounds["dog"] = "woof"
sounds["cat"] = "meow"

my_hash = {
    "a" => "A",
    "b" => "B",
    "c" => "C"
}

lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each {
    |key, value| puts "#{value}"
}