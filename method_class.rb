p Method.instance_methods

arg = 'string'.method(:size)
p arg.call
p arg.class
arg.to_proc
p arg[]
p arg.()
p arg.class