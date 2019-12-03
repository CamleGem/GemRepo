p nil.class
p true.class

a = [1, 2, 3]
a.each do |num|
   puts num
end

b = [1, 2, 3, 4]
values = b.map do |num|
   num + 1
end

p values
p b.collect {|num| num * 2 }

p b.inject {|sum, num| num + sum}

hash = {key: 10, key1: 200}
hash.each do |key, value|
   puts "#{key}:#{value}"
end

hash.each do |ary|
   puts "#{ary[0]}:#{ary[1]}"
end

# class Angry
#
#    def initialize(x, y)
#       @x = x
#       @y = y
#    end
#
#    def [](first, second)
#       first + second
#    end
#
#    def []=(first, second)
#       @x = first
#       @y = second
#    end
#
#    def get
#       @x + @y
#    end
# end
#
# bit = Angry.new(1, 2)
# bit.[]=(20, 30)
# p bit.get
#
# hel = "hello world!"
#
# def hel.up
#    self.upcase
# end
#
#
# p hel.up
#
# def Math.three(x, y)
#    (x + y)*3
# end
#
#
# p Math.three(3, 5)

#
# def are_you_ok?
#    puts "please enter a number:"
#    num = gets
#    case num
#    when num > 10
#       return 11
#    when num < 10
#       return 9
#    when num == 10
#       return 10
#    else puts "wrong!"
#    end
#
# end


class Sequence

   include Enumerable
   attr_accessor :from, :to

   def initialize(from, to)
      @from, @to = from, to
   end

   def each
      start = from
      ends = to
      sum = 0
      (start..ends).to_a.each do |num|
         sum += yield(num)
      end
      return sum
   end

end


obj = Sequence.new(10, 20)

value = obj.each do |num|
   num * 2
end


p value

module Compute
   def from_to_by(from, to, by)
      x = from
      while x <= to
         yield x
         x += by
      end
   end
   module_function :from_to_by
end


Compute.from_to_by(1, 10, 2) {|num| puts num}

aa = 10
p defined?(aa)





aa = 10
bb = aa

p aa == bb
p aa.eql?bb
p aa.equal?bb
p 1.0.eql?1
p 1.0 == 1
p 1.object_id
p 1.object_id
p 1.equal?1



p (1..5).begin
p (1..5).end




