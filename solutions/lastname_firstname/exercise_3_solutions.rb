class String

  def unique
    #take each character and put it into a new string
    #if its not already in there
    new_string = ""
    self.each_char do |char|
      new_string << char unless new_string.include? char
    end
    new_string
  end

end
