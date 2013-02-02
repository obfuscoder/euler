def divide(x)
    (2).upto(x/2) do |i|
        if x%i == 0
            puts i
            return divide(x/i)
        end
    end
    x
end

puts divide(600851475143)
