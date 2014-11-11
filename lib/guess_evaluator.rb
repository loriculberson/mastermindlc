class GuessEvaluator
  attr_reader :selected

  def initialize (user_guess, secret_code)
    @user_guess = user_guess.chars #.chars converted user_guess to an array
    @secret_code = secret_code
    @selected = []
    # @valid_guess_bank = []#stores each user_guesses array

  end

  def correct?
    @user_guess == @secret_code 
  end

  def number_of_correct_colors
    4-(@user_guess - @secret_code).length
  end

  def number_of_correct_positions
    @user_guess.zip(@secret_code).each do |u,s|
      @selected << u if u==s
    end
    
    @selected.length
  end

  
end

# def number_of_correct_positions
#     @user_guess.zip(@secret_code).each do |x|
#       @selected << x if x[0]==x[1]
#     end
    
    # @selected.length

# count each guess
# evaluate correct position



