class Wealthy

  attr_accessor :years, :money

  def initialize(years, money)
    @years = years
    @money = money
  end

  def smile
    puts "i am so happy to get much money!"
  end

  public :smile

  def work
    puts "i love perl and ruby!"
  end

  private :work

end


obj = Wealthy.new(10, 10000000)


obj.smile

p Wealthy.instance_methods
p Object.instance_methods
p BasicObject.instance_methods