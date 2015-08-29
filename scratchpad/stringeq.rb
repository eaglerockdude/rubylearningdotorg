# p013strcmp.rb
# String#eql?, tests two strings for identical content.
# It returns the same result as ==
# String#equal?, tests whether two strings are the same object
s1 = 'Jonathan'
s2 = 'Jonathan'
s3 = s1
if s1 == s2
  puts '== says s1 and s2 Both Strings have identical content'
else
  puts '== says s1 and s2 Both Strings do not have identical content'
end
if s1.eql?(s2)
  puts '.eq? says s1 and s2 Both Strings have identical content'
else
  puts '.eq? says s1 and s2 Both Strings do not have identical content'
end
if s1.equal?(s2)
  puts '.equal? says s1 and s2 Two Strings are identical objects'
else
  puts '.equal? says s1 and s2 Two Strings are not identical objects'
end
if s1.equal?(s3)
  puts '.equal? says s1 and s3 Two Strings are identical objects'
else
  puts '.equal? says s1 and s3 Two Strings are not identical objects'
end

puts "s1 #{s1} object_id: #{s1.object_id}"
puts "s2 #{s2} object_id: #{s2.object_id}"
puts "s3 #{s3} object_id: #{s3.object_id}"

names2 = %w{  ann richard william susan pat }
puts names2.inspect
names3 = %q{  ann richard william susan pat }
puts names3.inspect
