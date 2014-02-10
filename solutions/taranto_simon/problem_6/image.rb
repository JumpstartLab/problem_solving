require 'pry'
require_relative 'pixel'

class Image

  attr_accessor :pixels

  def initialize(pixel_colors)
    @pixel_colors = pixel_colors
    @pixels = make_pixels(pixel_colors)
  end

  def new_image
    @new_image ||= Image.new(@pixel_colors)
  end

  def rotate_cw
    n = pixels.length
    pixels.each_with_index do |row, r|
      row.each_with_index do |col, c|
        new_image.pixels[r+c-r][c+n-1-r-c] = pixels[r][c]
      end
    end
    new_image
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
