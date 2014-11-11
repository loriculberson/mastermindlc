require_relative 'display'

class Game
  attr_reader :user_guess, :user_guess_count, :secret_code, :display,
    :command, :instream, :outstream

  def initialize(instream, outstream, display)
    @secret_code = []
    @user_guess = ""
    @instream = instream
    @outstream = outstream
    @command = ""
    @display = display
    @user_guess_count = 0
  end

  def start
    outstream.display.guess_request
    until win? || quit?
      outstream.display.user_guess_count_message
      

    end
  end

  def win?
    user_guess == secret_code
  end

  def quit?
    command == "Q" || command == "QUIT"
  end
end







#   @input = gets.chomp.upcase
#   guess_evaluator = GuessEvaluator.new(@input, @secret_code)
#   if guess_evaluator.correct?
# end

# def game_flow(user_input)

#   case user_input
#   when "P"
#     puts "Lets Play!!"
#   when "I"
#     puts "do something"
#   when "Q"
#     puts "do something else"
#   else
#     puts "Invalid option: Choose One of the following (p), (i), (q)"
#     get_user_input
#   end












