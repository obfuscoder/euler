names = File.open("names.txt").read.scan(/\w+/).sort
p names.each_with_index.map {|n,i| n.chars.map{|c| c.ord-64}.reduce(:+) * (i+1)}.reduce(:+)