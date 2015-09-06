#   ken mcfadden playfair  exercise
#
# Rules
# Key  ( all uppercase, no special characters, no duplicate letters.)
#  Cipher square :  There is no letter "J"
#
#

class PlayFair
  # attr_accessor :message_pairs
  # attr_reader :message, :digraph

  def initialize( keyword)
    raise ArgumentError, 'Please provide a keyword.keyword empty.' if  keyword.empty?
    raise ArgumentError, 'Keyword cannot be > 25.' if  keyword.length > 25

     #get a keyword instance
    @keyword = Keyword.new(keyword)
    puts @keyword.unique_keyword   # testing only

    # build cipher square
    @cipher_square = CipherSquare.new(@keyword.unique_keyword)

  end
end

class CipherSquare

  ROWSIZE = 5
  CIPHERSIZE = 25

  def initialize(keyword)

    @keyword_array = keyword.chars
    @cipher_square_array = []
    @cipher_row_array = []

    @alphabet_array = ('A'..'Z').to_a
    @alphabet_array.delete('J')

    load_cipher_keyword

    fillout_cipher_square

    puts "#{@cipher_square_array}"

    end

    def load_cipher_keyword
      @keyword_array.each do |letter|
        @cipher_row_array << letter
           if @cipher_row_array.size == ROWSIZE
            @cipher_square_array << @cipher_row_array
            @cipher_row_array = []   #reset row
        end
      end
    end

  def fillout_cipher_square
    @alphabet_array.each do |letter|
      unless @keyword_array.include? letter
        @cipher_row_array << letter
      end
      if @cipher_row_array.size == ROWSIZE
        @cipher_square_array << @cipher_row_array
        @cipher_row_array = []   #reset row
      end
    end
  end

end    ## class end

class Keyword

  attr_accessor :unique_keyword

  def initialize(keyword)

    keyword = keyword.upcase.gsub('J', 'I' )   # subst any J and make upcase.
    keyword = keyword.gsub!(/[^0-9A-Za-z]/, '') # remove special chars
    keyword = make_unique(keyword)

  end

  def make_unique(keyword)
    keyword_array = keyword.chars.uniq.to_a
    @unique_keyword = keyword_array.join
  end

end

# Main
# create base square  for print test
cipher_square  = [ %w(A B C D E) , %w(F G H I K),%w(L M N O P) , %w(Q R S T U),%w(V W X Y Z)]
cipher_square.each do |row|
  puts row.each { |p| p }.join(" ")
end
puts ""

keyword = 'Playfair Example Word.'
input_message = 'Hide the gold in the tree stump'
pc = PlayFair.new keyword

exit 0


