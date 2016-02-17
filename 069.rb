require 'prime'

total = 1
Prime.each do |p|
  new_total = total * p
  break if new_total > 1000000
  total = new_total
end
p total
