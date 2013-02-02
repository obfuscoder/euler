MAX = 28124
s = Array.new(MAX, 0)
1.upto(MAX/2) {|n| (n*2).step(MAX-1,n) {|m| s[m] += n}}
a = s.each_with_index.select{|x,i| x > i }.map{|x,i| i}
c = []
a.each {|x| a.each {|y| c[x+y] = true}}
p 1.upto(MAX).select {|n| c[n] == nil}.reduce(:+)