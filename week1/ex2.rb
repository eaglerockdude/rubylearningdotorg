
# example of format

# Returns the string resulting from applying format_string to any additional arguments.
# Within the format string, any characters other than format sequences are copied to the result.
puts "%05d" % 123
puts "%04d" % 123
puts "%05i" % 123
puts "%07d" % 123
puts "%07d" % 123.3
puts "%07.0f" % 123
puts "%07.3f" % 123


# this string format is determining leading zeros and length of the output field.
# also the d indicates a decimal number.   Argument is 123.

