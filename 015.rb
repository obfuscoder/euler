def factorial(n)
  n == 1 ? n : n*factorial(n-1)
end

s = 20
p factorial(s*2)/factorial(s)**2
