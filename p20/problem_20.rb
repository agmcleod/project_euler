module Problem20
  def factorial(number)
    s = 1
    for i in 1..number
      s *= i
    end
    s
  end

  def sum_of_factorial(fact)
    s = 0
    fact.to_s.split(//).each do |d|
      s += d.to_i
    end
    s
  end
end