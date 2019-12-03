first  = -> (x){x + 20}
second = -> (y){y + 30}

def add(one, two)
   return one.call(30) + two.call(20)
end


p add(first, second)


def substract(x, y)
   one, two = x, y
   return {
      "first"  => ->(x = one, y = two){ [x, y] },
      "second" => ->(){[one, two]},
   }

end


hash = substract(1, 2)
p hash["first"].call
p hash["second"].call



def dev
   yield
end

dev do
   puts "hello world"
end

