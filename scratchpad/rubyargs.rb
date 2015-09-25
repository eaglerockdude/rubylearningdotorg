# argument passing to ruby itself.

# -e SWITCH    : evaluates code that is passed.
#  using the -e flag when invoking Ruby, we can execute code that we pass
#  in directly on the command line—removing the need to commit our script to
#  a file on disk.

# example
$ ruby -e 'puts "Hello world"'
Hello world

# example to execute from COMMAND LINE...

# THE -n SWITCH
#   you can stream lines with the -n switch.
#  with the -n switch ruby acts like the code passed to it is wrapped in :

while gets
# execute code passed in -e here
end

printf "foo\nbar\n" | ruby -ne 'puts $_.upcase'
# kenmcfadden@kmac:~/rubylearning% printf "foo\nbar\n" | ruby -ne 'puts $_.upcase'
# FOO
# BAR
# same as doing this...but shorter...

$ printf "foo\nbar\n" | ruby -e 'STDIN.each { |line| puts line.upcase }'
FOO
BAR

