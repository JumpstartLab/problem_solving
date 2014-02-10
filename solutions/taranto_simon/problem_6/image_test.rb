gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'image'

class ImageTest < Minitest::Test

  def test_it_works
    image = Image.new([
                        ["1", "2"],
                        ["3", "4"]
                      ])
    assert_equal(image.pixels.flatten.map(&:color), ["1", "2", "3", "4"])
  end

end
