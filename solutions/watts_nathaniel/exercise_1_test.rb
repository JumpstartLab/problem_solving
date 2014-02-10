require 'minitest/autorun'
require 'minitest/pride'
require './exercise_1_solutions'

class StringTest < MiniTest::Test

  def test_it_determines_if_all_uniq_characters_from_non_uniq_example
    string = "bees"
    refute string.all_unique_chars?
  end

  def test_it_determines_if_all_uniq_characters_from_uniq_example
    string = "jump"
    assert string.all_unique_chars?
  end

  def test_it_reverses_itself
    string = "squirrel"
    assert_equal string.reverse, string.alt_reverse
  end

  def test_it_removes_duplicate_chars
    string = "squirrels"
    expected = string.chars.uniq.join
    assert_equal expected, string.remove_dups
  end

  def test_it_evaluates_an_anagram
    string = "army"
    assert string.anagram_of?("mary")
  end

  def test_it_evaluates_non_anagrams
    string = "army"
    refute string.anagram_of?("armies")
  end

  def test_it_replaces_spaces_with_url_spaces
    string = "this is the end of the world"
    expected = string.gsub(' ', '%20')
    assert_equal expected, string.url_spacify
  end

  def test_it_replaces_spaces_with_url_spaces2
    string = "this is the end of the     world    "
    expected = string.gsub(' ', '%20')
    assert_equal expected, string.url_spacify
  end
end

class NeoTest < MiniTest::Test
  def test_it_exists
    assert Neo
  end

  def test_it_knows_the_size_of_the_matrix
    matrix = [
      [1, 2],
      [3, 4]
    ]
    n = Neo.new(matrix)
    assert_equal 2, n.size
  end

  def test_it_can_return_an_array_of_matrix_cells
    matrix = [
      [1, 2],
      [3, 4]
    ]
    n = Neo.new(matrix)
    assert_equal [1, 2, 3, 4], n.cells
  end

  def test_it_can_take_a_row_convert_to_column
    matrix = [
      [1, 2],
      [3, 4]
    ]
    # [
    #  [3, 1],
    #  [4, 2]
    # ]
    n = Neo.new(matrix)
    column = [1, 2]
    rotated = n.rotate_ninety
    assert_equal column, [rotated[0][1], rotated[1][1]]
  end

end
