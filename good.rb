def name(name = 100, *jason,  larry)
   puts name, jason, larry
end

name(200,  100, 200, 300)

def perl(x:0, y:0, z: 0)
   puts x, y, z
end

perl(y:100, z: 800)


def python(x:, y:100, **arg)
   puts x, y, arg
end

puts [1, 2, 3]
def wos(name = 200, *arg)
   [name, arg]
end


p wos(200)
python(x: 100, y: 200)


def kg(d, x: 100, y: 100, z: 400, **arg)
   p [d, arg]
end


def second(b, x: 100)

end
kg(10, {larry: 100, wall: 'perl'})

def lu(*arg, b)
   puts arg, b
end



lu(100, 200)

def eat(x:, y: 200)
   puts x, y
end


def slogan(a, b ,c)
   puts a, b, c
end

arry = [1, 2, 3]
slogan(*arry)


