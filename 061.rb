funcs = [
    proc{|n|(n*n+n)/2},
    proc{|n|n*n},
    proc{|n|(3*n*n-n)/2},
    proc{|n|2*n*n-n},
    proc{|n|(5*n*n-3*n)/2},
    proc{|n|3*n*n-2*n}
]

def max_cyclic_sequence(chain, list)
  followers = chain[list.last]
  return [] if followers.nil?
  return list if followers.find{|e| list.first == e}
  valid_followers = followers.select{|e| !list.member?(e) && !list.map(&:last).member?(e.last)}
  return [] if valid_followers.empty?
  valid_followers.map{|e| max_cyclic_sequence(chain, list + [e])}.max_by(&:length)
end

numbers = funcs.each_with_index.map{|l,i| (1..140).map{|n| [l.call(n), i]}.select{|n,| n<10000 && n/100>9 && n%100>9}}.flatten(1)
chain = numbers.reduce({}){|h,e| h[e] = numbers.select{|n,i| n/100 == e.first%100 && i != e.last}; h}
p chain.map{|e| max_cyclic_sequence(chain, [e.first])}.max_by(&:length).map(&:first).reduce(:+)
