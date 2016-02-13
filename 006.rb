sum1 = 0
sum2 = 0
1.upto(100) do |n|
  sum1 += n*n
  sum2 += n
end
sum2 = sum2*sum2
puts (sum1-sum2).abs
