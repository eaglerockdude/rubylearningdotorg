# Exercise6. Write a Deaf Grandma program.
# Whatever you say to grandma (whatever you type in), she should respond with HUH?!
#  SPEAK UP, SONNY!, unless you shout it (type in all capitals).
# If you shout, she can hear you (or at least she thinks so)
# and yells back, NO, NOT SINCE 1938!
# To make your program really believable, have grandma shout a
# different year each time; maybe any year at random between 1930 and 1950.
# You can't stop talking to grandma until you shout BYE.

talk = true
a = (1930...1951).to_a
while talk
  puts  "You are now speaking with Grandma.. say BYE to hangup.."
  speak  = $stdin.gets.chomp
  if speak == 'BYE'
    puts "Nice speaking with you Sonny!"
    talk = false
  else
    if  /\A[[:upper:]]*\Z/   =~ speak
      puts "NO, NOT SINCE #{a[rand(a.size)]}"
    else
      puts "HUH? I CANNOT HERE YOU SONNY-BOY!."
    end
  end
end


