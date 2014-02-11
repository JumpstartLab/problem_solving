class Reverse

  def self.execute(to_reverse)
    if to_reverse.length == 1
      to_reverse
    else
      to_reverse[-1] + execute(to_reverse[0..-2])
    end
  end

end

class String

  # lol confusing much?
  def reverse
     length == 1 ? self : self[-1] + self[0..-2].reverse
  end

end
