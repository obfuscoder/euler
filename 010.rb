max_num = 2000000
num_array = (0..max_num).to_a
2.upto(max_num) do |n|
  next if num_array[n] == nil
  2.upto(num_array.length/n) { |m| num_array[n*m] = nil }
end
num_array = num_array.compact
puts num_array.reduce(:+)-1
