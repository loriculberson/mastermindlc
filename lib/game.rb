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
              :outstream

  def initialize(instream, outstream, display)
    @secret_code = CodeCreator.new.create
    @user_guess = ""
    @instream = instream
    @outstream = outstream
    @display = display
    @user_guess_count = 1
  end

  def start
    outstream.puts "Here is the secret code: #{secret_code}"
    outstream.puts display.guess_request
    @user_guess = instream.gets.strip.upcase
    until win? || quit?
      guess_evaluator = GuessEvaluator.new(user_guess, secret_code)
      if guess_evaluator.correct?
        outstream.puts display.correct_guess
      else
        num_colors = guess_evaluator.number_of_correct_colors
        num_of_positions = guess_evaluator.number_of_correct_positions
        outstream.puts display.color_position_message(num_colors, num_of_positions)
        outstream.puts display.user_guess_count_message(user_guess_count)
        outstream.puts display.guess_request
        @user_guess = instream.gets.strip.upcase
        @user_guess_count += 1
        # game_process
      end
    end
  end

  def win?
    user_guess == secret_code
  end

  def quit?
    user_guess == "Q" || user_guess == "QUIT"
  end
end 

#   def game_process
#     case
#     when quit?
#       outstream.display.quit
#     when invalid_entry?
#       outstream.display.invalid_user_input_message
#     # when
      
#     # end

#   end

  

#   def user_guess_count
#     user_guess_count+=
#   end

#   # def invalid_entry? #??????
# end







# #   @input = gets.chomp.upcase
# #   guess_evaluator = GuessEvaluator.new(@input, @secret_code)
# #   if guess_evaluator.correct?
# # end

# # def game_flow(user_input)

# #   case user_input
# #   when "P"
# #     puts "Lets Play!!"
# #   when "I"
# #     puts "do something"
# #   when "Q"
# #     puts "do something else"
# #   else
# #     puts "Invalid option: Choose One of the following (p), (i), (q)"
# #     get_user_input
# #   end

