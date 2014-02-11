gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'uniquer'

class UniquerTest < Minitest::Test

  def test_it_makes_short_word_unique
    algo = Uniquer.make("foo")
    assert_equal("fo", algo)
  end

  def test_it_returns_unmutated_word_if_already_unique
    algo = Uniquer.make("fo")
    assert_equal("fo", algo)
  end

  def test_it_makes_long_word_unique
    algo = Uniquer.make("foooooobarrrrrrr")
    assert_equal("fobar", algo)
  end

end
