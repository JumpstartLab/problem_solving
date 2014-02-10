gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/ex2.rb'

class ExerciseTwoTest < MiniTest::Test

  def test_it_reverses_a_string
    assert_equal 'rat', Reverse.execute('tar')
  end

  def test_it_overrides_reverse_method
    assert_equal 'tar', 'rat'.reverse
  end

end
