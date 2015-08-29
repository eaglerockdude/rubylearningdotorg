# Exercise 1 ken mcfadden

# explain the output of this code:

def method
  a = 50
  puts a
  puts "object ID inside method #{a.object_id}"
  puts self
end

a = 10
method

puts a
puts "object ID  outside method #{a.object_id}"



# inside of "method" there is a different scope vs outside, so even thought the variables have
# the same name, they are not the same as we can see by their object IDs.

