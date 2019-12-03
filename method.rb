def kinbon(x, y)
   one = lambda {[x, y]}
   two = ->{[x * 2, y * 2]}
   p one.class
   return one, two
end


arg = kinbon(1, 2)
p arg[0].call
p arg[1].call






mm = 'string'.method("size")
p mm.call
p mm.arity
p mm.receiver
p mm.owner
p mm.name


def test3(&block)
   block.call
end



