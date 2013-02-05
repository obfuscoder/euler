p 2.upto(999999).select {|x| x == x.to_s.chars.reduce(0){|n,c| n+c.to_i**5}}.reduce(:+)
