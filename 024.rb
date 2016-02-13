e,f,v = [],[1],(0..9).to_a
(1..9).each{|n| f[n] = n*f[n-1]}
f.reverse.reduce(999999){|x,n| e << v.slice!(x/n); x%n}
p (e+v).join.to_i