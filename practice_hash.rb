wday = {
   :sunday   => "星期天",
   :monday   => "星期一",
   :saturday => "星期六",
}

p wday.keys.size


def str2hash(string)
   new_hash = Array.new
   string.split.each do |word|
      new_hash << word.chomp
   end

   return Hash[*new_hash]
end

def name(a=100, b = 200)
   puts a, b
end

name(10, {larry: 100, wall: 200})

p str2hash("blue 蓝色 white 白色\n red 红色")
