@d = []
def d(n)
  @d[n] ||= 1 + 2.upto(n**0.5).select{|x| n%x == 0}.reduce(0){|s,x| x+n/x}
end

p 2.upto(9999).select{|n| n != d(n) && n == d(d(n))}.reduce(:+)