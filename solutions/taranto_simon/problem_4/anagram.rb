class Anagram

  def self.is_it?(base, comparison)
    letter_count(base) == letter_count(comparison)
  end

  def self.letter_count(string)
    string.each_char.each_with_object({}) do |letter, memo|
      memo[letter] ? memo[letter] += 1 : memo[letter] = 1
    end
  end

end
