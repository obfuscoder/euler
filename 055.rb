class Integer
  def lychrel?
    (1..50).reduce(self){|n| n += n.reverse; return false if n == n.reverse; n }
  end

  def reverse
    to_s.reverse.to_i
  end
end

p (1..9999).count(&:lychrel?)
