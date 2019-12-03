class String

  def count_word
    counts = self.split(/\s+/)
    return counts.size
  end
end

str = 'i love mae very much'
p str.count_word


