class StringOutputs



  def welcome
    "Welcome To Mastermind!\n
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
    "These are the instructions, play or quit?"
  end

  def win
    "You win!"
  end

  def begin_game
    "You have been generated a code, guess please"
  end

  def wrong_guess
    "'#{input.upcase}' has #{@ce_num} correct elements with #{@cp_num} in the correct position, guess again!"
  end

  def goodbye
    "Goodbye!"
  end

end
