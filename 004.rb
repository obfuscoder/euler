min = 100
max = 999
min.upto(max) do |x|
    min.upto(max) do |y|
        p = x*y
        prev = p.to_s().reverse
        puts p if p.to_s() == prev
    end
end
