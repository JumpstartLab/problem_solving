class Replacement

  def join_and_substitute(string)
    string.split.join("%20")
  end

end
