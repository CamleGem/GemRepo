class Sunshine

  VERSION = 1.0
  @@count = 0
  attr_accessor :name, :age

  class << self
    def prints
      print "hello world!\n"
    end

  class << Sunshine
    def goods
      'i love ruby!'
    end
  end

    def counts
      @@count
    end
  end

  def Sunshine.hello(value)
    puts "kinbon is so bad" if value > 10
  end

  def Sunshine.hellos(value)
    'good good good!'
  end


  def initialize(name, age)
    @name = name
    @age =  age
    @@count += 1
  end

  def names
    puts "#{self.name} and #{self.age}"
  end

  def get
    age = 200
    self.age = 300
    puts "#{self.age}"
  end
end

obj = Sunshine.new('yang', 100)
p obj.names

p obj.age

info = ['yang', 100]
Sunshine.new(*info).get

Sunshine.prints
Sunshine.hello(200)

p Sunshine.new('12', '3').

p Sunshine.hellos(1)

p Sunshine.goods

p Sunshine::VERSION

Sunshine.new('kinbon', 100)
Sunshine.new('larry', 90)
p Sunshine.counts