gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './exercise_1_solutions'

class UniqCharsTest < Minitest::Test

  def test_it_can_find_the_number_of_chars
    a = UniqChars.new("hello")
    assert_equal 5, a.count
  end

end
