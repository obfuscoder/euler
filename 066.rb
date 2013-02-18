class Integer
  def root_fractions(n)
    a = [(self**0.5).to_i]
    m,d = 0,1
    1.upto(n) do
      m = d*a.last-m
      d = ((self-m*m)/d).to_i
      a << ((a.first+m)/d).to_i
    end
    a
  end

  def solve_pell
    an = 1
    loop do
      a = root_fractions an
      y,x = a.reverse.reduce([0,1]){|(n,d),c| [d,c*d+n]}
      return [self,x] if x*x-self*y*y == 1
      an += 1
    end
  end

  def non_square?
    self**0.5 % 1 != 0
  end
end

p (2..1000).select(&:non_square?).map(&:solve_pell).max_by(&:last).first
