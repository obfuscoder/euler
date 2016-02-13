@d = []
def d(n)
  @d[n] ||= 1.upto(n/2).select { |x| n % x == 0 }.reduce(:+)
end

p 2.upto(9999).select{|n| n != d(n) && n == d(d(n))}.reduce(:+)
