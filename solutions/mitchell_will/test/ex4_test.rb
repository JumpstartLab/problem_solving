gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/ex4.rb'

class ExerciseFourTest < MiniTest::Test

  def test_it_finds_small_anagrams
    assert 'who'.anagram?('how')
  end

  def test_it_returns_false_when_non_anagram
     refute 'boar'.anagram?('what')
  end

  def test_it_returns_false_on_empty
    refute 'bob'.anagram?
  end

end
