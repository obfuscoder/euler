class Fixnum
  def prime?
    self > 1 && 2.upto(self**0.5) {|x| return false if self%x == 0}
  end

  def expand
    1.upto(9).map {|n| (n.to_s + self.to_s).to_i}.select(&:prime?)
  end

  def truncatable?
    prime? && (self/10 == 0 || (self/10).truncatable?)
  end
end

truncatables = []
primes = [3,7]
while truncatables.length < 11 do
  primes = primes.map {|p| p.expand}.flatten
  truncatables += primes.select(&:truncatable?)
end
p truncatables.reduce(:+)
