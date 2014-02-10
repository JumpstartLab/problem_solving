class UniqueString
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def unique_letters
    a = []
    word.split("").each do |letter|
      a << letter unless a.include?(letter)
    end
    a
  end

  def unique?
    unique_letters.join == word    
  end

end
