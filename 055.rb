class Integer
  def lychrel?
    1.upto(50).reduce(self){|n| n += n.reverse; return false if n.palindrome?; n }
  end

  def palindrome?
    self == reverse
  end

  def reverse
    to_s.reverse.to_i
  end
end

p 1.upto(9999).count(&:lychrel?)
