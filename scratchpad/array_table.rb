# test out a 2D array looking  and working like a table.

tn  = [ [1,2,3,4,5] ,
          [6,7,8,9,10],
          [11,12,13,14,15] ,
          [16,16,18,19,20],
          [21,22,23,24,25] ]

tn.each do |row|
  puts row.each { |p| p }.join(" ")
end

ta  = [ %w(A B C D E) , %w(F G H I K),%w(L M N O P) , %w(Q R S T U),%w(V W X Y Z)]

p ta.inspect
p ta.class

ta.each do |row|
  puts row.each { |p| p }.join(" ")
end
puts ""

ta.each do |row|
  row.reject! {|letter| letter == 'B'}
end

ta.each do |row|
  p row.size
  p row.inspect
end


ta.each do |row|
  puts row.each { |p| p }.join(" ")
end

 key = "Mayfair Example."
test = key.gsub!(/[^0-9A-Za-z]/, '').upcase

p test.inspect