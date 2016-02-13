min = 100
max = 999
largest_p = 0
min.upto(max) do |x|
  min.upto(max) do |y|
    p = x*y
    prev = p.to_s.reverse
    next unless p.to_s == prev
    largest_p = p if p > largest_p
  end
end

p largest_p
