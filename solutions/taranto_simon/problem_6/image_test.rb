gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'image'

class ImageTest < Minitest::Test

  def test_it_takes_and_returns_pixel_colors
    image = Image.new([
                        ["1", "2"],
                        ["3", "4"]
                      ])
    assert_equal(["1", "2", "3", "4"], image.pixels.flatten.map(&:color))
  end

  def test_it_can_be_rotated_90_CW
    image = Image.new([
                        ["1", "2"],
                        ["3", "4"]
                      ])
    rotated = image.rotate_cw
    assert_equal(["3", "1", "4", "2"], rotated.pixels.flatten.map(&:color))
  end

end
