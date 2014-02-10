gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'matrix_zeroer'

class MatrixZeroerTest < Minitest::Test

  def test_it_returns_cleaned
    z = MatrixZeroer.new([[1,1],[1,0]])
    cleaned = z.set_zero
    assert_equal([[1,0], [0,0]], cleaned)
  end

  def test_it_returns_unmutated_if_no_zeroes
    z = MatrixZeroer.new([[1,1],[1,1]])
    cleaned = z.set_zero
    assert_equal([[1,1], [1,1]], cleaned)
  end

end
