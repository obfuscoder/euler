maxnum = 2000000
nums = (0..maxnum).to_a
2.upto(maxnum) do |n|
    next if nums[n] == nil
    2.upto(nums.length/n) {|m| nums[n*m] = nil}
end
nums = nums.compact
p nums.reduce(:+)-1
