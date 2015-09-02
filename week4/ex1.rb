# ken mcfadden rubylearning wk4

# Create a dog class
#
# Write a class called Dog,
# that has name as an instance variable
# and the following methods:
# bark
# eat
# chase_cat

class Dog

  attr_reader :name    # takes place of def name end

  def initialize(name)
    @name = name
  end

  def bark
    puts "woof woof...and you thought I could speak spanish?"
  end

  def eat
    puts "chomp chomp...I prefer leftovers to this dry stuff!"
  end

  def chase_cat
    puts "Ima chasing...Ima chasing!  Still no luck!"
  end

  def method_missing(m, *args, &block)
    puts "There's no method called #{m} here -- please try again."
  end

end

mydog = Dog.new('hupperdoo')

puts "My name is #{mydog.name}"
mydog.bark
mydog.eat
mydog.chase_cat

mydog.heydude

#mydog.teach_trick(:dance) { "#{@name} is dancing!" }

#puts mydog.dance