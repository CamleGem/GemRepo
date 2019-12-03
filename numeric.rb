a = Rational(10, 20)
p a
p a.numerator
p a.denominator



p 1.4.round
p 1.4.ceil
p 1.4.floor
p 1.4.to_i
p 1.4.to_s
p 1.4.to_r
p 1.4.to_c
p Math::PI
p Math::E

p  Math.sqrt(9)

p Random.rand(10)

require 'securerandom'

p SecureRandom.random_bytes(12)

p SecureRandom.base64(12)

ary = Array.new
1.step(10, 3) do |i|
  ary << i
end
p ary

arys = []
10.step(1, -2) do |i|
  arys << i
end

p arys

a = 0.1 + 0.4
b = 0.5
p a == b
