gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_3_solution'

# 3. Design an algorithm and write code to remove the duplicate characters in a string without using `.uniq`

class ExerciseThreeTest < Minitest::Test

  def test_there_is_input
    input = ExerciseThree.new("hello yellow")
    assert_equal "hello yellow", input.string
  end

  def test_can_remove_dupes
    input = ExerciseThree.new("hello yellow")
    assert_equal "helo yw", input.dupe_removal
  end

end
