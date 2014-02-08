require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_1_solutions'

class UniqueStringTest < Minitest::Test

  def test_unique_is_true_if_all_characters_are_unique
    my_string = "abcdefg"
    assert my_string.unique
  end

  def test_unique_is_false_if_there_are_repeated_characters
    my_string = "Hello, world!"
    refute my_string.unique
  end
end

class ReverseStringTest < Minitest::Test
  def test_rev_reverses_the_string
    my_string = "abcdefg"
    assert_equal "gfedcba", my_string.rev
  end
end

class RemovDupesFromStringTest < Minitest::Test
  def test_remove_dupes_uniquifies_string
    my_string = "Hello, world!"
    assert_equal "Helo, wrd!", my_string.remove_dupes
  end
end

class AnagramTest < Minitest::Test
  def test_anagrams_checks_if_same_letters
    my_string = "margin"
    assert "margin".anagram?("arming")
    refute "margin".anagram?("bats in the belfy")
  end
end