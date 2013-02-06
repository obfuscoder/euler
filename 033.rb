np = dp = 1
1.upto(8) do |n|
  (n+1).upto(9) do |d|
    1.upto(d) do |a|
      if (a*10+n)*d == (d*10+a)*n
        np *= n
        dp *= d
      end
    end
    n.upto(9) do |a|
      if (n*10+a)*d == (a*10+d)*n
        np *= n
        dp *= d
      end
    end
  end
end
p dp/np.gcd(dp)
