#Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit.
#This method should return the temperature in degrees Celsius.

def temp_converter(input_type, temp)

  input = input_type.upcase
  if input == "C"
     # F=(9/5)C +32
    ((9 * temp)/5) + 32
  elsif input == "F"
    #  C = (5/9) * (F -32)
    (5 * (temp - 32))/9
  else
    puts "Invalid temperature type passed. Temp return set to ZERO. Must be 'C' or 'F'"
    return 0
  end

end

# mainline
# call first to convert from Celsius to Fahrenheit, and then the opposite.

puts "100 degrees Celsius converted to Fahrenheit is :  " + sprintf("%.2f",temp_converter('X',100.0) )

puts "100 degrees Celsius converted to Fahrenheit is :  " + sprintf("%.2f",temp_converter('C',100.0) )

puts "100 degrees Fahrenheit converted to Celsis is :  " + sprintf("%.2f",temp_converter('F',100.0) )

