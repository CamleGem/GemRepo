module MyFirstModule
  def fine
    'fines'
  end

  module_function :fine
end

module  MySecondModule
  def fine
    self
  end

  module_function :fine
end

# p MySecondModule.fine
#
# p MyFirstModule.fine


class First
  include MyFirstModule

  def three
    return fine
  end
end

class Second
  include MySecondModule
  def three
    return fine
  end
end
#
# p First.new.fine
# p Second.new.fine


p First.ancestors
p First.superclass
p First.include?(MyFirstModule)
p Second.include?(MySecondModule)


module MyThirdModule
  def thanks
    'i love mae very much!'
  end

  module_function :thanks
end

include MyThirdModule
p thanks




class Fathers

  def money
    'i love money'
  end
end

class Child < Fathers
  def kinbon
    'he is so bad to lend my money!'
  end
end

# p Child.new.money
p Child.superclass


module Money
  def larry
    'perl'
  end
end


strs = "Ruby is so good"

strs.extend(Money)

p strs.larry

String.extend(Money)
p String.larry