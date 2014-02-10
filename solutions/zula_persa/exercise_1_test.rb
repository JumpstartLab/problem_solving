gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './exercise_1_solutions'

class UniqCharsTest < Minitest::Test

  def test_it_can_find_the_number_of_chars
    word = UniqChars.new("hello")
    assert_equal 5, word.count
  end

  def test_it_can_cycle_through_index_of_chars
    word = UniqChars.new("hello")
    assert_equal "8 5 12 12 15", word.word_numbers
  end

  def test_it_can_cycle_through_index_of_characters_with_differnt_duplication
    word = UniqChars.new("Grinning")
    assert_equal "7 18 9 14 14 9 14 7", word.word_numbers
  end
end
