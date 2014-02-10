gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/ex3.rb'

class ExerciseThreeTest < MiniTest::Test

  def test_it_removes_duplicates
    assert_equal 'the cand', 'the cat and the hat'.remove_duplicates
  end

  def test_it_removes_other_duplicates
    assert_equal 'bob'.remove_duplicates, 'bo'
  end

  def test_it_removes_still_more_duplicates
    assert_equal 'abcabcabcabc'.remove_duplicates, 'abc'
  end

  def test_it_knows_its_counts
    assert_equal 'abc'.counts, {'a' => 1, "b" => 1, "c" => 1}
  end

end
