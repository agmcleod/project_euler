n = 20
paths = "#{'R'*n}#{'D'*n}"

def calculate_combinations(input_text)
  input_copy = input_text
  numerator = factorial(input_text.size)
  denominator = 1
  while input_copy != ''
    denominator *= factorial(how_many_occurances(input_copy, input_copy[0,1]))
    input_copy = input_copy.gsub(input_copy[0,1], '')
  end
  numerator / denominator
end

def how_many_occurances(str, char)
  str.scan(char).size
end

def factorial(input)
  out = 1
  i = input
  while i > 0
    out *= i    
    i -= 1
  end
  out
end

puts calculate_combinations(paths)