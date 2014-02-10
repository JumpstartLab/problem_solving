class String

  # def unique?
  #   return false if edge_cases
  #   self.chars.each do |char|
  #     # next if char == ' '
  #     result = self.split(char)
  #     if result.count > 2
  #       return false
  #     end
  #   end
  # end

  def unique?
    self.chars.sort.each_cons(2) do |one, two|
      if one == two
        return false
      end
    end
    true
  end

  def edge_cases
    self[0] == self[-1] || self[-2] == self[-1]
  end

end
