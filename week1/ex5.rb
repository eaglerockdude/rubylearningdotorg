# The following program prints the value of the variable. Why?

my_string = 'Hello Ruby World'

puts "object_id of my_string start: #{my_string.object_id}"

def my_string
'Hello World'
puts "object_id of my_string inside of method #{my_string.object_id}"
end

my_string

puts "object_id of my_string #{my_string.object_id}"
puts my_string

puts Symbol.all_symbols.include?(:my_string)



# my guess is that the GLOBAL name my_string overrides or takes precedence over