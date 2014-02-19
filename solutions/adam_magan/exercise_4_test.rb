require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_4_solutions'

class StringTest < Minitest::Test

  def test_it_returns_false_when_not_anagram
    not_anagram = "sterling"
    refute not_anagram.anagram?("silly")
  end

  def test_it_returns_true_when_anagram
    anagram = "adam"
    assert anagram.anagram?("mada")
  end

end
