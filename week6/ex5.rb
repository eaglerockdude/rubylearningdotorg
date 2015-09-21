# ken mcfadden rubylearningdotnet

# The load_game method is responsible for comparing the timestamp within the file to the time the filesystem has associated with the file.
#  Write the load_game(file) method.

class Game

  def initialize
    @score = 0
  end

  def save_game(file)
    score  = 1000
    open(file, "w") do |f|
      f.puts(score)
      f.puts(Time.new.to_i)
    end

  rescue Exception => msg
    puts msg.message
    puts msg.backtrace.inspect
  end

  def load_game(file)

    # get our file data...time is 2nd line.
    open(file) do |f|
      file_score = f.readline.to_i
      file_time_int  = f.readline.to_i
      file_time = Time.at(file_time_int)
      difference = (File.stat(file).mtime - file_time).abs
      if difference > 1
        puts  "Cheating is not allowed.."
        puts "Your saved score is #{file_score}."
      end

    end

  rescue Exception => msg
    puts msg.message
    puts msg.backtrace.inspect
  end

end

g = Game.new

g.save_game("game.sav")

sleep(2)

g.load_game("game.sav")

# Now let's cheat by increasing our score to 9000

open("game.sav", "r+b") { |f| f.write("9") }

g.load_game("game.sav")