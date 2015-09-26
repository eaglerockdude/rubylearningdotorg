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
@period_ary = []
@question_ary = []
@exclaim_ary  = []
@sentence_tot = 0.0
@all_txt  = ''

# begin/end over entire code group for exception handling
begin

  $LOG = Logger.new($stderr)

  $LOG.info("Getting ready to process our text file.")

  File.open("text.txt") do |f|

    f.each do |record|

      @all_txt << record
      @lines <<  record.lines  # lines to array

      # sum total characters
      @characters +=  record.length

      # total words
      rec_words = record.split(' ')
      @word_total += rec_words.size

      # total characters exclude spaces
      rec_words.each do |elem|
        @characters_without_spaces += elem.size
      end

    end   # end read loop

    $LOG.info("Read loop complete..printing statistics....")

    # count total sentences  & paragraphs
    @period_ary = @all_txt.scan(/\./)
    @question_ary = @all_txt.scan(/\?/)
    @exclaim_ary = @all_txt.scan(/\!/)
    @paragraphs  = @all_txt.scan(/\r\n\r\n/)

    @sentence_tot =  @period_ary.size + @exclaim_ary.size + @question_ary.size
    # Averages for  words/sentence
    @avg_words_sent = @word_total/@sentence_tot
    @avg_sent_paragraph =  @sentence_tot / @paragraphs.size

    puts [
    '------------------------------- Analysis Report ----------------------------------------------------- ',
     "Number of lines :  #{@lines.size}" ,
     "Number of characters  :  #{@characters}",
     "Number of characters excluding spaces   :  #{@characters_without_spaces}" ,
     "Number of words   :  #{@word_total}" ,
    "Number of sentences ending with a period  '.' is : #{@period_ary.size}" ,
    "Number of sentences ending with '?'  is : #{@question_ary.size}" ,
     "Number of sentences ending with '!' is : #{@exclaim_ary.size}" ,
     "Number of sentences  is : #{@period_ary.size + @exclaim_ary.size + @question_ary.size}" ,
     "Number of sentences  is : #{@sentence_tot}" ,
     "Number of paragraphs is  : #{@paragraphs.size}" ,
     "Avg. number of words per sentence  : #{@avg_words_sent}" ,
     "Avg. number of sentences per paragraph  : #{@avg_sent_paragraph}"
    ]

    $LOG.info("Text Analyzer Completed......No errors.")

  end
# exception handler:
rescue Exception => msg
  # display the system generated error message

  puts"The exception handler has been invoked. Here is the error message:"
  puts msg.message
  puts msg.backtrace.inspect

end     # begin end for exception handling.