require_relative '../lib/game'
require_relative '../lib/display'
require_relative 'test_helper'
require 'stringio'

class GameTest < Minitest::Test

  
  def test_you_can_win
    secret_code = ["R", "R", "R", "R"]
    user_guess = "rrrr"

    assert secret_code == user_guess 
  end
end


  # def test_you_can_win
  #   instream = StringIO.new
  #   outstream = StringIO.new
  #   display = Display.new
  #   game = Game.new(instream, outstream, display)
  #   game.user_guess = "rrrr"
  #   game.secret_code = ["R", "R", "R", "R"]
  #   assert game.win?
  # end

# def test_the_game_starts
  #   game_test = GameTest.new("p", "Alright then, let's play!", "Here is the secret code: #{secret_code}")
  #   assert 
  # end


  # def test_the_game_timer_starts
  # end

  # def test_timer_ends
  # end

  # def test_user_guess_count_adds
  # end
    
# end