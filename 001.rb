def solve(a,b,max)
    sum = 0
    1.upto(max) do |x|
        sum += x if x%a == 0 or x%b == 0
    end
    sum
end

puts solve 3,5,999
