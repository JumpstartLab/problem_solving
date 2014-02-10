require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_5_solution'

class ReplacementTest < Minitest::Unit::TestCase

  def test_it_joins_with_percent_twenty
    r = Replacement.new
    assert_equal "this%20is%20a%20string", r.join_and_substitute("this is a string")
  end

end
