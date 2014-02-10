class UniqChars

  attr_reader :count, :word

  def initialize(word)
    @word = word
    @count = word.length
  end

  def word_numbers
    numbers = ""
    count.times do |position|
      numbers <<  word[position].ord % 32
    end
    return numbers
  end

end
