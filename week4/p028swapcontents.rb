# kenmcfadden rubylearning.net wk4
#
# Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the following.
# Take two text files say A and B. The program should swap the contents of A and B.
# That is after the program is executed, A should contain B's contents and B should contains A's contents.

# Logic:
# 1. Open file A..read  contents and save
# 2. Open file B read contents and save.
# 3. Open A and write contents of saved  B
# 4. Open B and write contents of save A

filea_save = File.open('filea.txt', "r+") { |file| file.read }

fileb_save = File.open('fileb.txt', "r+") { |file| file.read }

puts "swapping begin....."
  # Put contents of B in A
File.open('filea.txt', 'w') do |f|
  puts "writing B to A"
  f.puts fileb_save
end

  # Put contents of A to B
File.open('fileb.txt', 'w') do |f|
  puts "writing A to B"
  f.puts filea_save
end

puts "swapping done..."



