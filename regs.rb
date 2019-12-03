re1 = Regexp.new('^(AB|CD)+$')

p re1

puts 'true' if "ABCD" =~ re1


re2 = Regexp.quote('^(AB|CD)+$')

p re2

re3 = Regexp.new(re2)
p re3

re6 = Regexp.new('AB', Regexp::IGNORECASE)

puts "good" if "ab" =~ re6


puts  $~[1] if  "larry wall" =~ /(\w+)\s+\w+/im


string = "hello larry and perl lang!"

string.gsub!(/\w+/) do |matched|
   %Q{<#{matched.upcase}>}
end

p string


strings = "larry wall and perl"
strings.scan(/(larry) | (perl)/m) do |matched|
   p matched
end



address = 'http://www.baidu.com/file/cn'

address =~ %r|^http://(.*?)/|
puts $1

address =~ %r|^http://([^/]+)/|

puts $~[1]
