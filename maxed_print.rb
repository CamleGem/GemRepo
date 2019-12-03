patten = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matched = 4
max_print = 0
File.open(filename).each_line do |line|
  if patten =~ line
    puts line
    max_print += 1
    if max_print >=4
      break
    end
  end
end

p 1 == 1.0
p max_matched
