dictionary = ["below","down","go","going",
"horn","how","howdy","it","i","low","own",
"part","partner","sit"]

def substrings(find_word, dictionary)
  new_hash = Hash.new(0)
  low_word = find_word.downcase

  dictionary.each do |word|
    same_word = low_word.scan(word).length
    new_hash[word] = same_word unless same_word == 0

  end
  
  new_hash
end

puts "Enter the word you want to find in the dictionary"
find_word = gets.chomp.to_s
puts "-----"
print substrings(find_word, dictionary)
puts ""