class Point

  attr_accessor :first, :second

  protected :first, :second

  def initialize(first: 0.0, second: 0.0)
    @first = first
    @second = second
  end

  def swap
    self.first, self.second = self.second, self.first
  end

  def swap_two(other)

  end
end



obj = Point.new(first: 100, second: 200)
obj.swap
p obj

p obj.first
