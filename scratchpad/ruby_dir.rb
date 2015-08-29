# some handy commands for listing files and directories.

Dir.glob("*") # => Lists all files in the current directory and all subdirectories
Dir.glob("*.jpg") #=> Lists only jpg files in the current directory
Dir.glob(["*.jpg", "*.png"]) #=> Lists both jpg and png files in the current directory
Dir["*.jpg","*.png"] #=> The short form of dir.glob.  It's equivalent to Dir.glob([])

# using patterns
Dir.glob("ruby.ex?") #=> ruby.exe
Dir.glob("*.[a-z][a-z]") #=> Returns anything with a 2 digit extension
Dir.glob("*.{exe,dll}")  #=> Returns exe and dll files

# loop
Dir.foreach(".") do |file|
  puts file
end

#Getting and Changing Directories


