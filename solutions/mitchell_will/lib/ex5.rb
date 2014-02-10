class String

  def replace_whitespace(with)
    self.chars.collect do |char|
      char == " " ? with : char
    end.join
  end

end
