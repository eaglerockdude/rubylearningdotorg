# ken mcfadden rubylearning.net wk4
#
# Exercise5. Difficulty level: MEDIUM Write a one-line Ruby script that displays on the screen all the files
# in the current folder as well as everything in all its sub folders, in sorted order.
#  Make use of Dir.glob method as follows:
#  Dir.glob('**/*')
# Name this program inventory.rb. Create an inventory file by typing the following at the command prompt:
#  ruby inventory.rb > old-inventory.txt
# After a few days, when some files would have been added / deleted from this folder, run the program again like:
#  ruby inventory.rb > new-inventory.txt
# Now, write another Ruby script that displays on the screen all the files that have been added in this folder
# since the time the old-inventory.txt was created.

filelist = Dir.glob('**/*')
$last_mod = Hash.new

puts "Some general file information on  the following file list #{filelist}:"
puts "\n"
filelist.each do |f|

  puts "FILE: #{f}"
  puts "Is file #{f} a directory? #{FileTest.directory?(f)}"
  puts "\n"
  puts "Is file #{f} a file?  #{FileTest.file?(f)}"
  puts "\n"

  filestatobj = File::Stat.new(f)
  puts "#{f}  directory was  last changed at  #{ filestatobj.ctime}  "

  $last_mod[f] = filestatobj.ctime #save create info into a hash for later

  puts "\n"
  puts "#{f} was last accessed   #{ filestatobj.atime}  "
  puts "\n\n"
  puts " All information from file.inspect  : #{filestatobj.inspect}"
  puts "\n"

end

puts "Files added after old-inventory.txt was created : "

puts "\n"

old_inventory_create = $last_mod.fetch('old-inventory.txt')
puts "old-inventory.txt create Time was  :  #{old_inventory_create}"
puts "\n"
puts "Files created after that Time were  : "

$last_mod.each { |key, value|
  if (value > old_inventory_create) then
    puts "The file #{key} was created on  #{value}"
  end }


