
rang = (1..100).to_a

p rang


# p rang.map {|ele| ele * 100 }.reverse
# p rang.map {|ele| ele * 100 }.reverse

rang.freeze
second_array = rang.dup
p second_array

second_array.reject! do |ele|
   ele % 3 != 0
end

p second_array

sum = 0
second_array.each do |num|
   sum +=num
end

p sum

result = []
(1..100).each_slice(10) do |num|
   result << num
end

p result

second_array = Range.new(1, 100).to_a

result2 = Array.new
10.times do
   result2 << second_array[0..9]
end

p result2


def sum_array(a,  b)
   news = []
   a.zip(b) do |ones, twos|
      news << ones + twos
   end
   return news
end

vals = sum_array([1, 2, 3], [4, 6,  8])
p vals


10.times do |i|
   print <<~LINE
      #{i}
   LINE
end


p "im fine".length
p "im fine".size
p "im fine".bytesize
str = " fine"
p str[0]
p str[1, 2]


hello = "larry";
wall = "wall";



p hello

hello.concat(wall)

p hello

