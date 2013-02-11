require 'prime'

f = []
2.upto(999999) do |n|
  f << n.prime_division
  f.shift if f.length>4
  if f.flatten(1).uniq.length == 4*4
    p n-3
    exit
  end
end