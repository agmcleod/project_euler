num = 1
square_sum = 0
sum_square = 0
while num < 101
	square_sum += (num**2)
	sum_square += num
	num += 1
end
sum_square = (sum_square ** 2)
puts sum_square - square_sum