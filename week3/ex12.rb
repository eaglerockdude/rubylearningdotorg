 # if 0 means not attempted, and 1 means attempted, print list of who has not attempted quiz1 ``
quiz = [0,0,0,1,0,0,1,1,0,1]

@x = 0
@total = 0

quiz.each do |attempted|
  @total +=1
  if attempted == 0
    @x +=1
  end
end
puts " The number of participants who did not attempt Quiz 1 is #{@x} out of #{@total} total participants."

