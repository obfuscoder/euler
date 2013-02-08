class String
  def pandigital_product?
    1.upto(4) do |len|
      s = String::new(self)
      number = s.slice!(0, len).to_i
      2.upto(6) do |mul|
        return true if s.length == 0
        prod = (number*mul).to_s
        break if s.slice!(0, prod.length) != prod
      end
    end
    false
  end
end

p '987654321'.chars.to_a.permutation.map(&:join).find {|x| x.pandigital_product?}

p 9999.downto(9182).map{|n| n*10**5+2*n}.find{|n| n.to_s.chars.to_a.sort.join == '123456789'}

