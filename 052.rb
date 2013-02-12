p 100000.upto(999999).find{|x| (1..6).map{|n| (x*n).to_s.chars.to_a.sort.join.to_i}.to_a.uniq.length == 1}
