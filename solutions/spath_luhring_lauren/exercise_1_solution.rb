class ExerciseOne

  attr_reader :string

  def initialize(string)
    @string = string
  end

  def length
    @string.length
  end

  def unique_count
    @string.squeeze.length
  end

  # def split
  #   ["h", "e", "l", "l", "o"]
  # end

end
