# ken mcfadden rubylearningdotnet.

# Exercise1. Write a Ruby program named lesson7exercise1.rb that defines a class called Klass which will be called in another program as follows:

# obj = Klass.new("hello")<o:p></o:p>

# puts obj.say_hello
# where say_hello is a method in that class, which returns the string sent when an object of Klass is created

# way one using send
class Klass
  def initialize(greeting)
    @greeting = greeting
  end

  def say_hello
   puts  @greeting
  end
end

k = Klass.new("Hello")

puts k.send :say_hello

# way 2 using inheritance
class Klass2
  def initialize(greeting)
    @greeting = greeting
  end

  def say_hello
    puts "#{@greeting}"
  end

end

k2 = Klass2.new("Hello2")

k2.say_hello

# way3 using module

module KlassModule

  def initialize(greeting)
    @greeting = greeting
  end

  def say_hello
    puts "#{@greeting}"
  end

end

class  Klass3
  include  KlassModule
end

k3 = Klass3.new("Hello3")

k3.say_hello


