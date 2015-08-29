# Exercise 2 ken mcfadden
# read a text file and insert the text "inserted word"
# file looks something like this
# text text text text text
# text text text text text
# text text word text text
# text text text text text
# text text text text text

# change that file to look like this:
# text text text text text
# text text text text text
# text text inserted word  text text
# text text text text text
# text text text text text


# inputfile name will be ex2file.txt

print "Enter filename to process : "
filename = $stdin.gets.chomp   # get our filename

#readlines gets our file as an array: each element is a line of class string
file_array = IO.readlines(filename)

# update the 3rd line in the text fle from "word" to "inserted word"
file_array[2].gsub!('word', 'inserted word')

# save out modified text file:
file_save = file_array

# open our file in write mode..and update it.
File.open(filename, 'w') do |file|
  file.puts file_save
end


