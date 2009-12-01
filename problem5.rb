#starting_num = 20
#i_found_it = false
#test_num = starting_num
#until i_found_it
#	test_num += 1
#	dial_down = starting_num
#	while test_num % dial_down == 0
#		if dial_down <= 1
#			i_found_it = true
#			break
#		end
#		dial_down -= 1
#	end
#end

#puts test_num

require 'rational'
num = (1..20).inject(1) { |result, n| result.lcm n }
puts "Smallest evenly divisible number is #{ num }."