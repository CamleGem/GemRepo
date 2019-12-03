def factorial(n)
   if n < 1
      raise "the value is less than 1"
   elsif n == 1
      return n
   else
      n * factorial(n - 1)
   end
end



value = "hello"

def value.pri
   puts self
end

value.pri

p 10.nonzero?


def hello
   puts "world"
end
alias world hello

def sum(x, y)
   return x + y
end

puts(sum( 1, 2))


def minus(x = 20, b)
   puts [x, b]
end


def more(*x, b)

end

more(1, 2, 3)

def first(a, *arg)
   p [a, arg]
end

def second
   return [1, 2, 3]
end

first(*second)

def sequence(n, m, c)
   i = 0
   while i < n
      yield m * i + c
      i += 1
   end
end

sequence(5, 2, 2) do |value|
   puts value
end

def sequence2(n, m, c, &block)
   i = 0
   while i < n
      block.call(m * i + c)
      i += 1
   end
end

sequence2(5, 2, 2) {|value| puts value}


blocks = Proc.new do |value|
  puts value
end
def sequence3(n, m, c, block)
   i = 0
   while i < n
      block.call(m * i + c)
      i += 1
   end
end

sequence3(5, 2 ,2, blocks)

def sequence4(args, &block)
   n = args[:n] or raise "no validate value"
   m = args[:m] or raise "no validate value"
   c = args[:c] or raise "no validate value"
   i = 0
   while i < n
      block.call( m * i + c)
      i += 1
   end
end

sequence4(n: 5, m: 2, c: 2) do |value|
   puts value
end

def sequence5(args, &block)
   n = args[:n] or raise "no validate value"
   m = args[:m] or raise "no validate value"
   c = args[:c] or raise "no validate value"
   i = 0
   p block.class
   while i < n
      yield( m * i + c)
      i += 1
   end
end

sequence5(n: 5, m: 2, c: 2) do |value|
   puts value
end


a, b = [1, 2, 3], [4, 5]
blocking = Proc.new {
   |total, values| total + values
}

puts
sum = a.inject(0, &blocking)
p sum
p b.inject(sum, &blocking)


word = %w{perl larry wall matz}
p word.map(&:capitalize)
p word.map {
   |words| words.capitalize
}


def makeproc(&block)
   block
end

proc = makeproc do |one, two|
   one + two
end

p proc.call(1, 2)


def only(&b)
   b.call
end

only do
   puts "hello world!"
end



def three(arg, block)
   arg.each do |value|
      puts value if block.call(value)
   end

end

obj = lambda do |value|
   value > 0
end

p obj.class

three([-1, -2, 3, 4, 5], obj)


obj2 = ->(value) { value > 0 }

three([-1, -2, 3, 4, 5], obj2)


def four(arg, first, second)
   first.call(arg) + second.call(arg, 200)
end

firsts = ->(xx){ xx }
seconds = ->(yy){ yy  }

#
# p four(100, firsts, seconds)


def compose_proc(one, two)
   ->(x){ one.call(two.call(x)) + 100 }
end

succs = compose_proc(firsts, seconds)
p succs.call(4)


def sor
   block = ->(a, b){ b <=> a }
   return block
end

object = Proc.new {
   |a, b| b <=> a
}
p [1, 2, 3, 4, 5].sort &object
p [1, 2, 3, 4, 5].sort &sor





mae = lambda do |x1, y1|
   print "#{x1}: #{y1}\n"
end

mae[1, 2]
mae.call(1, 2)

mae.(1, 2)

product = ->(x, y, z){x + y + z}

# back = product.curry[1][2]
# p back.call(22)
#
# p product.call(1, 2, 3)
# p product.(1, 2, 3)
# p product[1, 2 ,3]


p product.arity

expr = ->(*arg){[arg]}
p ~expr.arity

expr2 = lambda { |x, y| x + y }


expr4 = expr2.dup
p expr2 == expr4

p expr2.object_id == expr4.object_id
























