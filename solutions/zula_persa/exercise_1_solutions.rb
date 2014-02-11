class UniqChars

  attr_reader :count, :word

  def initialize(word)
    @word = word
    @count = word.length
  end

  def word_numbers
    numbers = String.new
    count.times do |position|
      numbers <<  (word[position].ord % 32).to_s + " "
    end
    return numbers.strip
  end

end
