require 'prime'

total = 1
prime_total = 0

1.upto(100000) do |n|
  x = (2*n+1)**2
  r = [x-2*n,x-4*n,x-6*n]
  total += 4
  prime_total += r.count{|t| Prime.instance.prime?(t, Prime::TrialDivisionGenerator.new)}
  # p [total, prime_total, prime_total.to_f / total]
  if prime_total.to_f / total < 0.1
    p 2*n+1
    break
  end
end