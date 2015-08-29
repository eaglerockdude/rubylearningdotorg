def check_for_leaps
  [1900, 2005, 2000, 2004].each do |year|
    if is_leap_year?(year)
      puts "#{year} is a leap year."
    else
      puts "#{year} is not a leap year."
    end

  end
end

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

check_for_leaps