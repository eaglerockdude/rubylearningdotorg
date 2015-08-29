#  Write a program that processes the string
# s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time
# List each line seperately with Line 1:, Line 2:, etc.

# declare our variable
s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

# first lets get the lines into an array so we can perform an each on them.

#array1 = s.split("\n ").map(&:to_s)
array1 = s.split("\n")

puts array1.class  # confirming
puts array1.inspect

puts "Formatted output:"
array1.each.with_index(1) { |value, index| puts "Line #{index}: #{value}" }


