array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end


numbers = [1, 2, 3, 4, 5]

# one way to loop
numbers.each { |item| puts item }

# another way to loop
numbers.each do |item|
  puts item
end


odds = [1,3,5,7,9]

# Add your code below!

odds.each do |n|
    print n * 2
end


demo_array = [100, 200, 300, 400, 500]
print demo_array[2] # Add your code here!


string_array = ["one", "two", "three"]
print string_array[0]


multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
multi_d_array.each { |x| puts "#{x}\n" }


my_2d_array = [ [0, 1, 2, 3], ["a", "b", "c", "d"]]


my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each do |x|
    puts x if x % 2 == 0
end