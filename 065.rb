n,d = (1..99).map {|k| (k+1) % 3 == 0 ? (k+1)/3*2 : 1}.reverse.reduce([0,1]){|(n,d),e| [d,e*d+n]}
p (2*d+n).to_s.chars.map(&:to_i).reduce(:+)
