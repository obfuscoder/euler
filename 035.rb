class Primes
  def initialize(limit)
    @primes = []
    2.upto(limit) do |n|
      @primes[n] = n if @primes[n].nil?
      2.upto(limit/n) do |m|
        @primes[n*m] = false
      end
    end
  end

  def circular
    @primes.select {|n| n != nil && n != false && circular?(n)}
  end

  private

  def prime?(n)
    @primes[n] == n
  end

  def rotate(n)
    n.chars.to_a.rotate.join
  end

  def circular?(n)
    n = n.to_s
    x = n
    while (x = rotate(x)) != n
      return false unless prime?(x.to_i)
    end
    true
  end
end

primes = Primes.new(999999)
p primes.circular.length
