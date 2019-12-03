strings = "helloworld!"
strings[1, 2] = "perl"

p strings

string2 = "helloworld"
string2[1..5] = "perl"
p string2

string3 = "kinbon"


p string3.slice(1, 3)
p string3.slice(1..3)

p string3.index('in')

p [1, 2, 3].values_at(1, 2)