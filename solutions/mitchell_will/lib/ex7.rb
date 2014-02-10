class MatrixScanner

  def self.set_zeros(matrix)
    zero_cords(matrix).each do |cord|
      set_row_to_zero(cord[0], matrix)
      set_col_to_zero(cord[1], matrix)
    end
    matrix
  end

  def self.zero_cords(matrix)
    cords = []
    matrix.each_with_index do |row, i|
      row.each_with_index do |cell, j|
        cords << [i,j] if cell == 0
      end
    end
    cords
  end

  def self.set_row_to_zero(row_index, matrix)
    matrix[row_index] = Array.new(matrix.first.length){0}
  end

  def self.set_col_to_zero(col_index, matrix)
    matrix.each_with_index do |row, i|
      row.each_index do |j|
        matrix[i][j] = 0 if col_index == j
      end
    end
  end

end
