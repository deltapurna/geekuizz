require 'test_helper'

class PageQuizTest < ActiveSupport::TestCase
  test "#digit_number number 1 have 1 digit" do
    page_quiz = PageQuiz.new(total_digit: 1)
    assert_equal 1, page_quiz.digit_number
  end

  test "#digit_number number 552 have 3 digits" do
    page_quiz = PageQuiz.new(total_digit: 552)
    assert_equal 3, page_quiz.digit_number
  end

  test "#solution 1 total digit should have 1 page" do
    page_quiz = PageQuiz.new(total_digit: 1)
    assert_equal 1, page_quiz.solution
  end

  test "#solution 552 total digit should have 220 page" do
    page_quiz = PageQuiz.new(total_digit: 552)
    assert_equal 220, page_quiz.solution
  end
end
