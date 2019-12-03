class Point

  attr_accessor :x, :y

  def initialize(first, second)
    @x = first
    @y = second
  end

  def +(other)
    return self.x + other
  end

  def -(other)
    return self.x + other.x
  end

  def add(other)
    self.class.new(100, 300) + Point.new(200, 600)
  end
end

dot = Point.new(100, 200)
p dot + 300

p dot - Point.new(99, 100)


exp = Array[1, 2, 3, 4]




class << exp
  def [](other)
    i = other % size
    super(i)
  end
end

p exp[0]

p Enumerable.class
p Module.class