# Problem 1
class ProblemOne
  def self.all_characters_unique?(string)
    hash = Hash.new
    string.chars.each_with_index { |letter, index|
      hash[letter] = index
    }
    hash.count == string.length
  end
end

class ProblemOneChallenge

  def self.all_characters_unique?(string)
    dup = string.dup
    length = dup.length
    count = 0
    while string.length > 0 do 
      string.delete!(string[count])
      length -= 1
      if string.length != length
        answer = false
        break
      else
        answer = true
      end
    end
  answer
  end

end

class ProblemTwo

  def self.reverse_without_reverse(string)
    answer = ""
    string.length.times do 
      answer.concat(string.slice!(-1))
    end
    answer
  end

end

class ProblemThree
  def self.remove_duplicates(string)
    answer = ""
    while string.length > 0
      first_letter = string.slice!(0)
      if string.include?(first_letter)
        string.delete!(first_letter)
      else
        answer.concat(first_letter)
      end
    end
    answer
  end
end

class ProblemFour
  
  def self.are_anagrams?(string1, string2)
    string1.downcase.chars.sort == string2.downcase.chars.sort
  end
end

class ProblemFive
  
  def self.http_formatter(string)
    answer = ""
    string.chars.each do |letter|
      if letter == " "
        answer.concat("%20")
      else
        answer.concat(letter)
      end
    end
    answer
  end
  
  def self.http_formatter2(string)
    no_spaces = string.split(" ")
    answer = ""
    no_spaces.each do |letters|
      answer.concat("%20")
      answer.concat(letters)
    end
    answer[3..-1]
  end
end

