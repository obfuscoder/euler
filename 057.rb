def f(n0,n1) 2*n1+n0 end
q = [[1,0], [1,1]]
p 1.upto(1000).count {
  (q << [f(q.first.first, q.last.first), f(q.first.last, q.last.last)]).shift
  q.last.first.to_s.length > q.last.last.to_s.length
}
