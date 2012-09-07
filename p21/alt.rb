# credit: http://www.mathblog.dk/project-euler-21-sum-of-amicable-pairs/
# cheated here as i didn't really understand what the problem was asking for
require 'benchmark'
require 'mathn'

def sum_of_factors(number)
  sqrt = Math.sqrt(number).to_i
  sum = 1

  if number == (sqrt * sqrt)
    sum += sqrt
    sqrt -= 1
  end
  for i in 2..sqrt
    if number % i == 0
      sum = sum + i + (number / i)
    end
  end
  sum
end

limit = 10_000

Benchmark.bm(1) do |x|
  x.report("Bruteforce method for #{limit}") do
    sumAmicable = 0
    factorsi, factorsj = nil, nil

    for i in 2..limit
      factorsi = sum_of_factors(i)
      if factorsi > i && factorsi <= limit
        factorsj = sum_of_factors(factorsi)
        if factorsj == i
          sumAmicable += i + factorsi
        end
      end
    end    
    puts "\nsum: #{sumAmicable}"
  end
end

def sum_of_factors_prime(number, primelist)
  n = number
  sum = 1
  p = primelist[0]
  j = nil
  i = 0

  while p * p <= n && n > 1 && i < primelist.size
    p = primelist[i]
    i += 1
    if n % p == 0
      j = p * p
      n = n / p
      while n % p == 0
        j = j * p
        n = n / p
      end
      sum = sum * (j - 1) / (p - 1)
    end
  end

  # a prime factor larger than the square root remains
  if n > 1
    sum *= n + 1
  end
  sum - number
end

prime = Prime.new
list = []

Benchmark.bm(1) do |x|
  x.report("Building primes for numbers under #{limit}") do
    while list.size == 0 || list.last < limit
      list << prime.next
    end
  end
  x.report("Divisor function method #{limit}") do
    sumAmicable = 0
    factorsi, factorsj = nil, nil

    for i in 2..limit
      factorsi = sum_of_factors_prime(i, list)
      if factorsi > i && factorsi <= limit
        factorsj = sum_of_factors_prime(factorsi, list)
        if factorsj == i
          sumAmicable += i + factorsi
        end
      end
    end    
    puts "\nsum: #{sumAmicable}"
  end
end