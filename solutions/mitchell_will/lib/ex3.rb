class String

  def remove_duplicates
    self.counts.keys.join
  end

  def counts
    self.chars.each_with_object(Hash.new(0)) do |char, counts|
      counts[char] += 1
    end
  end

end
