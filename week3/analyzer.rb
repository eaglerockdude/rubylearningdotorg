# analyzer program ken mcfadden.
# NOTE - use string and array expressions at this point, NOT regular expressions.

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
# 4. get char count xcluding spaces
# 5. get word count(split on whitespace)
# 6. get sentence count(split on periods, ? and ! punctuation)
# 7. get paragraph count(split on double lines)
# 8. get averages.
#

# local variables
@lines = 0
@char_tot = 0
@char_tot_nospaces = 0
@words = 0
@sentences = 0
@paragraphs = 0
@word_avg = 0
@word_tot = 0
@sent_avg = 0
@blank_lines = 0
@lines_ary = []
@sentence_ary = []
@question_ary = []
@exclaim_ary  = []
@length = 0
@sentence_total
@all_txt  = ''


File.open("text.txt") do |f|
  f.each do |record|

    @lines += 1

    puts "#{@lines} #{record}"

    # save each line to array for totals processing:
    @lines_ary <<  record.lines  # lines to array

    @all_txt << record

    # sum total characters
    @length = record.length
    @char_tot +=  @length

    # sum total words & characters
    rec_words = record.split(' ')
    @words = rec_words.size
    @word_tot += @words
    # get characters
    rec_words.each do |elem|
      chars = elem.size
      @char_tot_nospaces += chars
    end

    # save sentence based on a period.
    @sentence_ary =  record.split(/\.?\s+/)

    chompit = record.chomp
    if chompit ==  ""
      @blank_lines += 1
    end

  end

    puts "line_count  #{@lines}"
    puts "Number of lines are #{@lines_ary.size}"

    @sentence_ary = @all_txt.split('.')
    @question_ary = @all_txt.split('?')
    @exclaim_ary = @all_txt.split('!')
    puts "Number of sentences ending with a period is : #{@sentence_ary.size}"
    puts "Number of sentences ending with ? is : #{@question_ary.size}"
    puts "#{@question_ary}"
    puts "Number of sentences ending with ! is : #{@exclaim_ary.size}"
    puts "#{@exclaim_ary}"
    puts "done"


  end