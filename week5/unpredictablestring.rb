# ken mcfadden rubylearning.net

# write a class that is a subclass of string that returns a random string from an argument.

class UnString

  def initialize
    puts "Initializing...not much in this case"
  end

  def scramble(string_in)
    puts "String in was : #{string_in}"
    puts "String out is : #{string_in.split("").shuffle.join}"   #convert to array and use shuffle.
  end

end

string_scrambler  = UnString.new

string_scrambler.scramble("Julie Andrews once appeared topless in a movie.  These are a few of my favorite things.")

