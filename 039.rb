class Fixnum
  def count
    1.upto(self/2).count do |b|
      a = (self*b-self*self/2)/(b-self)
      c = (a*a+b*b)**0.5
      a+b+c == self
    end
  end
end

p 1.upto(1000).map(&:count).to_a.each_with_index.max[1]+1
