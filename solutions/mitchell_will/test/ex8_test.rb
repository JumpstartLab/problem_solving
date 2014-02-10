gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/ex8.rb'

class ExerciseEightTest < MiniTest::Test

  def test_can_find_simple_substring
    assert 'cart'.is_substring?('cart')
  end

  def test_can_find_smaller
    assert 'cart'.is_substring?('art')
  end

  def test_not_always_true
    refute 'blob'.is_substring?('prat')
  end

  def test_can_find_rotation
    assert 'waterbottle'.is_rotation?('bottlewater')
  end

  def test_doesnt_find_non_rotations
    refute 'bottledwater'.is_rotation?('watered')
  end

end
