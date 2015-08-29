require 'find'
Find.find('./') do |f|
  type = case
           when File.file?(f) then "F"
           when File.directory?(f) then "D"
           else "?"
         end
  puts "#{type}: #{f}"
end