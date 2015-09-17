# ken mcfadden super stuff.

# Usage of super
#
# The way super handles arguments is as follows:
#
# 1. When you invoke super with no arguments Ruby sends a message to the parent of the current object,
# asking it to invoke a method of the same name as the method invoking super.
#
# It automatically forwards the arguments that were passed to the method from which it's called.
#
# 2. Called with an empty argument list - super()-it sends no arguments to the higher-up method, even if arguments
#  were passed to the current method.
#
# 3. Called with specific arguments - super(a, b, c) - it sends exactly those arguments.


class Bicycle

  attr_reader :gears, :wheels, :seats

  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end

  def sayit(saywhat=0)
    puts "I am in Bike #{saywhat}"
  end

end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end

  def sayit(saywhat)
   puts "i am in tandem #{saywhat}"
    super
    super()
    super(7)
  end
end

t = Tandem.new(2)

t.sayit(3)
puts t.wheels
puts t.seats
b = Bicycle.new
puts b.gears
puts b.wheels
puts b.seats