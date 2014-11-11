require_relative './code_creator'
require 'pry'

class UserInput
  attr_reader :user_guess, :secret_code, :selected

  def initialize (user_guess, secret_code=nil)
    @user_guess = user_guess.chars
    @secret_code = secret_code || CodeCreator.new.create
    @selected = []
    @user_guess_bank =[]
    @user_guess_count = 0
  end

  def valid_guess
    @selected = (@user_guess - @secret_code) 
    selected.count == 0 
  end

  def too_long?
    user_guess.length > 4
  end

  def too_short?
    user_guess.length < 4
  end

  def format_valid_user_guess #upcase the array
    user_guess = user_guess.map!(&:upcase)               
  end

  def guess_counter       #can not test yet
   user_guess_count+=1
  end

end


