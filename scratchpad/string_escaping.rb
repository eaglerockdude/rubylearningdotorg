# example of escaping in single and double quoted strings.

puts "Backslashes (\\) have to be escaped in double quotes."
puts 'You can just type \ once in a single quoted string.'
puts "But whichever type of quotation mark you use..."
puts "...you have to escape its quotation symbol, such as \"."
puts 'That applies to \' in single-quoted strings too.'
puts 'Backslash-n just looks like \n between single quotes.'
puts "But it means newline\nin a double-quoted string."
puts 'Same with \t, which comes out as \t with single quotes...'
puts "...but inserts a tab character:\tinside double quotes."
puts "You can escape the backslash to get \\n and \\t with double quotes."
puts %q{You needn't escape apostrophes when using %q.}
a = "testvar"
puts %Q{%Q generates a double quoted string.. #{a}.}
puts %q-A string-
puts %Q/Another string/
puts %[Yet another string]