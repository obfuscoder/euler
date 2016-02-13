$primes = []
n = 2

def prime?(n)
  $primes.each do |p|
    return false if n%p == 0
  end
  true
end

while $primes.length < 10001 do
  if prime?(n)
    $primes << n
  end
  n += 1
end

p $primes[-1]
