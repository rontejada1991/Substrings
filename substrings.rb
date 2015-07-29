def substrings words, dictionary
  words_array = words.downcase.split(" ")
  results = Hash.new(0)

  words_array.each do |word|
    if dictionary.include?(word)
      results[word] += 1
    end
  end

  return results

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)

puts substrings("It is creeping up behind me, I know it will not be long before it decides to go low and below the hornabyss.", dictionary)

puts "Try it: "
input = gets.chomp

puts substrings(input, dictionary)