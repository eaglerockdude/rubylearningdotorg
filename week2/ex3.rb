# Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year,
# and then return true or false.
#
# With the help of this leap_year?()
# method calculate and display the number of minutes in a leap year (2000 and 2004)
# and the number of minutes in a non-leap year (1900 and 2005).
#
# Note: Every year whose number is divisible by four without a remainder is a leap year,
# excepting the full centuries, which, to be leap years, must be divisible by 400 without a remainder.
# If not so divisible they are common years. 1900, therefore, is not a leap year.


# Prompt user for year:



def is_leap_year?(year)
  if year % 400 == 0   #check for full century leap yr
    true
  elsif year % 100 == 0   # exception to the 400 rule
    false
  elsif year % 4 == 0    # its a leap year
    true
  else
    false       # else its not.
  end
end

prompt = '> '
puts "Please enter a year in format ccyy to check for leap year " , prompt
year = $stdin.gets.chomp
answer = is_leap_year?(year)
if answer == false
  puts "#{year} is not a leap year."
else
  puts "#{year} is a leap year."
end

puts "Print the number of minutes in our test years 1900, 2000, 2005, 2004:"

# Now calculate the number of minutes in the following leap and non-leap years.
# Non-leap 1900 & 2005
# leap 2000 and 2004
# constants for cals
MINUTES_LEAP_YEAR = 60 * 24 * 366
MINUTES_NON_LEAP_YEAR = 60 * 24 * 365

def commify(n)
  n.to_s =~ /([^\.]*)(\..*)?/
  int, dec = $1.reverse, $2 ? $2 : ""
  while int.gsub!(/(,|\.|^)(\d{3})(\d)/, '\1\2,\3')
  end
  int.reverse + dec
end

 def check_years
 [1900, 2005, 2000, 2004].each do |year|
   if is_leap_year?(year)
   puts "#{year} is a leap year and has #{commify(MINUTES_LEAP_YEAR * year)} days"
   else
   puts "#{year} is not a leap year and has #{commify(MINUTES_NON_LEAP_YEAR * year)} days"
   end
 end
 end

check_years