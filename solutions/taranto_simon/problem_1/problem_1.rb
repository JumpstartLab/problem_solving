require 'pry'

class Algo

  #def self.is_unique?(string)
  #  string.split("").each_with_object(Hash.new) do |letter, hash|
  #    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  #  end.all? { |_,count| count == 1 }
  #end

  #def self.is_unique?(string)
  #  string.each_char.inject("") do |uniques, letter|
  #    uniques << letter unless uniques.include?(letter)
  #  end
  #end

  def self.is_unique?(string)
    uniques = ""
    for i in 0..(string.length - 1)
      letter = string[i]
      return false if uniques.include?(letter)
      uniques << letter
    end
  end

end
