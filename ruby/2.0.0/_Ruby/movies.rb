movies = Hash.new
movies[:One] = 1
movies[:Two] = 2
movies[:Three] = 3

puts "Input?"
choice = gets.chomp

case choice
when "add"
    puts "Title"
    title = gets.chomp.to_sym

    if movies[title.to_sym].nil?
        puts "Rating"
        rating = gets.chomp.to_i
        movies[title] = rating
        puts "#{title} was added with rating #{rating}"
    else
        puts "#{title} already exists with rating #{movies[title.to_sym]}"
    end
when "update"
    puts "Title"
    title = gets.chomp.to_sym
    if movies[title.to_sym].nil?
        puts "#{title} doesn't exist"
    else
        puts "Rating"
        rating = gets.chomp.to_i
        movies[title] = rating
        puts "#{title} was updated with rating #{rating}"
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}" 
    end
when "delete"
    puts "Title"
    title = gets.chomp.to_sym
    if movies[title.to_sym].nil?
        puts "#{title} doesn't exist"
    else
        movies.delete(title.to_sym)
    end
else
    puts "Error!"
end