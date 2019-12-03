book = Proc.new do |*arg|
   arg.map {|ele| ele * 2}
end

p book.call(1, 2, 3)


p book[1, 2, 3]

def power_of_state(value)
   lambda do |val|
      return val * value
   end
end

p power_of_state(10).class

p power_of_state(3).call(3)


def prefix(ary, value)
   result = []
   ary.each do |ele|
      result << ele
      if ele == value
         return result
      end
   end
   return  result
end

 p prefix([1,2, 3, 4, 5], 3)
