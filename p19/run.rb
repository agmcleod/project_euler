require './project_19'
include Project19

count = 0
for i in 1901..2000
  count += Project19::get_first_sundays_of_a_year i
end
puts "Count: #{count}"