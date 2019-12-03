#frozen-string-literal: true

string = "hello\nkinbon\nand\nperl\n"

value = string.each_line.collect  do |line|
   line.chomp!
end

p value



string4 = "AVB"
p string4.tr("A-Z", "a-z")


