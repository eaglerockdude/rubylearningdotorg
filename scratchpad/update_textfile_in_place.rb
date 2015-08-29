# Their patterns to update a text file.

# 1. Read into memory , modify it, and write it back out (if file not too big)

# 2. Create a temp file, and then rename it or use it as necessary.

# This program uses method 1.

print "Enter the filename to process : "

# filename = $stdin.gets.chomp

filename = 'txtfile.txt'

#readlines gets our file as an array: each element is a line of class string
file_array = IO.readlines(filename)
# update the 3rd line in the text fle from "word" to "inserted word"
file_array[2].gsub!('word', 'inserted word')
# save out modified text file:
file_save = file_array

puts "#{file_save}"

# open our file in write mode..and update it.

 File.open(filename, 'w') do |file|
  file.puts file_save
end
