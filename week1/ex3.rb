# Write a Ruby program that displays how old I am, if I am 979000000 seconds old.
# Display the result as a floating point (decimal) number to two decimal places (for example, 17.23).

age_in_seconds =  979000000

# convert seconds to minutes  60sec/min
age_in_minutes = age_in_seconds/60.0
puts "Age in minutes is #{age_in_minutes}."

# convert minutes to hours  60min/hr
age_in_hours = age_in_minutes/60.0
puts "Age in hours is #{age_in_hours}."

# convert hours to days 24hr/day
age_in_days = age_in_hours/24.0
puts "Age in days is #{age_in_days}"

# convert days to years.
age_in_years = age_in_days/365.242
puts "Age in years is " + "%.2f" % age_in_years

puts "Age in years using sprintf: " + sprintf("%.2f", age_in_years)

