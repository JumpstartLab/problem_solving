require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_1_solutions'

class UniqueStringTest < Minitest::Test
  def test_unique_is_true_if_all_characters_are_unique
    my_string = "abcdefg"
    assert my_string.unique
  end

  def test_unique_is_false_if_there_are_repeated_characters
    my_string = "Hello, world!"
    refute my_string.unique
  end
end

class ReverseStringTest < Minitest::Test
  def test_rev_reverses_the_string
    my_string = "abcdefg"
    assert_equal "gfedcba", my_string.rev
  end
end

class RemoveDupesFromStringTest < Minitest::Test
  def test_remove_dupes_uniquifies_string
    my_string = "Hello, world!"
    assert_equal "Helo, wrd!", my_string.remove_dupes
  end
end

class AnagramTest < Minitest::Test
  def test_anagrams_checks_if_same_letters
    my_string = "margin"
    assert "margin".anagram?("arming")
    refute "margin".anagram?("bats in the belfy")
  end
end

class UrlifySpacesTest < Minitest::Test
  def test_urlify_changes_spaces_to_percent20s
    my_string = "www.my_website.com/blog posts"
    expected = "www.my_website.com/blog%20posts"
    result = my_string.urlify
    assert_equal expected, result
  end
end

class SubstringTest < Minitest::Test
  def test_is_substring
    my_string = "abracadabra"
    substring = "abra"
    non_substring = "arby"
    assert substring.is_substring?(my_string)
    refute non_substring.is_substring?(my_string)
  end

  def test_rotations
    my_string = "waterbottle"
    rotated = "erbottlewat"
    non_rotated = "abcdefg"
    assert rotated.rotation_of?(my_string)
    refute non_rotated.rotation_of?(my_string)
  end
end

#===============================================

class ImageRotationTest < Minitest::Test
  def test_parse_changes_string_data_to_array
    string_data = "0001 0010\n0011 0100"
    expected = [["0001", "0010"], ["0011", "0100"]]
    result = SquareMatrix.new(string_data).rows
    assert_equal expected, result
  end

  def test_rotate_moves_everything_90_degrees_clockwise
    string_data = "0001 0010\n0011 0100"
    expected = "0011 0001\n0100 0010"
    result = SquareMatrix.new(string_data).rotate_clockwise
    assert_equal expected, result
  end

  def test_rotate_moves_everything_90_degrees_counterclockwise
    string_data = "0001 0010\n0011 0100"
    expected = "0010 0100\n0001 0011"
    result = SquareMatrix.new(string_data).rotate_counterclockwise
    assert_equal expected, result
  end

  def test_it_complains_if_array_is_not_a_square
    string_data = "0001 0010\n0011"
    assert_raises(ArgumentError) { SquareMatrix.new(string_data) }
  end

  def test_a_bigger_array
    string_data = "0001 0010 0011\n0100 0101 0110\n0111 1000 1001"
    matrix = SquareMatrix.new(string_data)
    clockwise = "0111 0100 0001\n1000 0101 0010\n1001 0110 0011"
    assert_equal clockwise, matrix.rotate_clockwise
    counterclockwise = "0011 0110 1001\n0010 0101 1000\n0001 0100 0111"
    assert_equal counterclockwise, matrix.rotate_counterclockwise
  end
end

class RectangleMatrixText < Minitest::Test
  def test_it_sets_the_row_and_col_to_zero
    string_data = "a b c\n0 d e"
    matrix = RectangleMatrix.new(string_data)
    expected = [["0", "b", "c"], ["0", "0", "0"]]
    result = matrix.zeroed
    assert_equal expected, result
  end
end
