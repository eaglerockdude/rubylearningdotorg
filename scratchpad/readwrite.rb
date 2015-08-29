# p027readwrite.rb
# Open and read from a text file
# Note that since a block is given, file will
# automatically be closed when the block terminates
File.open('txt1.txt', 'r') do |f1|
  while line = f1.gets
    puts line
    puts line.class
  end
end

# Create a new file and write to it
File.open('txt1.txt', 'w') do |f2|
  f2.puts "Test of putting to same file!"
end