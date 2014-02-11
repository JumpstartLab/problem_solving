require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_3_solutions'
#Again I tried to understand what I was being asked to do
#create a new unique method for string class
#what do I know about this problem, well am suppose to return all
#of the unique characters within a string
#In order for me to do this manually its quite easy
# 1.) write down each character in a string below the original 
# string if and only if you have not already written it down.
# 2.) original_string is "simon"
# 3.) new_string is      "simon"
# 4.) orginal string is "adam"
# 5.) new_string is     "adm"
class StringTest < Minitest::Test

  def test_it_returns_unique_characters_in_a_string
    string = "hallo"
    assert_equal 'halo', string.unique
  end

  def test_it_returns_unique_characters_in_a_different_string
    string = "thoughtbot"
    assert_equal 'thougb', string.unique
  end
end
