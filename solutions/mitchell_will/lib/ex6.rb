class MatrixRotator

  def self.left(matrix)
    cols(matrix).reverse
  end

  def self.right(matrix)
    left left left matrix
  end

  def self.cols(matrix)
    columns = matrix.length.times.collect { Array.new(matrix.length)}
    matrix.each_with_index do |row, i|
      row.each_with_index do |cell, j|
        columns[j][i] = cell
      end
    end
    columns
  end

end
