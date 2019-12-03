patten = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matched = 0
File.open(filename).each_line do |line|
  if patten =~ line
    max_matched += 1
  end
end

p max_matched
