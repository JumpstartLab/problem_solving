require 'pry'
class String

  def replace_white_space
    #get each character and compare it to white space
    #if it is white space then replace that with %20
    #return the new string

    new_string = ""

    self.each_char do |char|
      if char == " "
        new_string << "%20"
      else
        new_string << char
      end
    end

    new_string
  end

end
