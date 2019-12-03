array = [1, '20', nil]

array.each do |element|
  case element
  when String
    puts "string"
  when Numeric
    puts "number"
  when NIL
    puts "null value"
  end
end
