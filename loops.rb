num = 0
def loops
  while true
    yield
  end
end

loops do
  num += 1
  puts "#{num}"
  break if  num > 10
end

