=begin
this is some methods instance
block function
normal function
=end

def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts "num is #{num}"
  break  if num > 10
  num *= 2
end

def many(first, *second)
  return [first,second]
end

p many(1)

def middle(first, *second, third)
  return {
      first:  first,
      second: second,
      third:  third,

  }
end

p middle(3,1, 2, 3)

def ending(first,*arg, third: 200)
  return [first, arg, third]
end

p ending(100, 900)

a, *ars = 111

#keyword method

def kinbon(x:, y: 100, z: 200)
  return x + y + z
end

p kinbon(x: 20, y: 900)

def perler(xx: 888, **args)
  return [xx, args]
end

p perler(jason: 200, lucy: 999)

hashes = {x: 100,  y: 200}
p kinbon(hashes)


def trys(name ,larry, wall)
  [name,  larry, wall]
end

arss = [1, 2, 3]
p trys(*arss)

def eight(a, arg)
  [a, arg]
end

p eight(100, {x: 100, y: 888})

p eight(200, 'kinbon' => 88, 'java' => 99)