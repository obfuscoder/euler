@divs = [0,1,2]

def d(n)
  return @divs[n] if @divs[n] != nil
  f = 2
  2.upto(n/2) do |x|
    f += 1 if n%x == 0
  end
  @divs[n] = f
end

n = 1
t = 0
while true
  t = n * (n+1) / 2
  if n.even?
    @divs[t] = d(n/2) * d(n+1)
  else
    @divs[t] = d(n) * d((n+1)/2)
  end
  break if @divs[t] > 500
  n += 1
end
puts t
