print "Please, type something: "
user_input = gets.chomp
# user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/,"th")
    user_input.gsub!(/S/,"Th")
    # print "Ssssssss"
else
    print "There is no Ssssssss"
end

puts "Hasta pronto, #{user_input}!"