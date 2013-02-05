x = 20
m = 20
while true
    ok = true
    1.upto(m) do |d|
        if x%d != 0
            ok = false
            break
        end
    end
    if ok
        puts x
        break
    end
    x += 20
end
