class Display

#delete puts and add to def start
  def welcome_message 
   print "\e[2J\e[f"

    puts"                                                   WELCOME TO                                                    "

    puts'   .___  ___.      ___           _______..___________. _______ .______      .___  ___.  __  .__   __.  _______   '
    puts'   |   \/   |     /   \         /       ||           ||   ____||   _  \     |   \/   | |  | |  \ |  | |       \  '
    puts'   |  \  /  |    /  ^  \       |   (----``---|  |----`|  |__   |  |_)  |    |  \  /  | |  | |   \|  | |  .--.  | '
    puts'   |  |\/|  |   /  /_\  \       \   \        |  |     |   __|  |      /     |  |\/|  | |  | |  . `  | |  |  |  | '
    puts'   |  |  |  |  /  _____  \  .----)   |       |  |     |  |____ |  |\  \----.|  |  |  | |  | |  |\   | |   --   | '
    puts'   |__|  |__| /__/     \__\ |_______/        |__|     |_______|| _| `._____||__|  |__| |__| |__| \__| |_______/  '
    puts "\n"                                                                                                            
  end

  def game_objective1
    puts "MasterMind is a code-breaking game. Your job is to guess a secret 4 color code.\nAfter each attempt, I'll give you a hint by telling you how many colors \nand positions you have correct.\n".blue 
  end

  def game_objective2
    puts "Your color choices are: [R]ed, [B]lue, [G]reen and [Y]ellow. Colors may be used more than once. \nHere are samples of valid guesses: RBYG, BBYR and YGBR. However...RYG, YYG& and GBG6 are INVALID guesses!\n"
  end

  def basic_instructions
    "Your job is to guess a secret 4 color code. Colors include: [R]ed, [B]lue, [G]reen and [Y]ellow. Keep in mind, colors may be repeated more than once. \nValid guesses: RBYG, BBYR and YGBR. Invalid guesses: RYG, YYG& and GBG6. Good luck!\nFor more detailed instructions, press [I]."
  end

  def game_options
    "\nTo PLAY, press [P]. To read the INSTRUCTIONS press [I]. To QUIT press [Q]"
  end

  def prompt_for_answer
     ">> "
  end

  def hard_return
    "-------------------------------------------------------------------------"
  end

  def invalid_option
     "Invalid entry."
  end

  def let_game_begin
     "Alright then, let's play!\n"
  end

  def want_to_play 
     "If you would you like to play, press [P]. To quit, press [Q]:\n"
  end

  def guess_request
     "What is your guess?"
  end 

  def invalid_user_input_message
    "Uh-oh! Your guess is not valid. Please try again.\nRemember, no spaces and you may only select R, G, B or Y."
  end

  def color_position_message(colors, positions)
     "Nice guess! You have #{colors} color(s) selected correctly\nand #{positions} of them are in the correct position. Try again!"
  end

  def too_long
     "Hmmm....you entered too many characters. Try again."
  end

  def too_short
   "Sorry! Not enough characters. Try again."
  end

  def user_guess_count_message(user_guess_count)
   "Guess #: #{user_guess_count}.\n".green
  end

  def correct_guess
   "Way to go! You are CORRECT! I want a rematch!"
  end

  def quit
   "Goodbye and have a great day!!!"
  end

  def game_over
   "Wow! Good game!"
  end

  def play_again
   "To play again press [P], otherwise press [Q]."
  end

  def final_user_guess_count(user_guess_count, e_time)
    "It took you a total of #{user_guess_count} guess(es) and #{e_time} minutes."
  end

end