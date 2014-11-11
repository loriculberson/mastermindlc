gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess_evaluator'


class GuessEvaluatorTest < Minitest::Test

  def test_user_guess_is_correct
    guess_evaluator = GuessEvaluator.new("RGBY", ["R", "G", "B", "Y"])

    assert guess_evaluator.correct?
  end

  def test_user_guess_is_correct
    guess_evaluator = GuessEvaluator.new("RGBY", ["B", "G", "R", "Y"])

    refute guess_evaluator.correct?
  end

  def test_when_user_has_3_colors_right
    guess_evaluator = GuessEvaluator.new("RRRG", ["R", "R", "R", "R"])

    assert_equal 3, guess_evaluator.number_of_correct_colors
  end

  def test_when_user_has_2_colors_right
    guess_evaluator = GuessEvaluator.new("RRGG", ["R", "R", "R", "R"])

    assert_equal 2, guess_evaluator.number_of_correct_colors
  end

  def test_when_user_has_3_positions_right
    guess_evaluator = GuessEvaluator.new("RRRG", ["R", "R", "R", "R"])

    assert_equal 3, guess_evaluator.number_of_correct_positions
  end

  def test_when_user_has_2_positions_right
    guess_evaluator = GuessEvaluator.new("RRGG", ["R", "R", "R", "R"])

    assert_equal 2, guess_evaluator.number_of_correct_positions
  end

  def test_when_user_has_1_position_right
    guess_evaluator = GuessEvaluator.new("GGGG", ["R", "R", "G", "R"])

    assert_equal 1, guess_evaluator.number_of_correct_positions
  end
end

