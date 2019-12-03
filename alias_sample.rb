class C1

  def hello
    'hello'
  end
end



class C2 < C1
  alias old_hello hello

  def hello
    'world'
  end
end

obj = C2.new
p obj.hello
p obj.old_hello


class Class
  def child
    'just my father!'
  end
end


class << obj
  def good
    'that is so good'
  end
end

p obj.good

def obj.goods
  puts "ruby is graceful!"
end

obj.goods

