gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'problem_1'

class Problem1Test < Minitest::Test
  def test_is_false_for_shorty
    algo = Algo.is_unique?("foo")
    refute algo
  end

  def test_is_true_for_shorty_with_no_dups
    algo = Algo.is_unique?("fo")
    assert algo
  end

  def test_it_false_for_longy_with_dups
    algo = Algo.is_unique?("qleqwer")
    refute algo
  end
end
