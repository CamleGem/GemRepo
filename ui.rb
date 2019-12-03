# File.open('testing') do |io|
#    p io.read(5)
#    p io.pos
#    io.pos = 0
#    p io.gets
#    io.close
# end



filename = "buffering_file.txt"
File.open(filename, 'w+') do |io|
   3.times do |i|
      io.write("hello world!")
      io.sync = true
      puts "第#{i + 1}次: #{File.size(filename)}"
   end
   io.close
end

puts "结束后: #{File.size(filename)}"
File.open('testing') do |io|

end

