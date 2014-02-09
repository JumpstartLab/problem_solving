gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string_reverser'

class StringReverserTest < Minitest::Test

  def test_it_goes
    reverser = StringReverser.go("f")
    assert_equal("f", reverser)
  end
end
