code = File.open('cipher1.txt').read.scan(/\d+/).map(&:to_i)
parts = (0..2).map{|n| code.values_at(* code.each_index.select{|i| i%3 == n})}
parts = parts.map{|p| p.group_by{|e| e}.reduce({}){|h,(k,v)| h[k]=v.length; h}}
key = parts.map{|h| (h.reduce{|(k1,v1),(k2,v2)| v1 > v2 ? [k1,v1]:[k2,v2] }.first ^ 32)}
p code.each_with_index.map{|c,i| (c^key[i%3])}.reduce(:+)