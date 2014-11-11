require_relative 'display'
require_relative 'game'

class CLI
  attr_reader :instream, :outstream, :command, :display

  def initialize(instream, outstream)
    @instream   = instream
    @outstream  = outstream
    @command    =""
    @display    = Display.new
    # @timer = Timer.new
    @game       = Game.new(instream, outstream, display)
  end

  def play?
    command == "P" || command == "PLAY"
  end

  def instructions?
     command == "I" || command == "INSTRUCTIONS"
  end

  def quit?
    command == "Q" || command == "QUIT"
  end

  def game_start
    Display.welcome_message
    Display.game_options
    get_user_input
    game_flow
  end

  def get_user_input
    @command = instream.gets.chomp.upcase
  end

  def game_flow
    until quit? # run the loop below until the user says to quit
      if instructions? # check if the user wants instructions
        Display.game_objective # give the user instructions
        Display.want_to_play
        # add prompt user for new input***!!!
        @command = instream.gets.chomp.upcase # get a new input from the user
      
      elsif play? # check if the user wants to play -- if play?
        Display.let_game_begin
        Display.guess_request

        @command = instream.gets.chomp.upcase
        # add start the game (# start the timer -- @timer.start)
        @game.start
      else # for anything else
        Display.invalid_option
        Display.prompt_for_answer
        @command = instream.gets.chomp.upcase
      end
    end
  Display.quit
  end
  

end

CLI.new($stdin, $stdout).game_start
