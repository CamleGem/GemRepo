
# open("|ls -l") do |io|
#    io.each do |line|
#       p line
#    end
# end


back = IO.popen("ls -l")
back.each_line {|line| p line}

require 'open-uri'

open("http://www.baidu.com") do |io|
   puts io.read
end