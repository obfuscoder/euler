f = [1,1,2,6,24,120,720,5040,40320,362880]
p 3.upto(100000).select{|n| n == n.to_s.chars.reduce(0){|m,o| m+f[o.to_i]}}.reduce(:+)
