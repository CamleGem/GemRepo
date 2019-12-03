def three(first, second)
   one = yield(first)
   two = yield(second)
   return [one, two]
end


back = three(100, 200){|value| value * 10}
p back



def five(a, b)
   yield(a)
   yield(a, b)
end


five(1, 2) do |a, b|
   puts "first#{[a, b]}"
end







