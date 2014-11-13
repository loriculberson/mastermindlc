require_relative 'display'
require_relative 'code_creator'
require_relative 'guess_evaluator'
require_relative 'game_timer'

require 'colorize'

class Game
  attr_reader :user_guess, 
              :user_guess_count, 
              :secret_code, 
              :display,
              :command, 
              :instream, 
              :outstream,
              :guess_evaluator,
              :timer

            

  def initialize(instream, outstream, display)
    @secret_code = CodeCreator.new.create
    @user_guess = ''
    @instream = instream
    @outstream = outstream
    @display = display
    @user_guess_count = 1
    @guess_evaluator = GuessEvaluator.new(user_guess, secret_code)
    @timer = GameTimer.new
  
  end


  def start
    outstream.puts "Here is the secret code: #{secret_code} "
    timer.start_the_timer
    outstream.puts display.let_game_begin
    outstream.puts display.hard_return.blue
  
    until win? || quit?
      outstream.puts display.user_guess_count_message(user_guess_count)
      outstream.puts display.guess_request
      outstream.puts display.prompt_for_answer
      @user_guess = instream.gets.strip.upcase
      @guess_evaluator = GuessEvaluator.new(user_guess, secret_code)
      process_game_turn
    end
  end

  def process_game_turn
    #what the program executes

    # puts "** process_game_turn : User Guess is #{@guess_evaluator.user_guess}"
    case
    when win?
      timer.readable_time
      outstream.puts display.correct_guess.red
      outstream.puts display.final_user_guess_count(@user_guess_count,timer.readable_time)
    

    when quit?
      outstream.puts "Curious about the secret code? Shhh...it was:#{secret_code}"
      outstream.puts display.quit.magenta

    when too_long?
      outstream.puts display.too_long

    when too_short?
      outstream.puts display.too_short

    when invalid_entry?
      outstream.puts display.invalid_user_input_message
    else
      @user_guess_count += 1
      colors = guess_evaluator.number_of_correct_colors
      positions = guess_evaluator.number_of_correct_positions
      outstream.puts display.color_position_message(colors, positions)
      outstream.puts display.hard_return
    end
  end

  def win?
    user_guess.chars == secret_code
  end

  def quit?
    user_guess == "Q" || user_guess == "QUIT"
  end

  def too_long?
    user_guess.length > 4
  end

  def too_short?
    user_guess.length < 4
  end

  def invalid_entry?
    # puts "** inside invalid_entry?"
    # @user_guess - @selected !== 0
    # guess_evaluator.number_of_correct_colors
    user_guess.chars.any? { |color| !["r", "b", "y", "g"].include?(color.downcase) }
  end
end
  