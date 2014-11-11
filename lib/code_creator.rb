class CodeCreator
  attr_reader :secret_code

  def initialize
    @secret_code = []
    @code_letters = ["R", "Y", "B", "G"]
  end                   


  def create
    4.times do
      @secret_code << @code_letters.shuffle[0]
     
    end
    @secret_code


  end

end

#creates randomly generated code to be
#handed back to the game flow class then to the guess checker 


