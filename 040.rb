class Fixnum
  def digit_at
    first_pos = 1
    first_pos += 1.upto(self-1).map { |x| 9*10**(x-1)*x }.reduce(:+) if self > 1
    prev_pos = 10**(self-1)
    div,mod = (10**self-first_pos).divmod(self)
    (div+prev_pos).to_s[mod].to_i
  end
end

p (1..6).map(&:digit_at).reduce(:*)
