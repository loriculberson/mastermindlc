require_relative '../lib/user_input'
require_relative '../lib/code_creator'
require_relative 'test_helper'

class UserInputTest < Minitest::Test


  def test_user_input_has_valid_characters
      user_input = UserInput.new("RGBY", ["R", "G", "B", "Y"])
      user_input.valid_guess
      assert_equal 0, user_input.selected.count
  end

  def test_user_input_does_not_have_invalid_characters
     user_input = UserInput.new("R+BY", ["R", "G", "B", "Y"])

    user_input.valid_guess
    refute_equal 0, user_input.selected.count
  end

  def test_if_user_input_length_is_more_than_four_characters
    user_input = UserInput.new("RYBBY", ["R", "G", "B", "Y"])

    assert user_input.too_long?
  end

  def test_if_user_input_length_is_less_than_four_characters
    user_input = UserInput.new("RY", ["R", "G", "B", "Y"])

    assert user_input.too_short?
  end


end
