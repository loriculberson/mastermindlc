selected = []

group1 = ["a", "q", "e", "d"]
group2 = ["a", "q", "c", "e"]

group1.zip(group2).each do |x|
  selected << x if x[0]==x[1]
end
 
 puts selected.length

 GuessEvaluatorTest
 # def test_user_input_are_valid_characters
  #    guess_evaluator = GuessEvaluator.newuser_guess)

  #   refute "rby!", guess_evaluator.valid_guess?
  # end

  # def test_user_input_are_valid_characters
  #    guess_evaluator = GuessEvaluator.new(user_guess)

  #   refute "rby3", guess_evaluator.valid_guess?
  # end


  # def test_user_input_length_is_four_characters
  #    guess_evaluator = GuessEvaluator.new(user_guess)

  #    assert_equal 4, guess_evaluator.length
  # end

  # def test_stores_valid_guesses_in_valid_guess_bank
  #   guess_evaluator = GuessEvaluator.new(user_guess)

  #    assert_equal 4, guess_evaluator.valid_guess?
  # end


GuessEvaluator

  def valid_guess?(user_guess)
    true  
  end
    # if @user_guess = 


    #some combo of rgby makes valid_guess =true
      # @valid_guess_bank<< user_guess
      #then valid_guess_bank.count = # of user_guesses
    # else #=false, puts "valid responses only include rgby. Try again"

 

  # def length
  #   @user_guess.length == 4
  # end

