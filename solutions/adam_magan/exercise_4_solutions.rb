class String

  def anagram?(word)
    #take each character and check if its in the og string
    word.split("").all? do |character|
      self.include? character
    end
  end
end
