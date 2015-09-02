# kenmcfadden rubylearning.com wk4
# modified grandpa: Must say bye three times to hangup:

talk = true
#bye_cnt = 0
a = (1930...1951).to_a
while talk

  puts  "You are now speaking with Grandma.. say BYE 3 times in a row to hangup..she is a bit deaf."
  speak  = $stdin.gets.chomp

  speak  == 'BYE' ? bye_cnt  += 1 : bye_cnt = 0

  if  bye_cnt == 3

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