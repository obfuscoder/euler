p (1..99).map{|a| (1..99).map{|b| (a**b).to_s.chars.map(&:to_i).reduce(:+)}.max}.max
