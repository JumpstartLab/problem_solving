class String

  def is_substring?(other)
    self.index(other)
  end

  def is_rotation?(other)
    (self + self).is_substring?(other)
  end

end
