class Display

#delete puts and add to def start
  def welcome_message 
   puts "WELCOME TO MASTERMIND!"
  end

  def game_objective
    puts "MasterMind is a code-breaking game. Your job is to guess a secret 4 color code.\nAfter each attempt, I'll give you a hint by telling you how \nmany colors and positions you have correct. Your color choices are: \n[R]ed, [B]lue, [G]reen and [Y]ellow. Colors may be used more than once. \n\nHere are samples of valid guesses: RBYG, BBYR and YGBR. However...RYG, YYG& and GBG6 are INVALID guesses!\n" 
  end

  def basic_instructions
    puts "Your job is to guess a secret 4 color code. Colors include \n[R]ed, [B]lue, [G]reen and [Y]ellow. Keep in mind, colors may be repeated more than once. \nValid guesses: RBYG, BBYR and YGBR. Invalid guesses: RYG, YYG& and GBG6. Good luck!\nFor more detailed instructions, press [I]."
  end

  def game_options
   puts "\nTo play, press [P]\nTo read the instructions press [I]\nTo quit press [Q]"
  end

  def prompt_for_answer
    puts ">>Enter response:"
  end

  def invalid_option
    puts "You may only enter [P]lay, [I]nstructions or [Quit]."
  end

  def let_game_begin
    puts "Alright then, let's play!\n"
  end

  def want_to_play 
    puts "If you would you like to play, press [P]. To quit, press [Q]:\n"
  end

  def guess_request
    puts "What is your 4 color guess?"
  end 

  def invalid_user_input_message
   puts "Uh-oh! Your guess is not valid. Please try again.\nRemember, no spaces and you may only select R, G, B or Y."
  end

  def color_position_message(colors, positions)
    puts "Nice guess. You have #{colors} colors selected correctly\nand #{positions} of them are in the correct position.\nTry again!"
  end

  def user_guess_count_message(user_guess_count)
    puts "Guess #: #{user_guess_count}.\n"
  end

  def correct_guess
    puts "Way to go! You are CORRECT! I want a rematch!"
  end

  def quit
    puts "Goodbye and have a great day!!!"
  end

  def game_over
    puts "Wow! Good game!"
  end

  def play_again
    puts "To play again press [P], otherwise press [Q]."
  end


end 

