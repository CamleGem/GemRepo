



def myloop
   while
      yield
   end
end



def total(from, to)
   sum = 0
   from.upto(to) do |num|
      if block_given?
         sum += yield(num)
      else
         sum += num
      end
   end
   return sum
end


p total(1, 10)

var = total(1, 10) do |num|
   num * 2
end

p var

def blog(arg)
   sum = 0
   arg.each do |num|
      if block_given?
         sum += yield(num)
      else
         sum += 1
      end
   end

   return sum
end


var3 = blog([1, 2, 3, 4, 5, 6]) do |num|
   num * 2
end

p var3



def fib_up_to(max)
   first, second = 1, 1
   while first <= max
      yield first
      first, second = second, first + second
   end
end

fib_up_to(10)  do |num|
   print num, " "
end

puts

class Array

   def finds
      self.each do |value|
         return value if yield(value)
      end
      nil
   end
end


value = [1, 2, 3, 4].finds do |num|
   num > 3
end

p value



def heiko(one, two)
   return yield(one, two)
end

vs = heiko(10, 20) do |one, two|
   one + two
end

p vs















