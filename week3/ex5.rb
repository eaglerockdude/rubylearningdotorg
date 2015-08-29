# Exercise5. Given a string s = 'key=value', create two strings s1 and s2
# such that s1 contains key and s2 contains value.

s = 'name=ken'

splitted = s.split('=')

puts splitted
p splitted.class
p splitted.inspect

p s1 = splitted[0]
p s2 = splitted[1]

state_string = 'state=california'
hash = {}


# creating a hash
state_string.split(',').each do |pair|
  key,value = pair.split(/=/)
  hash[key] = value
  puts s1 = key
  puts s2 = value
end


testsplit = state_string.split(',')

p testsplit.class

