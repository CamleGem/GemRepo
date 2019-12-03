require 'test/unit'

def are_u_sure?
   while true
      response = gets
      case response
      when /[Yy]/
         return true
      when /^[nN]/, /^$/
         return false
      end
   end
end
#assert_equal
#p are_u_sure? ? 1 : 0



def today(value)
   if block_given?
      kinbon = yield value
   end
   return kinbon
end

p today(20){|value| value + 100}



def double(x, y)
   one, two = x, y
   first  = lambda{|f| f + one}
   second = lambda{|s| s + two}
   return first, second
end

f_method, s_method = double(10, 20)
p f_method.call(10)
p s_method.call(20)

p f_method.class
p s_method.class


def kinbon
   puts "kinbon not good!"
end

back = method(:kinbon)
p back.class
back.call
p back.class.superclass
p Proc.superclass
p Proc.instance_methods.grep(/call/i)

p callback = :succ.to_proc
p callback.call("A")

jo = Proc.new{|value| value + 100}
p jo.call(200)
p jo.(200)
p jo[200]
p jo.yield(200)

def simple(&block)
   p block.class
   block.call
end

simple do
   puts "hello world!"
end



