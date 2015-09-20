#ken mcfadden rubylearningdotnet..
# write a person class with a balance variable accessible via att-accessor

class Person
attr_reader :balance
def initialize(balance)
  @balance = balance
end

end

aperson = Person.new(599)
puts   "this person's balance is #{aperson.balance}"