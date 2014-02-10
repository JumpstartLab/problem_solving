require_relative 'pixel'

class Image

  attr_reader :pixels

  def initialize(pixel_colors)
    @pixels = make_pixels(pixel_colors)
  end

  private

  def make_pixels(colors)
    colors.map do |row|
      row.map do |color|
        Pixel.new(color)
      end
    end
  end

end
