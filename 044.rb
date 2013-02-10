def pent(n)
  n*(3*n-1)/2
end

def pent?(n)
  x = ((24*n + 1)**0.5 + 1) / 6
  x == x.to_i
end

k = 1
while true
  pk = pent(k)
  (k-1).downto(1) do |j|
    pj = pent(j)
    if pent?(pk - pj) && pent?(pk + pj)
      p pk -pj
      exit
    end
  end
  k += 1
end