ltotal = 0
wtotal = 0
ctotal = 0

file = File.open('testing')
begin
file.each_line do |line|
  ltotal += 1
  ctotal += line.size
  line.sub!(/^\s+/, '')
  ary = line.split(/\s+/)
  wtotal += ary.size
end
rescue => ex
  puts "#{ex.message}"
end

printf("%d %d %d %s\n", ltotal, ctotal, wtotal, 'total')


