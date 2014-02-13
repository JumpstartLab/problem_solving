require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_5_solutions.rb'

class StringTest < Minitest::Test

  def test_it_replaces_white_space
    string = "replace this"
    assert_equal "replace%20this", string.replace_white_space
  end

  def test_it_replaces_white_space_on_different_string
    string = "repl this white"
    assert_equal "repl%20this%20white", string.replace_white_space
  end

end
