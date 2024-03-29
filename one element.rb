class Point

  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end

  def +@
    dup
  end

  def -@
    self.class.new(-x, -y)
  end

  def ~@
    self.class.new(-y, x)
  end

  def [](index)
    case index
    when 0
      x
    when 1
      y
    else
      raise  ArgumentError, "out of range #{index}"
    end
  end

  def []=(index, val)
    case index
    when 0
      self.x = val
    when 1
      self.y = val
    else raise ArgumentError, "out of range #{index}"
    end
  end

end

point = Point.new(10, 20)

# p +point
# p -point
# p ~point

p point[0]
p point[1]
point[0] = 80
point[1] = 120

p point[0]
p point[1]



p ArgumentError.ancestors