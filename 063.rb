p (1..100).map{|b| (1..9).count{|a| (a**b).to_s.length == b}}.reduce(:+)