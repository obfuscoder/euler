class Fixnum
  @@factorials = []

  def factorial
    return 1 if self <= 1
    @@factorials[self] ||= (2..self).reduce(:*)
  end

  def combinations(n)
    n.factorial/self.factorial/(n-self).factorial
  end
end

p (1..100).map{|n| (1..n-1).map{|r| r.combinations(n)}.count{|c| c>1000000}}.reduce(:+)