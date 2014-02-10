gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'anagram'

class AnagramTest < Minitest::Test

  def test_it_returns_true_for_simple_case
    anagram = Anagram.is_it?("foo", "ofo")
    assert anagram
  end

  def test_it_returns_false_for_simple_non_match
    anagram = Anagram.is_it?("foo", "ofa")
    refute anagram
  end

  def test_it_returns_true_for_long_word
    anagram = Anagram.is_it?("foobarbaz", "bazbarfoo")
    assert anagram
  end

end
