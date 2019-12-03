def total(from, to)
  result = 0
  from.upto(to) do |num|
    if block_given?
      result += yield(num)
    else
      result += num
    end
  end
  return result
end

# result = total(1, 10) do |num|
#   num**2
# end
#
# p result
#
# p total(1, 10){ |num| num**2 }


#1 + 2 + 3 + 4 + 6 + 7 + 8 + 9 + 10

value = total(1, 10) do |num|
  if num % 2 != 0
    next 0
  end
  num
end
p value


value2 = total(1, 10) do |num|
  break 0 if num == 5
  num
  p num
end

p value2



value3 = total(1, 10) do |num|
  next 0 if num % 2 != 0
  num
end

p value3





