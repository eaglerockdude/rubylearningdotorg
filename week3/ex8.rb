# ken mcfadden rubylearning.net

# Write a Ruby program that prints the numbers from 1 to 100.
#  But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz".
#  For numbers which are multiples of both three and five print "FizzBuzz".

(1..100).each do |n|
  if n % 3 == 0 && n % 5 == 0
    puts 'FizzBuzz'
  elsif n%3 == 0
    puts 'Fizz'
  elsif n % 5 == 0
    puts 'Buzz'
  else
    puts "#{n}"
  end
end # end do