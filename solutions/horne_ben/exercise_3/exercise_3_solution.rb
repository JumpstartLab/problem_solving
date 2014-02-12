class String

  def substitute
    a = self
    a.length.times do |n|
      a[n] = '%20' if a[n] == ' '
    end
    a[-1] = '%20' if a[-1] == ' '
    a
  end

end
