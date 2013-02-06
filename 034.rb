class Fixnum
  @@factorials = [1,1,2,6,24,120,720,5040,40320,362880]

  def digit_factorial
    @@factorials[self]
  end

  def factorial_sum
    self.to_s.chars.reduce(0){|m,o| m+o.to_i.digit_factorial}
  end

  def curios?
    self == factorial_sum
  end
end


p 3.upto(100000).select(&:curios?).reduce(:+)
