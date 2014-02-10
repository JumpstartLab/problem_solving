gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/ex7.rb'

class ExerciseSevenTest < MiniTest::Test

  def test_1x1_unchanged
    matrix = [[1]]
    assert_equal matrix, MatrixScanner.set_zeros(matrix)
  end

  def test_2x2_unchanged_when_no_zeros
    matrix = [[1,2],[1,2]]
    assert_equal matrix, MatrixScanner.set_zeros(matrix)
  end

  def test_2x2_rows_set_correctly
    matrix = [[0,2],[1,2]]
    MatrixScanner.set_zeros(matrix)
    assert_equal [0,0], matrix.first
    refute_equal [0,0], matrix.last
  end

  def test_2x2_cols_set_correctly
    matrix = [[0,2],[1,2]]
    assert_equal [[0,0],[0,2]], MatrixScanner.set_zeros(matrix)
  end

  def test_finds_zero_cords
    matrix = [[0,2],[1,2]]
    assert_equal [[0,0]], MatrixScanner.zero_cords(matrix)
    matrix = [[0,2],[1,0]]
    assert_equal [[0,0],[1,1]], MatrixScanner.zero_cords(matrix)
  end

end
