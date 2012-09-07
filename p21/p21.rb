class P21
  attr_accessor :n

  def initialize(n)
    @n = n
  end

  def get_divisors
    (1..n).collect do |num|
      f = n / num
      f if (f * num) == n && f != n
    end.compact
  end

  def divisor_sum
    divisors = get_divisors
    p divisors
    sum = 0
    divisors.each { |d| sum += d }
    sum
  end
end