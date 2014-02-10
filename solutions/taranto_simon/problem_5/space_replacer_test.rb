gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string_replacer'

class StringReplacerTest < Minitest::Test

  def test_replaces_a_single_space
    replaced = StringReplacer.do_it(" ")
    assert_equal("%20", replaced)
  end

  def test_replaces_strings_in_long_word
    replaced = StringReplacer.do_it("i want chicken waffles")
    assert_equal("i%20want%20chicken%20waffles", replaced)
  end

end
