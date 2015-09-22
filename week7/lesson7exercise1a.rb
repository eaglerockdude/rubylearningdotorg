#ken mcfadden rubylearningdotorg

#  serialize(marshall) the class made in lesson7exercise1.rb.

require_relative '../week7/lesson7exercise1'

k = Klass.new("Hello")

puts k.send :say_hello

File.open('klass', 'w+') do |f|
  Marshal.dump(k, f)
end

File.open('klass') do |f|
  @k = Marshal.load(f)
end

puts "#{@greeting}"

