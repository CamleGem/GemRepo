arg = Fixnum.instance_method("+")
p arg.class

p arg.bind(2).call(2)
p arg.owner
p arg.name

obj = String.instance_method(:to_i)
back = obj.bind("hello")
p back.call

def new
   puts "hellos"
end

objs = method(:new)
p objs.class

a = [1, 2, 3, 4]
add = lambda{|x, y| x + y}
ko  = add<=a
p ko