# stuff about the ARGF function.
# ARGF reads from files passin from the command line, or if none then from standard input.

# The calling code does not care.  This is similar to other unix-flavored utilities like CAT and GREP...

# you can pipe input or read from files.

# Reading from files
# If we run the above script with arguments, like so:
#
# $ ruby argf.rb foo.txt bar.txt baz.txt

# echo "foo\nbar" | ruby argf.rb

ARGF.each do |line|
  puts line
end