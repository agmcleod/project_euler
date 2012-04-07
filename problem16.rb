val = 2 ** 1000
total = 0
val.to_s.split(//).each do |d|
	total += d.to_i
end

puts total