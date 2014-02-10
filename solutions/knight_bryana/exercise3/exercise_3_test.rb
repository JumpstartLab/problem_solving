
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_3_solution'

class RemoveDuplicatesTest < Minitest::Unit::TestCase

  def test_find_duplicates
    r = RemoveDuplicates.new
    assert_equal "helo", r.unique("hello")
  end
end
