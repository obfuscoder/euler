ref_frac = 3.to_f/7
closest_frac = 0
closest_n = 0
closest_d = 0
2.upto(1000000).each do |d|
  (d * closest_frac).to_i.upto(d-1).each do |n|
    frac = n.to_f/d
    break if frac >= ref_frac
    next if frac < closest_frac
    closest_frac = frac
    closest_n = n
    closest_d = d
  end
end

p closest_n
