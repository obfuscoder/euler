require 'prime'

'123456789'.chars.to_a.repeated_combination(4).each do |s|
  a = s.permutation.to_a.map(&:join).map(&:to_i).select(&:prime?)
  seq = a.combination(3).find{|e| e[1]-e[0] != 0 && e[2]-e[1] == e[1]-e[0]}
  p seq.join.to_i if seq != nil
end
