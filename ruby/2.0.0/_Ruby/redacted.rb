puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end

puts("Type some text, please.")
text = gets.chomp
puts("Type the word to redact.")
redact = gets.chomp

words = text.split(" ")
words.each do |word|
    if word.downcase == redact.downcase
        print "REDACTED "
    else
        print word + " "
    end
end