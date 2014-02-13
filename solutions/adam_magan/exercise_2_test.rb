require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_2_solutions'
#First I read the problem and understood it
#I wrote down in my own words what am supposed to do
#'replace the reverse method for string'
#Now I did it manually as normal
# 1.) I took each letter at the end and put it at the beginning
# now am going to translate it to computer speech
#take each letter at the end of a string
#put it at the beginning of a new string

class StringTest < Minitest::Test

  def test_it_reverses_a_short_string
    string = "ikky"
    assert_equal "ykki", string.reverse
  end

  def test_it_reverses_a_long_string
    string = "thisishow"
    assert_equal "wohsisiht", string.reverse
  end

  def test_it_reverses_a_string_with_space
    string = "this ishow"
    assert_equal "wohsi siht", string.reverse
  end
end
