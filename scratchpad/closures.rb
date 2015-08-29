# Explore the concept of closures within the context of RUBY.
# http://www.sitepoint.com/closures-ruby/
# this example shows how a method using a block via yield has access to a variable not in its scope.
# use of the block allows us to cross the "scope gate"

#EXAMPLE 1 scope crossing with blocks.
outer = 1

def m
  inner = 99
  yield inner   # pass control to the block passing inner as a parm.
  puts "inner var = #{inner}"
end

m {|inner| outer += inner}

puts "outer var = #{outer}"

# in this example the block is not a true closure by definition, in that it cannot be passed as a method argument,
# or assigned to another variable, which is the case with languages that support "first order functions"

# this next example uses PROCS to address that requirement:

# notes on the code..the & when used in an argument list tells ruby to expect a block and
# to convert the block passed in to a PROC.  This is done implicitly.

# a PROC is an block that has been converted to an OBJECT.

# EXAMPLE 2 Converting a block to a proc with & argument.
puts ""
puts "=====starting example 2======"

outer = 1

def m &a_block
  inner = 99
  a_block.call(inner)
  puts "inner var = #{inner}"
  puts "argument is a #{a_block.class}"
end

m {|inner| outer += inner}
puts "outer var = #{outer}"

# EXAMPLE 3 and 3A Create a proc with the proc method.

puts ""
puts "=====starting example 3======"
outer = 1

def m a_proc
  inner = 99
  a_proc.call(inner)
  puts "inner var = #{inner}"
  puts "argument is a #{a_proc.class}"
end

m proc {|inner| outer += inner}    # create proc in the fly...

# we can also use Proc.new instead of proc, with the same effect:"
puts ""
puts "Using Proc.new: "
puts "--------------"
 m Proc.new {|inner| outer += inner}  # its not 100 + 99
puts "outer var = #{outer}"

# EXAMPLE 4 create a Proc, and assign it to a variable to call as we need it.

puts ""
puts "Example 4"
puts "========"
outer = 1

def m a_var
  inner = 99
  puts "inner var = #{inner}"
  proc {inner + a_var}
end

p = m(outer)
puts "p is a #{p.class}"

outer = 0
puts "changed outer to #{outer}"

puts "result of proc call: #{p.call}"

# even though we changed outer to zero, the Proc we saved into a variable still remembers the value
# it had when it was created, just like a real closure.

# EXAMPLE 5 LAMBDA
# A lambda is a proc that behaves slight differently.  It is created with the method lambda instead of proc.




