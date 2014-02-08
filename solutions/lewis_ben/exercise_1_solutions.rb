class String

  def unique
    remove_dupes == self
  end

  def remove_dupes
    collector = ""
    self.each do |c|
      collector += c unless collector.index(c)
    end
    collector
  end

  def rev
    collector = ""
    i = self.length
    while i >= 0
      collector += self[i].to_s
      i -= 1
    end
    collector
  end

  def anagram?(other)
    self.each do |c|
      other.each do |d|
        return false if self.index(d).nil?
      end
    end
    true
  end

  def each(&block)
    i = 0
    while i < self.length
      yield self[i]
      i += 1
    end
  end

end