def pass_in_a_string(some_string)
  puts "The object id of the string you sent is: #{some_string.object_id}."
  puts "The content is of the string you sent is: #{some_string.inspect}."
  puts "mutating the string with a new line:"
  some_string << "\n"
  puts "It now looks like this: #{some_string.inspect}."
  puts "Using a non-mutating move.."
  some_string = "i am assigned a new string"
  puts "It now looks like this: #{some_string.inspect}."
  puts "The object id of the string now is: #{some_string.object_id}. "
  puts "Now returning your string..."
  some_string
end

pass_this_in = "string"
puts "As assigned, my strings object_id is #{pass_this_in.object_id}"
puts "and has the value of #{pass_this_in}"
pass_in_a_string(pass_this_in)
puts "After the method call the object_id is: #{pass_this_in.object_id}."
puts "and the contents of that string is #{pass_this_in.inspect}"

puts "Escaped interpolation: \"\#{2 + 2}\"."