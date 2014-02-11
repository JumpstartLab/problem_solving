require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_1_solutions'
# I read the problem a few times until I understood it
# then I wrote down my assumptions about what am not suppose to use
# I wrote down in plain english two problem scenrios and their answer.
#   1.) Nathniel check each character and if there are duplicates
#       return false
#   2.) simon check each character and if there are no duplicates         return
#   This helped me spot patterns
#   false
# Now I thought about exactly what my interpreter needs to do replicate this
# behaviour and I wrote down each step

class StringTest < Minitest::Test

  def test_it_returns_false_when_characters_are_all_not_unique
    string = "nathaniel"
    refute string.all_unique_characters?
  end

  def test_it_returns_true_when_characters_are_unique
    string = "simon"
    assert string.all_unique_characters?
  end
end
