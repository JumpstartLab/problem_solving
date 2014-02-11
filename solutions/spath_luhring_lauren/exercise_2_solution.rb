class ExerciseTwo

  attr_reader :string

  def initialize(string)
    @string = string
  end

  def break
    @string.split("")
  end

  def backwards_array
    # backwards_array = []
    # self.break.each do |letter|
    #   backwards_array << letter
    # end
    # backwards_array.reverse
    self.break.reverse
  end

  def reverse_order
    backwards_array.join
  end

end
