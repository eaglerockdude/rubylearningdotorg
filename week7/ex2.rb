#ken mcfadden rubylearningdotnet week 7

# Fix a bug without changing the original source file itself.

# Approach : just thinking of overriding the method in the new class by reopening the original.


class DTRConvertor
  def convert(dollar_amount)
    dollar_amount * 40.0         #bug here
  end
end

class DTRConvertor
  def convert(dollar_amount)
    dollar_amount * 55.0         #correction
  end
end


m = DTRConvertor.new

puts m.convert(100.0)





