class String

  def esrever
    reversed = ''
    self.length.times do |n|
      reversed[n] = self[-1 * (n+1)]
    end
    reversed
  end

end
