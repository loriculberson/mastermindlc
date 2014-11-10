gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess_evaluator'


class GuessEvaluatorTest < Minitest::Test
  
  
  def test_user_input_is_valid_guess
    guess_evaluator = GuessEvaluator.new("RGBY", ["R", "G", "B", "Y"])

    guess_evaluator.valid_guess
    assert_equal 0, guess_evaluator.selected.count
  end

  # def test_user_input_is_not_valid_guess
  #    guess_evaluator = GuessEvaluator.new(user_guess)

  #   refute 0, guess_evaluator.valid_guess
  # end

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


# code_creator = CodeCreator.new.create
# guess = GuessEvaluator.new(user_input, code_creator.secret_code)
# if guess.correct?
#   puts 'Yay, you won!'
# else
#   puts 'try again, you got x right and y in the right position'
# end