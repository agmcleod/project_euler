require './p21'

sum = P21.new(10000).divisor_sum
other_sum = P21.new(sum).divisor_sum

puts other_sum + sum