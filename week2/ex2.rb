# in the following two pieces of code explain the difference in the output.

# in the second case, a method returns only ONE value which is 5 in the puts case.

# It will not return the do loop lines which is a separate thing.

puts "Program 1 output: "
def mtdarry

  10.times do |num|

    puts num

  end

end

mtdarry

puts ""
puts "Program 2 output: "
def mtdarry

  10.times do |num|

    puts num

  end

end

puts mtdarry  #methods return only ONE value which here is 10.

puts "testing puts1 method"
def testputs1
  4.times do  |x|
  end
end

puts testputs1

puts "testing puts2 method"

def testputs2
  4.times { }
end

puts testputs2




