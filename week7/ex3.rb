# ken mcfadden rubylearningdotnet week 7

# Exercise3. Write a method called month_days, that determines the number of days in a month.

# Example calls:
# days = month_days(5) # 31 (May)<o:p></o:p>
# days = month_days(2, 2000) # 29 (February 2000)

require 'date'

class DateMonth

  def initialize
    # get today's date
    @today = DateTime.now
    @day = 1
    @month = 0
    @year = 0
    @cur_year = @today.year
  end

  def month_days(*args)

    if args.length == 0
      raise "You need to provide either a month or month and year."
    elsif args.length >1
      @month = args[0].to_i
      @day = 1
      @year = args[1].to_i
      validate_date(@month,@day,@year)
      # print days
      print_days
    else
      # if only month passed in we default to the current year for date validation.
      @month = args[0].to_i
      @day = 1
      @year = @cur_year
      validate_date(@month,@day,@year)
      # calculate days and print
      print_days
    end
  end

  def validate_date(month, day, year)

    if Date.valid_date?(year,month,day)
    else
      raise "Month or Year in #{month}/#{day}/#{year} (mdy)appears to be invalid..check your submit parms."
    end
  end

  def dodays(year,month)
    case month
      when 4,6,9,11
        30
      when 2
        (year%4==0 && year%100!=0 || year%400==0) ? 29 : 28
      else
        31
    end
  end

  def print_days
    @days_in_month = dodays(@year,@month)
    @full_date =  Date.new(@year,@month,@day)
    @month_name = @full_date.strftime('%B')
    puts "There are #{@days_in_month} days in #{@month_name} #{@year}"
  end

end

dte = DateMonth.new
# test some dates  including a leaper
dte.month_days(5)
dte.month_days(2,2000)
dte.month_days(6,2007)
dte.month_days(2)