gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'pixel'

class PixelTest < Minitest::Test

  def test_it_takes_and_returns_color
    pixel = Pixel.new("12345")
    assert_equal("12345", pixel.color)
  end

end
