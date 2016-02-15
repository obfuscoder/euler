p 9999.downto(9182).map{|n| n*10**5+2*n}.find{|n| n.to_s.chars.to_a.sort.join == '123456789'}
