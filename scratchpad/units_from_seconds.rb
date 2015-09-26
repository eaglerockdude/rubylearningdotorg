# Helper class for getting seconds as other common units

# doctest: I can get the number of minutes for any given seconds
# >> @a_minute = Seconds.new(60)
# >> @a_minute.minutes
# => 1
# doctest: 30 seconds in minutes
# >> @half_minute = Seconds.new(30).minutes
# => 0.50
# doctest: 3600 seconds in hours
# >> @half_minute = Seconds.new(60 * 90).hours
# => 1.5
# doctest: 86400 seconds in days
# >> @one_day = Seconds.new(60 * 60 * 24).days
# => 1
# doctest: 86400  * 7 is a week
# >> @one_week = Seconds.new(60 * 60 * 24 * 7).weeks
# => 1
class Seconds
  UNITS = {
    minute: 60.0,
    hour: 60.0 * 60,
    day: 24.0 * 60 * 60
  }
  attr_reader :seconds
  def initialize(number_of_seconds)
    @seconds = number_of_seconds
  end

  def minutes
    @seconds / UNITS[:minute]
  end
  def hours
    @seconds / UNITS[:hour]
  end
  def days
    @seconds / UNITS[:day]
  end
  def weeks
    @seconds / UNITS[:day] / 7
  end
end


