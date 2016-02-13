def solve(a,b,max)
  1.upto(max).map { |x| x if x%a == 0 or x%b == 0 }.compact.reduce(:+)
end

puts solve 3,5,999
