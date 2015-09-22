# time

require 'date'

# old C language time
t = Time.new

puts "Time.new date #{t}"

puts t.year

#newer datetime

puts"DateTime.new date : #{ DateTime::now}"

# DATE class provides just a date without the time unlike DATETIME

# we use a DateTime object to get a date from it.

justdate = Date.jd(DateTime.now.jd)

puts "Just a Date #{justdate}"


