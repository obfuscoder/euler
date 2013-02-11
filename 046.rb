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

  def prime?(n)
    @primes[n] == n
  end

  def composites
    2.upto(@primes.length).select{|n| !prime?(n)}
  end
end

primes = Primes.new(999999)
primes.composites.select(&:odd?).each do |c|
  if 1.upto(c**0.5-2).find{|f| primes.prime?(c-2*f*f)} == nil
    p c
    break
  end
end
