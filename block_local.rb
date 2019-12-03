a = 10
b = 20

[1, 2, 3, 4].each do |ele|
  p ele + a + b
end

x = y = z = 0

[1, 2, 3, 4].each do |num|
  y = num
  x = num
  z = num
end

p [x, y, z]

aa = bb = nums = 0
[1, 2, 3, 4].each do |num; aa, bb|
  nums = num
  bb = num
  aa = num
  p [num, aa, bb]
end

p [aa, bb, nums]





