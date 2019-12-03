
count = Hash.new(0)
File.open(ARGV[0]) do |file|
   file.each_line do |line|
      words = line.split
      words.each do |word|
         count[word] += 1
      end
   end
end

# count.sort {
#    |a, b|
#    a[1] <=> b[1] or a[0] <=> b[0]
# }.each do |key, value|
#    puts "#{key}: #{value}"
# end


p ({b: 100}.merge({a: 200}))