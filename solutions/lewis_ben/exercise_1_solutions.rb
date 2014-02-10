class String

  def unique
    remove_dupes == self
  end

  def remove_dupes
    collector = ""
    self.each do |c|
      collector += c unless collector.index(c)
    end
    collector
  end

  def rev
    collector = ""
    i = self.length
    while i >= 0
      collector += self[i].to_s
      i -= 1
    end
    collector
  end

  def anagram?(other)
    return false if self.length != other.length
    is_substring?(other)
  end

  def urlify
    collector = self

    collector.each_with_index do |c, i|
      if c == " "
        beginning = collector.slice(0, i)
        ending = collector.slice(i, collector.length - i)
        collector = beginning + "%20" + ending[1..-1]
      end
    end

    collector
  end

  def is_substring?(other)
    other.each do |c|
      self.each do |d|
        return false if other.index(d).nil?
      end
    end
    true
  end

  def rotation_of?(other)
    self.length.times do |i|
      temp = self [i..-1] + self[0..i-1]
      return true if temp == other
    end
    false
  end

  def each(&block)
    i = 0
    while i < self.length
      yield self[i]
      i += 1
    end
  end

  def each_with_index(&block)
    i = 0
    while i < self.length
      yield self[i], i
      i += 1
    end
  end

end

class Matrix
  attr_reader :data

  def initialize(string_data)
    @data = string_data
  end

  def rows
    parse(data)
  end

  def columns
    columns = []
    rows.length.times do |i|
      columns << find_column(rows, i)
    end
    columns
  end

  def parse(string)
    split = string.split("\n").map {|row| row.split(" ")}
  end

  private

  def find_column(rows, i)
    rows.map { |row| row[i] }
  end

  def stringify(row_or_col)
    row_or_col.map { |elem| elem.join(" ") }.join("\n")
  end

end

class SquareMatrix < Matrix
  def initialize(string_data)
    super
    raise ArgumentError if rows.any?{|row| row.length != rows.length}
  end

  def rotate_clockwise
    rotation = columns.map do |col|
      col.reverse
    end
    stringify(rotation)
  end

  def rotate_counterclockwise
    stringify(columns.reverse)
  end
end

class RectangleMatrix < Matrix
  def zeroed
    zeroed_rows.each_with_index.map do |row, i|
      row[i] = "0" if zeroed_rows.any?{ |other| other[i] == "0" }
      row
    end
  end

  private

  def zeroed_rows
    rows.map do |row|
      if row.any?{|e| e == "0"}
        Array.new(row.length, "0")
      else
        row
      end
    end
  end

end