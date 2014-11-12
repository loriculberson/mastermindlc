require_relative 'display'
require_relative 'code_creator'
require_relative 'guess_evaluator'

class Game
  attr_reader :user_guess, 
              :user_guess_count, 
              :secret_code, 
              :display,
              :command, 
              :instream, 
              :outstream,
              :guess_evaluator

  def initialize(instream, outstream, display)
    @secret_code = CodeCreator.new.create
    @user_guess = ''
    @instream = instream
    @outstream = outstream
    @display = display
    @user_guess_count = 1
    @guess_evaluator = GuessEvaluator.new(user_guess, secret_code)
    
  end

  def start
    outstream.puts "Here is the secret code: #{secret_code}"
    outstream.puts display.let_game_begin
  
    until win? || quit?
      outstream.puts display.user_guess_count_message(user_guess_count)
      outstream.puts display.guess_request
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
      outstream.puts display.correct_guess

    when quit?
      outstream.puts display.quit

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
    end
  end

  def win?
    # puts "Here's win? in game class"
    # puts "User guess is #{@user_guess.inspect}"
    # puts "Secret code is #{secret_code.inspect}"
    # puts "win #{user_guess == secret_code}"
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
  