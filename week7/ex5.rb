# ken mcfadden rubylearningdotnet week 7

# Exercise5. Let's say you want to run some Ruby code (such as a call to a shell command) repeatedly at a certain interval
# (for example, once every five seconds for one minute).
# Write a method for this. Do not use Thread class for now.
# Hint: yield and sleep methods may be required.

# This method will run the code block(via yield) every n seconds.    We use 2 hear as we are microwave conditioned.

def interval_runner(seconds)

 loop do
    yield  #run block to log time passing
    sleep(seconds)
  end
end


interval_runner(5) do
  puts "I am still running...the time is now approximately  #{Time.now.strftime("%X")}"
end