require 'pry'

class MatrixZeroer

  attr_reader :orig_matrix
  attr_accessor :output_matrix

  def initialize(matrix)
    @orig_matrix = matrix
    @output_matrix = @orig_matrix
  end

  def set_zero
    @zeroes = find_zeroes
    return @output_matrix if @zeroes.empty?
    set_columns!
    set_rows!
    @output_matrix
  end

  private

  def set_columns!
    columns = zero_columns
    orig_matrix.each_with_index do |row, r|
      row.each_with_index do |_, c|
        if columns.include?(c)
          orig_matrix[r][c] = 0
        end
      end
    end
  end

  def set_rows!
    rows = zero_rows
    orig_matrix.each_with_index do |row, r|
      if rows.include?(r)
        row.each_with_index do |element, c|
          orig_matrix[r][c] = 0
        end
      end
    end
  end

  def zero_rows
    @zeroes ||= find_zeroes
    rows = @zeroes.map do |row|
      row[0]
    end
    rows
  end

  def zero_columns
    @zeroes ||= find_zeroes
    columns = @zeroes.map do |column|
      column[1]
    end
    columns
  end

  def find_zeroes
    zero_locations = []
    orig_matrix.each_with_index do |row, r|
      row.each_with_index do |cell, c|
        if orig_matrix[r][c] == 0
          zero_locations << [r, c]
        end
      end
    end
    zero_locations
  end

end
