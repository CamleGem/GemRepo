# def total(from, to)
#   result = 0
#   from.upto(to) do |num|
#     if block_given?
#       result += yield(num)
#     else
#       result += num
#     end
#   end
#   return result
# end
#
# p total(1, 10){ |num| num**2  }
# p total(1, 10) do |num|
#   num**2
# end

def own_loop(num)
  while true
    num -= 1
    yield(num)
  end
end

own_loop(10) do |num|
  puts num
  break if num < 0
end


