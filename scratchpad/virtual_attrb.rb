
# Terminology : internal state is held in instance variables, while  external state is exposed thru attributes(methods, etc)
# attributes are really just methods, but lean more towards exposing the internal state, whereas other methods could be term "regular."
class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end

end

book = BookInStock.new("isbn1", 33.80)
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234   # virtual instance variable meaning it looks and is used like a variable, but is not, but rather a method.
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"


puts "#{book.test1}"

