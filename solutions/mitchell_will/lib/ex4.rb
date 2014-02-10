class String

  def anagram?(other=nil)
    other.to_s.chars.sort == self.chars.sort
  end

end
