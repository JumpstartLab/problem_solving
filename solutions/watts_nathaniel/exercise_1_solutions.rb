require 'pry'
# Problem 1
class String

  def all_unique_chars?
    count = 0
    new_string = ""
    while count < length
      char = self[count]
      return false if new_string.include? char
      new_string += char
      count += 1
    end
    return true
  end

  def alt_reverse
    chars.inject([]) { |array, char| array.unshift(char) }.join
  end

  def remove_dups
    chars.inject([]) do |arr, char|
      arr.include?(char) ? arr : arr << char
    end.join
  end

  def anagram_of?(candidate)
    chars.sort == candidate.chars.sort
  end

  def url_spacify
    chars.map { |char| char == " " ? "%20" : char }.join
  end
end

class Neo
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def size
    @size = cells.length / 2
  end

  def cells
    @cells ||= matrix.flatten
  end

  def rotate_ninety
    matrix.each_with_index do |row, index|
      row.each_with_index do |cell, index|
      end
    end
  end
end
