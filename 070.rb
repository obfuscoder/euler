require 'prime'

primes = Prime.first(700)

def perm?(*n)
  n.map{|x| x.to_s.chars.sort.join}.uniq.length == 1
end

p primes.combination(2).map{|(p1,p2)| [p1*p2,(p1-1)*(p2-1)]}.select{|(n,phi)| n <= 10**7 && perm?(n,phi)}.sort_by{|(n,phi)| n.to_f/phi}.first.first
