
print "Type the filename to process : "

filename = $stdin.gets.chomp   # get our filename

contents = File.open(filename, "r+"){ |file| file.read }
puts contents

# Read file with enumerability:
puts "with enum each:"
File.open(filename) do |f|
  f.each do |record|

   rec_ary = record.split(' ')

  search = rec_ary.index("word")   #search each line

   unless search == nil
     puts " #{search} #{rec_ary[search]}"
     rec_ary[search] = "inserted + #{rec_ary[search]}"
   end

  end
end



