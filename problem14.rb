def is_odd(num)
  if num % 2 == 0
    return false
  else
    return true
  end
end

def mod_n(n)
  odd = is_odd(n)
  if odd
    n = ((3 * n) + 1)
  else
    n /= 2
  end
  n
end
puts Time.now
num = 999999
highest = 1
highest_num = num
until num <= 1
  n = num
  times = 1
  until n <= 1
    n = mod_n(n)
    times += 1
  end
  if times > highest
    highest = times
    highest_num = num
  end
  num -= 2
end


puts "times: #{highest} value: #{highest_num}"
puts Time.now