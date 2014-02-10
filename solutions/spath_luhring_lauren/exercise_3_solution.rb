class ExerciseThree

  attr_reader :string

  def initialize(string)
    @string = string
  end

  def dupe_removal
    @string.gsub(" ", "").squeeze("a-z")
  end

end



