class String

  def is_substring?(other)
    self.index(other)
  end

  #def is_rotation?(other)
  #  (self + self).is_substring?(other)
  #end

  def is_rotation?(other)
    other.length.times do
      other = rotate(other)
      return true if other == self
    end
    false
  end

  private

  def rotate(word)
    word[-1] + word[0..-2]
  end

end
