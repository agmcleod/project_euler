number = 600851475143
high = number
i = 3
while i * i < number
  if high % i == 0
    puts i
    high /= i
  end
  i += 1
end

