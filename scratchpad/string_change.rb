# what happens if you pass a string to a method and change that string:

def changeit(in_string)
  puts "Value and Objectid of string parm before change #{in_string} #{in_string.object_id}"
  in_string = "I am changed."
  puts "Value and Objectid of string parm after  change  #{in_string} #{in_string.object_id}"
  in_string << "Dude"
end

string_orig = "I am the original string"
changeit(string_orig)

puts "Value and Objectid of string after method call #{string_orig} #{string_orig.object_id}"

puts "Value and Objectid of string after method call #{string_orig} #{string_orig.object_id}"

string_orig << "Dude"

puts "Value and Objectid of string after method call #{string_orig} #{string_orig.object_id}"


