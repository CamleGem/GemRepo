

File.open('testing') do |file|
  file.each_line do |line|
    puts "#{line}"
  end
end

array = ['larry', 'wall', 'perl']
p array.sort

p array.sort do |a, b|
  a <=>b
end


p array.sort do |a, b|
  a.length <=> b.length
end

strings = %w{
larry wall created perl and matz created ruby they are all good languages so l love them
}

cal_num = 0
strings.sort_by do |element|
  element.length
  cal_num += 1
end

p cal_num

