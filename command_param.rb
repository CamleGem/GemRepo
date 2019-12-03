# puts "第一个参数 #{ARGV[0]}"
# puts "第二个参数 #{ARGV[1]}"
# puts "第三个参数 #{ARGV[2]}"
# puts "第四个参数 #{ARGV[3]}"

# print "#{File.read(File.open(ARGV[0]))}\n"



require_relative 'grep_emulate'
pattern = Regexp.new(ARGV[0])
file = File.open(ARGV[1])
grep(pattern, file)
