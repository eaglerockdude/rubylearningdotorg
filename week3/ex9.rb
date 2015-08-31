# ken mcfadden rubylearning.net

#  Exercise9. Given a string, write a program to reverse the word order (rather than character order).
# The String and Array classes provide methods which will be very helpful for solving this exercise.

da_string = "I am a silly string wondering where I possible could be doing here."

# get string as an array

da_array = da_string.split

p da_array

da_array.reverse!

puts da_array.join(' ')




