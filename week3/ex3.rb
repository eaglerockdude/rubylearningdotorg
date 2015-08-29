# Exercise3.    ken mcfadden
#  Make use of the class Dir for the following -Display your current working directory.

  puts "Working directory using Dir.pwd : #{Dir.pwd}"
  puts "Working directory using Dir.getwd : #{Dir.getwd}"

  # save current dir for later use
    cur_dir_save = Dir.pwd

  puts "List all files using glob #{Dir.glob('*')} "

# Create a new directory tmp under your working directory.
  puts "removing tmp directory via rmdir if it exists. . ."
  Dir.rmdir('tmp') if Dir.exist?('tmp')

  puts "Make a new directory called tmp . . ."
  Dir.mkdir('tmp')

  puts "Now list directories from current. . ."
  Dir.open(Dir.pwd).each do |name|
  if File.directory? name
    puts name
  end
  end

# Change your working directory to tmp
# Display your current working directory.
  puts "Change directory to tmp. . ."
  if Dir.exist?('tmp')
    Dir.chdir('tmp')
  end
  puts "Working directory using Dir.getwd : #{Dir.getwd}"

# Go back to your original directory.
  puts "returning to current directory...."
  Dir.chdir(cur_dir_save)
  puts "Working directory is now.. #{Dir.getwd}"

# Delete the tmp directory.
  puts "removing tmp directory via rmdir if it exists. . ."
  Dir.rmdir('tmp') if Dir.exist?('tmp')


