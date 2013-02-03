a = 2.upto(999).map do |x|
  r = []
  n = 1
  while true
    n = n*10%x
    break if n == 0
    i = r.index(n)
    if i != nil
      break
    end
    r << n
  end
  [x,r.length-n]
end

p a.max{|x,y| x[1] <=> y[1]}[0]
