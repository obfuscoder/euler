require 'prime'

primes = Prime.first 1000
primes.length.downto(1) do |len|
  0.upto(primes.length-len) do |pos|
    sum = primes[pos, len].reduce(:+)
    break if sum >= 1000000
    if sum.prime?
      p sum
      exit
    end
  end
end