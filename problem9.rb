c = 0
a = 1
b = 2
an_answer = false
result = 0

def get_c(a, b)
  c = Math.sqrt((a ** 2) + (b ** 2))
end

def is_the_answer(a, b, c)
  if a + b + c == 1000
    result = a * b * c
    return true
  else
    return false
  end
end


#until (c >= 1000)|| an_answer == true
#  a = 1
#  until a == b || an_answer == true
#    c = get_c(a, b)
#    if c / c.floor == 1
#      an_answer = is_the_answer(a, b, c)
#      if an_answer
#        result = a * b * c
#      end
#    end
#    a += 1
#  end
#  b += 1
#end

#puts result


n = 1000
a = (1..n / 2).to_a.find { |a|
  (n * (n / 2 - a) % (n - a)).zero?
}
b = n * (n / 2 - a) / (n - a)
puts "Product is #{a * b * (n - a - b)}."

