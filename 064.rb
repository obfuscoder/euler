class Integer
  def odd_fraction_period?
    return false if self**0.5 % 1 == 0
    a0 = (self**0.5).to_i
    xs = [[0,1,a0]]
    while true
      mp,dp,ap = xs.last
      m = dp*ap-mp
      d = ((self-m*m)/dp).to_i
      a = ((a0+m)/d).to_i
      x = [m,d,a]
      i = xs.index(x)
      return (xs.length-i).odd? if i != nil
      xs << x
    end
  end
end

p (2..10000).count(&:odd_fraction_period?)
