words = File.open("words.txt").read.scan(/\w+/)
values = words.map {|w| w.chars.map{|c| c.ord-64}.reduce(:+)}
t = 1.upto(20).map {|n| n*(n-1)/2}
p values.count{|v| t.include?(v)}
