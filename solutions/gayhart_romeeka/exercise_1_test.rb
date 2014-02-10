require 'minitest/autorun'
require_relative 'exercise_1_solutions'

class ProblemOneTest < MiniTest::Unit::TestCase
  def test_it_handles_unique_cases
    assert_equal true, ProblemOne.all_characters_unique?("wonderful")
  end

  def test_it_handles_non_unique_cases
    assert_equal false, ProblemOne.all_characters_unique?("wownderful")
  end

  def test_no_additional_data_structures_not_unique
    assert_equal false, ProblemOneChallenge.all_characters_unique?("wownderful")
    assert_equal false, ProblemOneChallenge.all_characters_unique?("carrier")
  end

  def test_no_additional_data_structures_unique
    assert_equal true, ProblemOneChallenge.all_characters_unique?("wonderful")
  end
end

class ProblemTwoTest < MiniTest::Unit::TestCase
  def test_reverse_without_reverse
    assert_equal "maerd", ProblemTwo.reverse_without_reverse("dream")
  end

  def test_reverse_without_reverse_with_non_unique_characters
    assert_equal "reirrac", ProblemTwo.reverse_without_reverse("carrier")
  end
end

class ProblemThreeTest < MiniTest::Unit::TestCase
  def test_remove_duplicates
    assert_equal "caie", ProblemThree.remove_duplicates("carrier")
  end

  def test_remove_duplicate_when_string_entirely_duplicated
    assert_equal "", ProblemThree.remove_duplicates("mmmmm")
  end
end

class ProblemFourTest < MiniTest::Unit::TestCase
  def test_are_anagrams
    assert_equal true, ProblemFour.are_anagrams?("cats", "stac")
  end

  def test_not_anagrams
    assert_equal false, ProblemFour.are_anagrams?("faskfue", "fnasueuhag")
  end
end

class ProblemFiveTest < MiniTest::Unit::TestCase
  def test_http_formatter
    assert_equal "all%20the%20news", ProblemFive.http_formatter("all the news")
  end

  def test_http_formatter_with_many_spaces
    assert_equal "%20%20", ProblemFive.http_formatter("  ")
  end
end
