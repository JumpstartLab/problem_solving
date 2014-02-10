gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/ex5.rb'

class ExerciseFiveTest < MiniTest::Test

  def test_does_not_replace_non_whitespace
    assert_equal 'tomato', 'tomato'.replace_whitespace('x')
  end

  def test_replaces_single_whitespace
    assert_equal "here%20one", "here one".replace_whitespace("%20")
  end

  def test_replaces_multiple_whitespace
    str = '1 2 3'
    assert_equal '1x2x3', str.replace_whitespace('x')
  end

end
