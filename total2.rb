
def total(from, to, &block)
  result = 0
  from.upto(to) do |num|
    if block
      result += block.call(num)
    else
      result += num
    end
  end

  return result
end


value = total(1, 10) do |num|
  next 0 if num % 2 != 0
  num
end

p value
