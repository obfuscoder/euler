def divide(x)
  (2).upto(x/2) do |i|
    return divide(x/i) if x%i == 0
  end
  x
end

puts divide(600851475143)
