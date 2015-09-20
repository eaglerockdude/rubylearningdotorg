# kenmcfadden
# some good examples of using super

# You can call super at any time in the body of a method—before, during, or after calling other code.
# invoking super works for both CLASS methods and INSTANCE methods.

# example using SUPER with no ()...it will pass the args from the subclass method.
# super() with empty parens will pass nothing.
# super(my args, my args) will pass the args you pass.

# 1. Extending the method of the parent, but not necessarily replacing it.


# 2. generic argument acceptor with a splat.

class MyString < String
  def gsub(*args)   # this technique allows the subclass method to accept ANY arguments at all.
    return "#{super} -- This string modified by MyString#gsub (TM)"
  end
end
str = MyString.new("Here's my string")
p str.gsub("my", "a")   # arguments are passed to super.

# arguments AND the block are passed to super.
p str.gsub(/m| s/) { |match| match.strip.capitalize }
