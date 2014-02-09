gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string_reverser'

class StringReverserTest < Minitest::Test

  def test_it_goes
    reverser = StringReverser.go("f")
    assert_equal("f", reverser)
  end

  def test_it_reverses_two_chars
    reverser = StringReverser.go("fo")
    assert_equal("of", reverser)
  end

  def test_it_reverses_large_word
    reverser = StringReverser.go("foobarbaz")
    assert_equal("zabraboof", reverser)
  end
end
