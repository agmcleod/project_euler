class P21
  attr_accessor :n

  def initialize(n)
    @n = n
  end

  def get_divisors
    divisors = []
    max = n / 2
    divisors << max if even?
  end

  def even?
    n % 2 == 0
  end
end