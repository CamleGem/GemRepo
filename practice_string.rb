string = %Q{Ruby is a oriented object programming language}

words = string.split(/\s+/)
p words


p words.sort

p words.collect! {|word| word.capitalize }

char = []





sets = string.split(//)


sets.uniq.each do |word|
   puts "#{word}: #{sets.count(word)}"
end




# sets.each do |key, value|
#    puts "#{key}: #{value}"
# end




