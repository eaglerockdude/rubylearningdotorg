# ken mcfadden rubylearningdotnet gameboard

#  A game where the user tries to guess  the 3 consecutive numbers chosen by the computer  from a 7 cell row (array)
#  The numbers were chosen by the computer.
#  The user guess one number at a time.
#  Computer responds "hit" , "miss"  , or "end"
#  Number of guesses is tracked.

# RUN NOTES : This needs to run from your root folder so it will find the gameboard class to require.

$LOAD_PATH.unshift( File.join( File.dirname(__FILE__), '' ) )     # from stackoverflow!

require 'gameboard'

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
