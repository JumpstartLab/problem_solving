class RemoveDuplicates

  def unique(word)
    letters = word.split("")
    letters.each_with_object(Hash.new(0)) do |letter, uniques| 
      uniques[letter] = "hi"
    end.keys.join
  end

end
