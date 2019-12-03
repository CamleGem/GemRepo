first_arry = Array.new
first_arry[0] = 1
first_arry[1] = 2
first_arry[2] = 3

second_arry = [1, 2, 3]
p first_arry
p second_arry

p first_arry.class
p second_arry.class

p first_arry.instance_of?(Array)
p second_arry.instance_of?(String)


str = ""
p str.is_a?(String)
p str.is_a?(Object)

p String.is_a?(Object)
p Object.is_a?(BasicObject)