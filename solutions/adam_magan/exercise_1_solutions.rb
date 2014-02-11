# Problem 1
class String

  def all_unique_characters?
    #take each character in the string
    #store it in a new string
    #before storing it in the new string
    #check if the new string includes that character

    new_string = ""
    count = 0

    until (self.length <=  count)
      unless new_string.include? self[count]
        new_string << self[count]
      end
      count += 1
    end

   # self.each_char do |character|
   #   unless new_string.include? character
   #     new_string << character
   #   end
   # end

   self.length == new_string.length
  end

end
