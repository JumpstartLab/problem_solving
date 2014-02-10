class ReverseString

  def reverse(word)
    a = []
    letters = word.split("")
    word.length.times do 
      a << letters.pop
    end
    a.join
  end

end
