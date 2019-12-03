names = ['larry', 'wall', 'perl']
print names.size, "\n"

names.each do |name|
  puts "#{name} is good!"
end

sym = :foo
p sym.is_a?(Symbol)

p sym.to_s

lang = {
    'larry' =>  100,
    'wall'  =>  200,
    'perl'  =>  888,
}

lang.each do |key, value|
  puts "#{key.to_sym}: #{value.to_s}"
end

p lang

lang2 = {
    larry: 100,
    wall:  200,
    perl:  888,
}

p lang2


ar = [1, 2 , 3]
def ar.value=(val)
  x = val
  return x
end

p ar.value = 10

