require 'pry'
class String
  def reverse
    #take each character at the end of the string
    #and add it into a new string
    #stop doing this when the length of the old string 0
    new_string = ""
    letters = self.split("")

    letters.length.times do
      new_string << letters.pop
    end

    new_string
  end
end
