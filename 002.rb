a = 1
b = 1
sum = 0
while b < 4000000 do
  c = a + b
  sum += c if c%2 == 0
  a = b
  b = c
end

puts sum
