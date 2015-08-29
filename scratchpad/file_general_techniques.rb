# Basic patterns of reading files with FILE class.

# 1. Create a file object first.
#    - if the file does not exist, an exception will be raised.

f = File.new('txtfile.txt')

# 2. Once u have the file object, you can read the file.

# READ : reads the whole file as a string.  not used too much as its inefficient.

data = f.read
p data
f.close

# READLINES: reads whole file at once as an array of lines.
f = File.new('txtfile.txt')
puts "f.readlines"
p f.readlines
f.close

# READLINE and GETS : both read a line, but on EOF GETS returns nil while READLINE throws an error.
f = File.new('txtfile.txt')
puts "f.readline"
p f.readline
puts "f.gets"
p f.gets
f.close

# File objects are ENUMERABLE which brings EACH into the equation.
# we use EACH or EACH_LINE which are synonyms for the same thing.
f = File.new('txtfile.txt')
f.each {|line| puts "Next line using each: #{line}" }
f.rewind
f.each_line {|line| puts "Next line using each_line: #{line}" }

f.rewind # this puts point back to BOf so we don't have to close and reopen the file.

# u can also read by character or byte... yada yada

p f.getc

p f.getbyte

f.rewind

# seek and repoman....as we have seen with f.rewind.
puts "Where is the pointer right now via f.pos"
puts f.pos
f.getc
puts f.pos

f.pos = 23

puts"U can assign a position via pos..how about f.pos = 23:"
puts f.pos

puts "using IO:SEEK"
f.seek(20, IO::SEEK_SET)
p f.pos
f.seek(15, IO::SEEK_CUR)
p f.pos
f.seek(-10, IO::SEEK_END)
p f.pos


# you can also read thru FILE CLASS methods

# p full_text = File.read("txtfile.txt")

# p lines_of_text = File.readlines("txtfile.txt")

# Writing to files
# Writing to a file involves using puts, print, or write on a File object that’s opened in
# write or append mode. Write mode is indicated by w as the second argument to new. In
# this mode, the file is created (assuming you have permission to create it); if it existed
#  already, the old version is overwritten. In append mode (indicated by a), whatever you
# write to the file is appended to what’s already there. If the file doesn’t exist yet, opening
# it in append mode creates it.

f = File.new("data.out", "w")
f.puts "David A. Black, Rubyist"
f.close
f = File.new("data.out", "a")
f.puts "Test of the append mode"
f.close


# Using blocks to scope file operations
# Using File.new to create a File object has the disadvantage that you end up having
# to close the file yourself. Ruby provides an alternate way to open files that puts
# the housekeeping task of closing the file in the hands of Ruby: File.open with a
# code block.
# If you call File.open with a block, the block receives the File object as its single
# argument. You use that File object inside the block. When the block ends, the File
# object is automatically closed.

# Note : the block provides the file object and closes the file but nothing else.
#         you need to provide the "loop" to process the file.
File.open("names.txt") do |f|
  while record = f.gets        #gets returns nil at eof to end loop.
    name, nationality, instrument, dates = record.chomp.split('|')
    puts "#{name} (#{dates}), who was #{nationality},played #{instrument}. "
  end
end
puts "Using EACH:"
# Files are enumerable, so the WHILE above can be replaced with each.
# ruby stops iteration when it hits EOF
File.open("names.txt") do |f|
  f.each do |record|
    name, nationality, instrument, dates = record.chomp.split('|')
    puts "#{name} (#{dates}), who was #{nationality},played #{instrument}. "
  end
end


# WRITING to a file examples:

# Notes "puts" puts in the \n for you.
# 'w' creates the file if it does not exist, else it overwrites it.

# open and write to a file with ruby
open('myfile.out', 'w') { |f|
  f.puts "Dude, where's my car?."
}

# when you use << you need to add the \n yourself
open('myfile2.out', 'w') { |f|
  f << "Four score\n"
  f << "and seven\n"
  f << "years ago\n"
}






