# ken mcfadden rubylearningdotnet gameboard

#  A game where the user tries to guess  the 3 consecutive numbers chosen by the computer  from a 7 cell row (array)
#  The numbers were chosen by the computer.
#  The user guess one number at a time.
#  Computer responds "hit" , "miss"  , or "end"
#  Number of guesses is tracked.

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
    puts  "Game Array : #{game_array}"
    puts "Chosen: #{chosen3}"
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

is_alive = true
player = ''


while player ==  ''
  puts "Welcome to the number guessing game."
  puts '(Enter the word "kill"  at anytime to quite the game)'
  puts ""
  puts "First, let's enter your name to start:"
  player  = gets.chomp
  if player == ''
    puts "No player name entered. Please enter your player name."
  else

  end
end

if player != 'kill'
  dagame = GameBoard.new(player)
  puts "The computer has chosen 3 numbers at random between 0 and 6."
  puts ''
else
  is_alive = false
  puts "You have quit."
end

while is_alive

  puts "Enter your guesses one number at a time.  Any number from 0 - 6 is valid...type 'kill' to end the game."

  guess  = gets.chomp

  if guess =~ (/\d/)

    guess_numeric  = guess.to_i

    result  = dagame.check_guess(guess_numeric)

    if result == "end"
      puts "Game over."
      is_alive = false
    elsif result == 'miss'
      puts "Nope..try again.  Your guess was #{guess}."
    elsif result == 'hit'
      puts "Hit...you got one!  Your guess was #{guess}."
    end
  else
    if guess == 'kill'
      puts "You have requested to end the game...thanks for playing."
    else
      puts "Invalid prompt entry.  You must enter a number!"
    end
  end
end
