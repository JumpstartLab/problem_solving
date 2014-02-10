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

  def test_it_can_be_rotated_90_CW_for_2x2
    image = Image.new([
                        ["1", "2"],
                        ["3", "4"]
                      ])
    rotated = image.rotate_cw
    assert_equal(["3", "1", "4", "2"], rotated.pixels.flatten.map(&:color))
  end

  def test_it_can_be_rotated_90_CW_for_3x3
    image = Image.new([
                        ["1", "2", "3"],
                        ["4", "5", "6"],
                        ["7", "8", "9"]
                      ])
    rotated = image.rotate_cw
    assert_equal(["7", "4", "1", "8", "5", "2", "9", "6", "3"], rotated.pixels.flatten.map(&:color))
  end

  def test_it_can_be_rotated_90_CW_for_4x4
    image = Image.new([
                        ["1", "2", "3", "4"],
                        ["5", "6", "7", "8"],
                        ["9", "10", "11", "12"],
                        ["13", "14", "15", "16"]
                      ])
    rotated = image.rotate_cw
    assert_equal(["13", "9", "5", "1", "14", "10", "6", "2", "15", "11", "7", "3", "16", "12", "8", "4"], rotated.pixels.flatten.map(&:color))
  end

end
