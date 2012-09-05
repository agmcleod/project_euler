require 'rubygems'
require 'active_support/all'

module Project19
  def is_sunday?(d)
    d.strftime("%a") == "Sun"
  end

  def get_first_sundays_of_a_year(year)
    days = first_day_of_each_month(year)
    count = 0
    days.each do |day|
      count += 1 if day.strftime("%a") == "Sun"
    end
    count
  end

  def first_day_of_each_month(year)
    d = Date.new year, 1, 1
    days = []
    12.times do |i|
      first_day = d.months_since(i)
      days << first_day
    end
    days
  end
end