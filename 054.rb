class Hand
  @@chars = %w(2 3 4 5 6 7 8 9 T J Q K A)
  def initialize cards
    @cards = cards
    @values = values
  end

  def values
    x = @cards.map{|c| @@chars.index(c[0])}.sort.group_by{|n| n}.inject({}){|h,(k,v)| h.merge(k => v.length)}
    x.reduce({}){|h,(k,v)| (h[v] ||=[]) << k; h}
  end

  def straight?
    return false if @values.length != 1
    a = @values.values.first
    a.first + 4 == a.last
  end

  def flush?
    @cards.map{|c| c[1]}.uniq.length == 1
  end

  def straight_flush?
    flush? && straight?
  end

  def royal_flush?
    straight_flush? && @values.values.first.last == 12
  end
end

p Hand.new(%w(QC KC JC AC TC)).royal_flush?
