require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_6_solution'

class MatrixChangeTest < Minitest::Test
  attr_reader :m, :matrix

  def setup
    @matrix = [[1, 2, 3], [4, 5, 6], [2, 1, 0]] 
    @m = MatrixChange.new(matrix)
  end

  def test_it_finds_subarray_containing_zero
    assert_equal [2,1,0], m.row_with_zero
  end

  def test_it_finds_the_index_of_the_zero
    assert_equal 2, m.zero_index
  end

  def test_it_changes_number_in_zero_index_to_zero
    result = [[1, 2, 0], [4, 5, 0], [2, 1, 0]]
    assert_equal result, m.column_change
  end

  def test_it_changed_matrix_to_have_appropriate_zeros
    result = [[1, 2, 0], [4, 5, 0], [0, 0, 0]]
    assert_equal result, m.changed_matrix
  end

  def test_different_matrix
    matrix2 = [[1, 2, 3], [4, 0, 6], [2, 1, 5]]
    n = MatrixChange.new(matrix2)
    result = [[1, 0, 3], [0, 0, 0], [2, 0, 5]]
    assert_equal result, n.changed_matrix
  end

end
