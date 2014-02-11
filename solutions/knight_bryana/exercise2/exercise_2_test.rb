require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_2_solution'

class ReverseStringTest < Minitest::Unit::TestCase

  def test_reverse_string
    r = ReverseString.new
    assert_equal "anayrb", r.reverse("bryana")
  end


end
