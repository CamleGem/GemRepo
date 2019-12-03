array = [1, 2, 3, 4, 5]
array.each_index do |index|
   p index
end

p array.size

array.each_with_index do |value, i|
   p [i, value]
end


multi = Array.new(3, [0, 0, 0])
p multi

multi[0].push(3)

p multi


same = Array.new(3, 2)

p same


same_too = Array.new(5) do |i|
   i * 2
end

p same_too

first = [1, 2, 3, 5, 6]
second = [1, 2, 3]
third = [2, 2, 3, 3, 3, 5, nil]

back = Array.new;

contain = []
first.each_slice(2) do |arrays|
   contain << arrays.map { |ele| ele * 2  }
end

p contain


arr = first.partition do |num|
   num > 3
end

p arr.none?



larry = [1, 2, 3]
wall = [1, 2 ,3]
p larry.zip(wall)


#
# p third.all?
# p third.count(2)
# for i in 0..first.size - 1
#    back << first[i] + second[i] + third[i]
# end
#
# p back
#
# i = 0
# while i < first.length
#    back << first[i] + second[i] + third[i]
#    i +=  1
# end
# p back


# first.zip(second, third) do |a, b, c|
#    back << a + b +c
# end
#
# p back


