#   ken mcfadden playfair  exercise
#
#  (see wiki for rules)
#
# Based on liam-lagays implementation git@github.com:liam-lagay-14/playfair-cipher.git
#

class PlayFair

  def initialize(keyword, message)
    raise ArgumentError, 'Please provide a keyword.keyword empty.' if keyword.empty?
    raise ArgumentError, 'Keyword cannot be > 25.' if keyword.length > 25

    @message = message
    @keyword = keyword

    puts "Our keyword is : #{@keyword}"
    puts ""
    puts "Our message is : #{@message}"
    puts ""

    #get a keyword object
    @keyword_object  = Keyword.new(keyword)

    # puts "TESTING ONLY @keyword.keyword is #{@keyword_object.unique_keyword}"

    # get a cipher square object
    @cipher_square_object  = CipherSquare.new(@keyword_object.unique_keyword)

    #  get a diagraph object
    @diagraph_object  = Diagraph.new(message)

    # puts " TESTING ONLY @diagraph.diagraph is #{@diagraph_object.diagraph.inspect}" # testing only

    # encode message

    @encode_obj = Encode.new(@cipher_square_object, @diagraph_object)

    puts ""
    puts "Encoded message : #{@encode_obj.encoded_message.join("")}"

    puts ""
    puts "Now lets decode it > > >"

    @message =   @encode_obj.encoded_message.join("")
    message_array = @message.upcase.gsub(/\s+/, '').split('')
    message_array  = message_array.each_slice(2).to_a

    #puts " TESTING ONLY @diagraph.diagraph is #{message_array}"

   @encode_obj.decode_message(message_array)

    puts ""
    puts "Message decoded :  #{@encode_obj.decoded_message.join("")}"

  end

end

class Encode

    attr_reader :encoded_message , :decoded_message

  def initialize(cipher_square_object, diagraph_object)

    @diagraph_array =   diagraph_object.diagraph

    @cipher_square = cipher_square_object.cipher_square_array

    @encoded_message  = []
    @decoded_message  = []

      encode_message

  end

  def encode_message

    @diagraph_array.each do |pair|

      #  get diagraph pair row and column
      char_pos_one  =  get_cipher_position(pair[0])
      char_pos_two   =  get_cipher_position(pair[1])

      #  get encoded character value based on cipher algorithm.
       encoded_char1, encoded_char2  = encode_decode(char_pos_one, char_pos_two, true)

      encoded_message << [encoded_char1, encoded_char2]
    end

  end

    def decode_message(coded_message)

      decoded_message = []

    coded_message.each do |pair|

        #  get diagraph pair row and column
        char_pos_one  =  get_cipher_position(pair[0])
        char_pos_two   =  get_cipher_position(pair[1])

        #  get encoded character value based on cipher algorithm.     NOTE : false flag = decoding.
        encoded_char1, encoded_char2  = encode_decode(char_pos_one, char_pos_two, false)

       @decoded_message << [encoded_char1, encoded_char2]
      end
       return @decoded_message
    end

  def get_cipher_position(char)
    row = @cipher_square.detect { |column| column.include?(char) }
    {:row => @cipher_square.index(row), :column => row.index(char)}
  end

  def encode_decode(character_one, character_two, encode)

    # SAME ROW  - move one to the right of the grid to encode, move one to left to decode.
    if same_row?(character_one, character_two)
      transposed_character_one = get_transposed_char(character_one[:row], (encode ? character_one[:column] + 1 : character_one[:column] - 1))
      transposed_character_two = get_transposed_char(character_two[:row], (encode ? character_two[:column] + 1 : character_two[:column] -1))

      # SAME COL -   move one down to encode, one up to decode.
    elsif same_column?(character_one, character_two)
      transposed_character_one = get_transposed_char((encode ? character_one[:row] + 1 : character_one[:row] -1), character_one[:column])
      transposed_character_two = get_transposed_char((encode ? character_two[:row] + 1 : character_two[:row] -1), character_two[:column])

   # Find opposite coordinate of rectangle they form.    Same rows, opposite corners.
    else
      transposed_character_one = get_transposed_char(character_one[:row], character_two[:column])
      transposed_character_two = get_transposed_char(character_two[:row], character_one[:column])
    end
    return transposed_character_one, transposed_character_two
  end

  # these tests return true or false
  def same_row?(character_one, character_two)
    character_one[:row] == character_two[:row]
  end

  def same_column?(character_one, character_two)
    character_one[:column] == character_two[:column]
  end

  def get_transposed_char(row, column)
    # roll up or around if end of row or column  reached.
    row = 0 if row >  5
    column = 0 if column >  5
    @cipher_square[row][column]  #return
  end

end

  class Diagraph

  attr_accessor :diagraph

 def initialize(message)

   @message = message

   #  uppercase > remove whitespace  > to array  .. normally done already.
   message_array = @message.upcase.gsub(/\s+/, '').split('')

   # process message & convert to diagraph:
   diagraphize(message_array)

 end

  def diagraphize(message_array)

    message_array.each_with_index do |character, index|

      message_array[index] = 'I' if message_array[index] == 'J'

      # insert 'X' for two same chars in a row.
      next_character =message_array[index + 1]
      if next_character == character
        message_array.insert(index +1, 'X')
      end

    end

    #if final message is an odd length append a Z
    if message_array.size.odd?
      message_array.insert(index, 'X')
    end

    # slice list of characters into pairs and return the array for use
    @diagraph = message_array.each_slice(2).to_a
  end

end

class CipherSquare

  ROWSIZE = 5
  CIPHERSIZE = 25

  attr_reader :cipher_square_array

  def initialize(keyword)

    @keyword_array = keyword.chars
    @cipher_square_array = []
    @cipher_row_array = []

    @alphabet_array = ('A'..'Z').to_a
    @alphabet_array.delete('J')

    load_cipher_keyword

    fillout_cipher_square

    puts "Generated cipher square is :"
    @cipher_square_array.each do |row|
      puts row.each { |p| p }.join(" ")
    end

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

# Main #####################################################
keyword = 'Playfair Example.'
message = 'Hide the gold in the tree stump'

pc = PlayFair.new(keyword,message)

exit 0


