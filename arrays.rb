# array1 = [1, 2, 3]
# array2 = [2, 3, 4]
#
# p array1 | array2
#
# p array1 & array2
#
# p array1 + array2
#
# p array1 - array2
#
#
# p array1.concat(array2) << 88
# p array1
#
# p array1.push(99)
# p array1.pop
# p array1.shift
# p array1.unshift 888
#
#
# p array1.first
# p array1.last
#
#
# p array1[1..4]
# array1[0, 4] = [1, 2, 3, 4]
#
# p array1
#
# array4 = [1, 2, 3, 4]
# array4.freeze
# array3 = array4.dup
# p array3
# p array3.shift
# p array3



nul = [nil, 1, 2]
nul.compact!
p nul

nul.delete(2)
nul.delete_at(0)
p nul

nul2 = [1, 2, 3 ,4]
nul2.delete_if do |ele|
   ele < 4
end

p nul2


nul3 = [1, 2, 3, 4, 5]
nul3.reject! do |ele|
   ele > 3
end

p nul3


nul4 = [1, 2, 3, 4, 5]
p nul4.collect {|ele| ele * 2}
p nul4.map {|ele| ele * 2  }
p nul4.map! {|ele| ele * 2 }
p nul4


p nul4.fill 8
p nul4.fill(9, 0)
p nul4.fill(99, 0, 3)
p nul4.fill(999, 0..3)

aa = [1, 2, [3, 4]]

aa.flatten!
p aa



p aa.sort { |a, b| a <=> b }
p aa.sort!{ |a, b| b <=> a }

p aa.sort_by { |i| -i }
