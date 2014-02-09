class StringReverser

  def self.go(string)
    string.each_char.inject("") { |letter, word| word << letter }
  end

end
