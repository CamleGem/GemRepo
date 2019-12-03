array = File.read('testing')
p array.class


io = File.open('testing')
while line = io.gets()
   line.chomp!
   p line
end
p io.eof?

io.close

ios = File.open("testing")
# ios.each_line do |line|
#    puts "#{ios.lineno}: #{line}"
# end



p ios.getc
p ios.ungetc("larry")
p ios.gets
p ios.getbyte
p ios.ungetbyte(117)
p ios.gets


$stdout.puts("hello", "world")


#
# ios.each_byte do |byte|
#    p byte
# end

# ios.each_char do |chr|
#    p chr
# end