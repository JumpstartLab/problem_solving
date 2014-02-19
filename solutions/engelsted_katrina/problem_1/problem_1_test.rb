gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'problem_1'

class Problem1Test < Minitest::Test
  def test_is_false_for_shorty
    stringer = Stringer.is_unique?("hippo")
    refute stringer
  end

  def test_is_true_for_not_duplicate
    skip
    stringer = Stringer.is_unique?("great")
    assert stringer
  end

  def test_it_false_for_duplicate_letters
    skip
    stringer = Stringer.is_unique?("groovy")
    refute stringer
  end
ends


# 1. Implement an algorithm to determine if a string has all unique characters without using `uniq`. What if you can not use additional data structures?
# 
