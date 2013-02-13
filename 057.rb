f = lambda{|(n0,n1)| 2*n1+n0}
q = [[1,0], [1,1]]
p (1..1000).count {
  (q << [f.call(q.map(&:first)), f.call(q.map(&:last))]).shift
  q.last.first.to_s.length > q.last.last.to_s.length
}
