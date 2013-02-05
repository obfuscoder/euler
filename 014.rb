lens = [0]
1.upto(999999) do |n|
  count = 1
  while n > 1
    if n <= 1000000 && lens[n] != nil
      count += lens[n] - 1
      break
    end
    if n.even?
      n /= 2
    else
      n = 3*n+1
    end
    count += 1
  end
  lens << count
end
p lens.index(lens.max)
