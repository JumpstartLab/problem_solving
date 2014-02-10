class StringReplacer

  def self.do_it(string)
    string.each_char.inject("") do |url, char|
      url << (char == " " ? "%20" : char)
    end
  end

end
