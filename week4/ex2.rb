# ken mcfadden rubylearning wk4

# write a rectangle class

class Rectangle

  def initialize(length, width)
    @length = length
    @width = width
  end

    def area
      @length * @width
    end

  def length=(new_length)  # virtual attribute for testing only.
    @length = new_length
  end

  def width=(new_width)
    @width = new_width
  end

  def perimeter
    @perimeter = 2 * (@length + @width)
  end

end

r = Rectangle.new(23.45, 34.67)

puts "Area is = #{r.area}"

# r.length = 20
# r.width = 10

puts "Area is = #{r.area}"
puts "Perimeter  is = #{r.perimeter}"


