require 'prime'

class Integer
  def inverse_totient
    [self, 1.0/prime_division.map(&:first).map{|p| 1-1.0/p}.reduce(:*)]
  end
end
p (2..1000000).map(&:inverse_totient).max_by(&:last).first
