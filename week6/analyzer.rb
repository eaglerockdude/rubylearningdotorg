# analyzer program ken mcfadden rubylearningdotnet 2015

# Week 6 Exercise 3 version : add LOGGING.

require 'logger'

# LOGGING : will just log to standard error
# Exception Handling : will just used STANDARD ERROR and its subclasses.

# Lesson details:
# Processes the text.txt sample file and gathers the following data:
# Character count
# Character count (excluding spaces)
# Line count
# Word count
# Sentence count
# Paragraph count
# Average number of words per sentence
# Average number of sentences per paragraph

# 1. Get file
# 2. get line count
# 3. get char count of line
# 4. get char count excluding spaces
# 5. get word count(split on whitespace)
# 6. get sentence count(split on periods, ? and ! punctuation)
# 7. get paragraph count(split on double lines)
# 8. get averages.
#

# local variables
@lines = 0
@characters = 0
@characters_without_spaces = 0
@words = 0
@sentences = 0
@paragraphs = 0
@word_average = 0
@word_total = 0
@sentence_average = 0
@blank_lines = 0
@lines = []
@periods = []
@questions = []
@exclaimation_points  = []
@length = 0
@sentence_total = 0.0
@all_text  = ''

 # begin/end over entire code group for exception handling
begin

  $LOG = Logger.new($stderr)

  $LOG.info("Getting ready to process our text file.")

File.open("text.txt") do |f|

  f.each do |record|

    @lines += 1
    @all_text << record
    @lines <<  record.lines  # lines to array

   #  puts "#{@lines} #{record}"

    # sum total characters
    @length = record.length
    @characters +=  @length

    # total words
    rec_words = record.split(' ')
    @words = rec_words.size
    @word_total += @words

    # total characters exclude spaces
    rec_words.each do |elem|
      chars = elem.size
      @characters_without_spaces += chars
    end

  end   # end read loop

  $LOG.info("Read loop complete..printing statistics....")

    # count total sentences  & paragraphs
    @periods = @all_text.scan(/\./)
    @questions = @all_text.scan(/\?/)
    @exclaimation_points = @all_text.scan(/\!/)
    @paragraphs  = @all_text.scan(/\r\n\r\n/)

    @sentence_total =  @periods.size + @exclaimation_points.size + @questions.size
    # Average words/sentence
   @avg_words_sent = 0.0
  @avg_words_sent = @word_total/@sentence_total
  @avg_sent_paragraph = 0.0
  @avg_sent_paragraph =  @sentence_total / @paragraphs.size

    puts "------------------------------- Analysis Report -----------------------------------------------------"
    puts "Number of lines :  #{@lines}"
    puts "Number of characters  :  #{@characters}"
    puts "Number of characters excluding spaces   :  #{@characters_without_spaces}"
    puts "Number of words   :  #{@word_total}"
    puts "Number of sentences ending with a period  '.' is : #{@periods.size}"
    puts "Number of sentences ending with '?'  is : #{@questions.size}"
    puts "Number of sentences ending with '!' is : #{@exclaimation_points.size}"
    puts "Number of sentences  is : #{@periods.size + @exclaimation_points.size + @questions.size}"
    puts "Number of sentences  is : #{@sentence_total}"
    puts "Number of paragraphs is  : #{@paragraphs.size}"
    puts "Avg. number of words per sentence  : #{@avg_words_sent}"
    puts "Avg. number of sentences per paragraph  : #{@avg_sent_paragraph}"

  $LOG.info("Text Analyzer Completed......No errors.")

end
# exception handler:
rescue Exception => msg
  # display the system generated error message

  puts"The exception handler has been invoked. Here is the error message:"
  puts msg.message
  puts msg.backtrace.inspect

  end     # begin end for exception handling.