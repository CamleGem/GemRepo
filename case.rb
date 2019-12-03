

file = File.open('testing')
file.each_line do |line|
  case line
  when /fine/
    puts "#{line}"
  when /is/
    puts "#{line}"
  when /mae/
    puts "#{line}"
  when /^$/
    exit
  end
end

p String === 'larry'
p (1..3) === 2