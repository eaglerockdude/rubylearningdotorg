# p005methods.rb
# gets and chomp
puts "In which city do you stay?"
STDOUT.flush
city = gets.chomp
puts "The city is " + city

puts "How about without a chomp?"
nochomp = gets

puts "Without a chomp "   + nochomp
