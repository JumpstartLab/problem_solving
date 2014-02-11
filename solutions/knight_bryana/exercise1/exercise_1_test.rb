require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_1_solution'

class UniqueStringTest < Minitest::Unit::TestCase

  def test_unique_letters_in_string
    u = UniqueString.new("hello")
    assert_equal ["h","e","l","o"], u.unique_letters
  end

  def test_non_unique_string
    u = UniqueString.new("hello")
    refute u.unique? 
  end

  def test_unique_string
    u = UniqueString.new("howdy")
    assert u.unique?
  end

end
