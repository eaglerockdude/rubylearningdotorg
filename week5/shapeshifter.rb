# ken mcfadden rubylearning.net
#    There will be shapes on a GUI, a square, a circle and a triangle and an amoeba
#
# When the user clicks on a shape, the non-amoeba shapes will rotate clockwise 360 degrees (ie. all the way around)
# and play an AIF sound file specific to that particular shape.
# The amoeba plays a .hif sound file, and rotates around a point on one end.

# Approach :
# Will use < inheritance from a base class shape.
# children will share methods from parent but will have their own instance variables.
# if need be we can override parent methods using methods with the same names in the children.

class Shape
  attr_accessor :shape_name, :shape_sound, :rotation

  def initialize(shape, sound, point_of_rotation)
    @shape_name = shape
    @shape_sound = sound
    @rotation = point_of_rotation
  end

  def act_alive
    puts "I am a #{shape_name} shape. ",
         "I can make the sound #{shape_sound}",
         "My rotation preference is : #{@rotation}"
  end

  def method_missing(m, *_args, &_block)
    puts "There's no method called #{m} here -- please try again."
  end
end

class Square < Shape
end

class Circle < Shape
end

class Triangle < Shape
  def act_alive
    puts "I  #{shape_name} am overriding the base act_alive method."
  end
end

class Amoeba < Shape
end

baseshape = Shape.new('basic', 'basic.snd', 'All-rotator')

baseshape.act_alive

puts
square = Square.new('square', 'file.aif', 'Center-rotator')
square.act_alive

puts
circle = Circle.new('circle', 'file.aif', 'Center-rotator')
circle.act_alive

puts
triangle = Triangle.new('triangle', 'file.aif', 'Center-rotator')
triangle.act_alive

puts
amoeba = Amoeba.new('amoeba', 'file.hif', 'Endpoint-rotator')
amoeba.act_alive
amoeba.watson_can_you_hear_me?

# dynamically add the method.
class Shape
  def watson_can_you_hear_me?
    puts 'Yes Watson, I hear you!'
  end
end

amoeba.watson_can_you_hear_me?
