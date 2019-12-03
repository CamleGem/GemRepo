def test
   1.times do
      return 10
   end
end

p test


def test2
   obj = Proc.new{ return }
   obj.call
   puts "through here!"
end


p test2


def proc_builder(message)
   Proc.new { puts message; }
end

def test3
   puts "entering method."
   back = proc_builder("entering proc")
   back.call
   puts "good?"
end

test3

def test4(message)
   la = lambda {puts message; return}
   la.call
   puts "still working!"
end

test4('entering lamba')


def test5
   lambda { puts "hello world!"; return }
end


def second
   p = test5
   p.call
   puts "still working!!!"
end


second

def test6
   puts "entering test method"
   obj = Proc.new { break }
   obj.call
   puts "exit testing method!"
end


test6


def iterators(&block)
   puts "entering test method"
   block.call
   puts "exit testing method!"
end

def test7
   iterators { puts "im here"; break }
   puts "hello larry!"
end
test7

def test8
   obj = lambda { puts "hello perl"; break 88; puts "hello ruby" }
   p obj.call
   puts "good ending!"
end

test8



puts "*******************************************************************"

def test9
   obj = Proc.new {puts "money"; next }
   p obj.call
   puts "halo"
end

test9

def test10
   obj = lambda {puts "hey"; next }
   p obj.call
   puts "halos"
end

test10


def test11
   begin
   obj = Proc.new {raise "error!"}
   obj.call
   rescue => arg
      puts "hello life"
      puts arg.message
   end
end

test11

ojk = Proc.new {
   |x, y| [x, y]
}

p ojk.call()
p ojk.call(1)
p ojk.call(1, 2)
p ojk.call([1, 2])


#closure

def cls(x, y)
   obj = Proc.new { [x, y] }
   return obj
end


def exs(block)
   block.call
end

array = exs(cls(10, 20))
p array


def multipe(n)
   lambda { |value| value.collect { |ele| ele * n } }
end

objs = multipe(10)
p objs.call([1, 2, 3])


def wonderful(initial_value = nil)
   value = initial_value
   setter = lambda { |a|  value = a }
   getter = lambda { value }

   return setter, getter
end


set, get = wonderful
set.call(20)
p get.call


def mutual(*arg)
   x = nil
   return arg.map { |x| lambda { |value| value * x } }
end

double, triple = mutual(2, 3)
p double.call(2)
p double.call(3)


def clos(first, second)
   one = first.call
   two = second.call
   one + two
end


def set(x, y)
   a, b = x, y
   first = ->(){ [a, b] }
   second = ->(){ [a, b] }
   return first, second
end

ars = set(1, 2)
p ars

p clos(*ars)

