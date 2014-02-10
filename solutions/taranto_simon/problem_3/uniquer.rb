require 'pry'
class Uniquer

  def self.make(string)
    result = string.each_char.inject("") do |uniques, letter|
      uniques.include?(letter) ? uniques : uniques + letter
    end
    result
  end

end
