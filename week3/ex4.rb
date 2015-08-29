# Explain the ranges and whats included ant not:

# ... dots means do not include last number in range, while
# .. two dots means include it.

a = (1930...1951).to_a
puts a[rand(a.size)]

p a
puts a.last

b = (1930..1951).to_a
p b
puts b.last

c = [*1930...1951] # splat operator
p c
puts c.last