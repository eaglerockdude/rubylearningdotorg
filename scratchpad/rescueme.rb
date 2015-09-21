#ken mcfadden
# rescue clause stuff.

# ex1 this rescue does not work as  a standard error or subclass of standard error which is the DEFAULT . So the system handles
# the error...


def do_it(code)
  eval(code)
rescue  SyntaxError      #this block would not be called if rescue not qualified with syntax error.
  puts "Cannot do it!"
end
do_it('puts 1 + 1')
# 2
#do_it('puts 1 +')

# If you want to interrogate a rescued exception, you can map the Exception object to a
# variable within the rescue clause. Exception objects have useful methods like
# message and backtrace:

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end
