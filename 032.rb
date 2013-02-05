class String
  def pan
    a,b,c = unpack("A1A4A*").map(&:to_i)
    return c if a*b==c
    a,b,c = unpack("A2A3A*").map(&:to_i)
    return c if a*b==c
    0
  end
end

p (1..9).to_a.permutation.map{|a| a.join.pan}.uniq.reduce(:+)
