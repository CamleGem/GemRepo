class HelloWorld

  def initialize(name: 'yang', age:  30)
    @name = name
    @age = age
  end

  def hello
    puts "my name is #{@name} #{@age} years old."
  end

  def add= (value)
    @jason = value
  end

end

obj = HelloWorld.new
obj.hello



