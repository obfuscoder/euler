coins = [100,50,20,10,5,2,1]

def comb(l, max_sum, coins)
  count = 0
  coins.each do |c|
    next if c > max_sum
    if c == max_sum
      count += 1
      next
    end
    count += comb(l+1,max_sum-c, coins.select{|x| x <= [max_sum-c,c].min})
  end
  count
end

p comb(0, 200, coins)+1
