# ken mcfadden rubylearningdotnet gameboard

#  A game where the user tries to guess  the 3 consecutive numbers chosen by the computer  from a 7 cell row (array)
#  The numbers were chosen by the computer.
#  The user guess one number at a time.
#  Computer responds "hit" , "miss"  , or "end"
#  Number of guesses is tracked.
#  This is the gameboard class to be included.

class GameBoard

  attr_reader  :game_array, :chosen3,:name ,:guess_result

  def initialize(name)
    @name = name
    @chosen3 = []
    @right_guesses = []
    @wrong_guesses  = []
    @right_count  = 0
    @wrong_count  = 0
    @total_guess_count = 0
    @guess_result   = nil

    # seed the 7 number array
    @game_array = (0..6).to_a.shuffle

    # select 3 numbers
    @chosen3 = @game_array.first(3)
    # puts  "Game Array : #{game_array}"       for testing
    # puts "Chosen: #{chosen3}"                      for testing
  end

  def check_guess(guess)

    if guess.between?(0,6)

      @total_guess_count += 1

      if chosen3.include?(guess)

        if @right_guesses.include?(guess)
          puts "#{guess} is a number you have tried before FYI."
          guess_result = 'hit'
        else
          @right_guesses << guess
          @right_count += 1
          guess_result = 'hit'
        end

      else

        if @wrong_guesses.include?(guess)
          puts "#{guess} is a number you have tried before FYI."
          guess_result = "miss"
        else
          @wrong_guesses << guess
          @wrong_count += 1
          guess_result = "miss"
        end
      end

      if @right_count == 3
        puts "Congrats #{name}...you have guessed correctly the three numbers #{chosen3}"
        puts "It only took you #{@total_guess_count} guesses!"
        guess_result = "end"
      end

      guess_result

    else
      puts "Guess must be a number between 0 and 6..try again."
    end

  end

end

