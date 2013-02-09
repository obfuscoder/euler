class Array
  def prime
    n = join.to_i
    2.upto(n**0.5) {|x| return false if n%x == 0}
    p n
    exit
  end
end

num = '987654321'
0.upto(8).map{|x| num[x..-1].chars.to_a.permutation(&:prime)}