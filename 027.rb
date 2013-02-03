def prime?(n)
  return false if n < 2
  2.upto(n**0.5) {|x| return false if n%x == 0}
  true
end

max_n = 0
max_c = 0
-999.upto(999) do |a|
  2.upto(999) do |b|
    n = 0
    n += 1 while prime?(n*n + a*n + b)
    if max_n < n
      max_n = n
      max_c = a*b
    end
  end
end

p max_c