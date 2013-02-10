def pent?(n)
  x = ((24*n.to_f + 1)**0.5 + 1) / 6
  x == x.to_i
end

def triangle(n)
  (n*n+n)/2
end

146.upto(100000) do |n|
  h = 2*n*n-n
  if pent?(h)
    p triangle(n*2-1)
    exit
  end
end
