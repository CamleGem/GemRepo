class Vector

  include Comparable
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def scalar
    Math.sqrt(x**2 + y**2)
  end

  def <=>(other)
    self.scalar <=> other.scalar
  end
end


first = Vector.new(1, 2)
second = Vector.new(2, 1)
p first <=> second
p first < second
p first > second
p first >= second
p first <= second

=begin
practice 1
practice 2
practice 3
practice 4
practice 5
=end

def cels2far(temp)
  temp * 9 / 5 + 32
end

p cels2far(30)

def far2cels(from, to)
  from.upto(to) do |num|
    p num * 9 / 5 + 32
  end
end

far2cels(1, 100)


def dice
  Random.rand(6)
end


def dice10
  Random.rand(10)
end


def prime?(num)

end

