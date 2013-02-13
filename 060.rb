require 'prime'

@@all_primes = Prime.instance.each(1000000).to_a
@@primes_hash = @@all_primes.reduce({}){|h,e| h[e] = true; h}
@@primes = @@all_primes[0,1200]

class Integer
  def prime?
    @@primes_hash[self] ||= Prime.prime?(self)
  end

  def prime_combo?(n)
    (self.to_s + n.to_s).to_i.prime? && (n.to_s + self.to_s).to_i.prime?
  end
end

@@primes[0..-5].each_with_index do |a,ai|
  @@primes[ai+1..-4].each_with_index do |b,bi|
    next if !a.prime_combo?(b)
    @@primes[bi+1..-3].each_with_index do |c,ci|
      next if !a.prime_combo?(c) || !b.prime_combo?(c)
      @@primes[ci+1..-2].each_with_index do |d,di|
        next if !a.prime_combo?(d) || !b.prime_combo?(d) || !c.prime_combo?(d)
        @@primes[di+1..-1].each do |e|
          next if !a.prime_combo?(e) || !b.prime_combo?(e) || !c.prime_combo?(e) || !d.prime_combo?(e)
          p [a,b,c,d,e, a+b+c+d+e]
        end
      end
    end
  end
end
