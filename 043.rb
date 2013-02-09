$p = [2,3,5,7,11,13,17]
class Array
  def solution
    s = join
    0.upto(6) {|n| return 0 if s[n+1,3].to_i % $p[n] != 0}
    return 0 if s[0] == '0'
    s.to_i
  end
end

p '1234567890'.chars.to_a.permutation.map(&:solution).reduce(:+)