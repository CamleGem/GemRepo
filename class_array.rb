array = %w(larry wall jason)
array2 = %i(larry wall jason)

p array
p array2

hash = {
   name: 'larry',
   age: 100,
   lang: 'perl',
}

p hash

p hash.to_a.first

p Array.new(0, nil)
p Array.[]
p Array[]

p Array.new(5, 8)



new_ary = Array[1, 2, 3, 4, 5, 6]
p new_ary
p "*******************************************"
p new_ary[1..3]
p new_ary[1...3]
p new_ary[1, 3]
p new_ary.slice(1)
p new_ary.slice(1, 3)
p new_ary.slice(1..3)
p new_ary.slice(1...3)
p new_ary.at(1)



# new_ary2 = Array.new
#
# new_ary2[1..3] =  [1, 2, 3]
#
# p new_ary2
#
# new_ary2[4, 5] = ["a", "b", "c", "d", "e"]
# p new_ary2


new_ary3 = Array[1, 2, 3, 4]
new_ary3[0..2] = [6, 7, 8]
p new_ary3

new_ary3[3..3] = 5
p new_ary3

new_ary3[2, 0] = [22, 23]
p new_ary3


p new_ary3.values_at(2, 3)
