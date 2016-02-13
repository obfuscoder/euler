1.upto(1000/3) do |a|
  (a+1).upto(1000/2) do |b|
    c = Math.sqrt(a*a+b*b).to_i
    if c*c == a*a+b*b and a < b and b < c and a+b+c == 1000
      prod = a*b*c
      puts prod
      exit
    end
  end
end
