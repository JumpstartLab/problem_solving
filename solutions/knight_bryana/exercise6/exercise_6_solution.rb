class MatrixChange
  attr_accessor :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def row_with_zero
    matrix.select { |array| array.include?(0) }.flatten
  end

  def zero_index
    row_with_zero.index(0)
  end

  def column_change
    matrix.each do |subarray|
      subarray[zero_index] = 0
    end
  end

  def changed_matrix
    index = matrix.index(matrix.select { |array| array.include?(0) }.flatten)
    column_change[index] = [0,0,0]
    column_change
  end

end
