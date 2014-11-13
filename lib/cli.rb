require_relative 'display'
require_relative 'game'
require 'colorize'

class CLI
  attr_reader :instream, :outstream, :command, :display

  def initialize(instream, outstream)
    @instream   = instream
    @outstream  = outstream
    @command    =""
    @display    = Display.new
    @game       = Game.new(instream, outstream, display)
  end

  def game_start
    outstream.puts display.welcome_message
   
   until quit?
    outstream.puts display.game_options
    @command = instream.gets.chomp.upcase 
    process_initial_commands
   end
    # outstream.puts display.quit
   end

  #READY TO PLACE IN CLI
  def process_initial_commands
    #in the game class
    case 
    when play?
      game = Game.new(instream, outstream, display)
      game.start
    
    when instructions?
       display.game_objective1 # give the user instructions
       display.game_objective2

    when quit? # run the loop below until the user says to quit
      outstream.puts display.quit.magenta

    else # for anything else
      outstream.puts display.invalid_option
    end
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
end

