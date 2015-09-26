# ken mcfadden rubylearningdotnet week7
#  Exercise4. Write a method last_modified(file) that takes a file name and displays something like this:
# file was last modified 125.873605469919 days ago. Use the Time class

# will the game.sav file from week 6 exercise 2 and also a file from my scratch lib.

require 'date'
require_relative File.dirname(__FILE__) + '/../../scratchpad/units_from_seconds'

class LastModified

  def last_modified(file)

    file_changed_time  = File.stat(file).ctime   #ctime is the time the directory info about the file was changed....
    the_time_now = Time.now

    # Time objects are in a number of seconds since Jan 1st 1970 EPOCH internally so we need to calculate days / secs per day.
    days_since_change = Seconds.new(the_time_now - file_changed_time).days
    puts "#{file} was last modified #{days_since_change} days ago."
  end

end

lm = LastModified.new

files = Dir.glob('*.*')
files.each do |f|
  lm.last_modified(f)
end

