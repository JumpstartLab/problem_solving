class StringReverser

  def self.go(string)
    string.each_char.inject("") { |word, letter| letter << word }
  end

end
