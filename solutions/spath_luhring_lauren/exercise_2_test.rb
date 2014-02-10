gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_2_solution'

# 2. Write code to reverse a string without using `.reverse`

class ExerciseTwoTest < Minitest::Test

  def test_there_is_input
    input = ExerciseTwo.new("candy")
    assert_equal "candy", input.string
  end

  def test_can_break_apart_input
    input = ExerciseTwo.new("candy")
    assert_equal ["c", "a", "n", "d", "y"], input.break
  end

  def test_can_reverse_input
    input = ExerciseTwo.new("candy")
    assert_equal "ydnac", input.reverse_order
  end

  # get a string
  # break it into individual letters
  # return the letters in reverse order without using .reverse
  # nbd

end
