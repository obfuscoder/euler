def d(n)
  ([1] + 2.upto(n**0.5).map{|x| n%x == 0 ? [x, n/x] : []}.flatten).reduce(:+)
end

p 2.upto(9999).select{|n| n != d(n) && n == d(d(n))}.reduce(:+)