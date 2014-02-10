gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/ex6.rb'

class ExerciseSixTest < MiniTest::Test

  def test_rotates_1x1
    matrix = [[1]]
    assert_equal matrix, MatrixRotator.left(matrix)
    assert_equal matrix, MatrixRotator.right(matrix)
  end

  def test_rotates_2x2
    matrix = [[1,1],[2,2]]
    assert_equal [[1,2],[1,2]], MatrixRotator.left(matrix)
    assert_equal [[2,1],[2,1]], MatrixRotator.right(matrix)
  end

  def test_can_return_columns
    matrix = [[1,1],[2,2]]
    assert_equal [[1,2], [1,2]], MatrixRotator.cols(matrix)
  end

  def test_can_return_large_columns
    matrix = [[1,2,3],[1,2,3],[1,2,3]]
    assert_equal [[1,1,1],[2,2,2],[3,3,3]], MatrixRotator.cols(matrix)
  end

  def test_can_rotate_large_matrix
    matrix = [[1,2,3],[1,2,3],[1,2,3]]
    assert_equal [[3,3,3],[2,2,2],[1,1,1]], MatrixRotator.left(matrix)
    assert_equal [[1,1,1],[2,2,2],[3,3,3]], MatrixRotator.right(matrix)
  end

end
