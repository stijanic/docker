puts 'Type some text'
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)

words.each do
    |word| frequencies[word] += 1
end

frequencies = frequencies.sort_by do
    |word, frequence| frequence
end

frequencies.reverse!

frequencies.each do
    |word, frequence| puts "#{word} #{frequence}"
end