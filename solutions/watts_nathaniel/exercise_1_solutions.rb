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
    chars.inject([]) do |array, char|
      array << char unless array.include?(char)
      array
    end.join
  end

  def anagram_of?(candidate)
    chars.sort == candidate.chars.sort
  end

  def url_spacify
    split(' ').join('%20')
  end
end
