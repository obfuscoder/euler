x = 20
m = 20
while true
    ok = true
    1.upto(m) do |d|
        if x%d != 0 then
            ok = false
            break
        end
    end
    if ok then
        puts x
        break
    end
    x += 20
end
