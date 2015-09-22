# ken mcfadden notes on object serialization.

# Ruby has two methods, one for human readable format, the other binary.

class GameCharacter
  def initialize(power, type, weapons)
    @power = power
    @type = type
    @weapons = weapons
  end
  attr_reader :power, :type, :weapons
end

gc = GameCharacter.new(120, 'Magician', ['spells', 'invisibility'])
puts "#{gc.power} #{gc.type}"
gc.weapons.each do |w|
  puts w
end

File.open('game', 'w+') do |f|
  Marshal.dump(gc, f)
end

File.open('game') do |f|
  @gc = Marshal.load(f)
end

puts "#{@gc.power} #{@gc.type}"
@gc.weapons.each do |w|
  puts w
end
