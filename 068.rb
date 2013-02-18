N = 5
i = (1..N).to_a
a = (N+1..N*2).to_a

def common_sum(a,i)
  sums = a.each_with_index.map{|a,n| a + i[n] + i[(n+1)%N]}.uniq
  sums.length == 1 ? sums.first : nil
end

def build(e)
  a = e.first
  i = e[1]
  a.each_with_index.map{|a,n| [a, i[n], i[(n+1)%N]]}.flatten.join
end

p a.permutation.each.map {|a| i.permutation.each.map{|i| [a,i]}.map{|(a,i)| [a,i,common_sum(a,i)]}}.flatten(1).select{|e| e.last != nil}.map{|e| build(e)}.select{|e| e.length == 16 && e[0].to_i == N+1}.map(&:to_i).max