class StringOutputs



  def welcome
    "Welcome To Mastermind!\n
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
    "Instructions:
    You will be generated a code of four colors.
    Possible colors are (r)ed, (g)reen, (b)lue and (y)ellow.
    Your code is four colors long.
    Would you like to (p)lay or (q)uit?"
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

  def too_long
    "Your guess is too long! Only four letters please."
  end

  def too_short
    "Your guess is too short! Four letters please!"
  end

  def goodbye
    "Goodbye!"
  end

end
