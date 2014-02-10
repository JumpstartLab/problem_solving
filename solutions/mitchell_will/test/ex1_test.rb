gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/ex1.rb'

class ExerciseOneTest < MiniTest::Test

  def test_it_returns_the_uniq_chars_substring
    assert_equal Unique.find('abcabcabc'), 'abc'
  end

  def test_it_returns_counts_of_chars
    assert_equal Unique.counts('abc'), {'a' => 1, 'b' => 1, 'c' => 1}
  end

end
