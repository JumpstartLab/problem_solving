gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'exercise_1_solution'

# Implement an algorithm to determine if a string has all unique characters without using `uniq`.
# What if you can not use additional data structures?

class ExerciseOneTest < Minitest::Test

  def test_there_is_input
    input = ExerciseOne.new("hello")
    assert_equal "hello", input.string
  end

  def test_can_return_total_count_of_letters
    input = ExerciseOne.new("hello")
    assert_equal 5, input.length
  end

  def test_can_return_count_of_unique_letters
    input = ExerciseOne.new("hello")
    assert_equal 4, input.unique_count
  end

  def test_letter_uniqueness
    input = ExerciseOne.new("hello")
    if input.length == input.unique_count
      puts "all letters in the string are unique."
    else
      puts "the letters in this string are not unique."
    end
  end

  # def test_can_get_individual_letters
  #   input = ExerciseOne.new("hello")
  #   assert_equal ["h","e","l","l","o"], input.split(//)
  # end

  # break the string apart ("")
  # determine the number of unique letters (4)
  # give each letter the value of 1
  # loop through and count how many times each letter is represented
  # compare the number of representations with the number of actual letters
  # should be a count of 4 unique letters, but 5 letters represented since there is one dupe.


end
