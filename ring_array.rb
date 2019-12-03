class RingArray < Array

  def [](i)
    idx = i % size
    super (idx)
  end

end

name = RingArray['larry', 'wall', 'perl']

p name[0]
p name[1]
p name[2]
p name[10]
p name[15]

