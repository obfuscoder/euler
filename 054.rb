class Hand
  include Comparable
  @@chars = '23456789TJQKA'.chars.to_a
  @@ratings = 'ABCDEFGHIJKLM'.chars.to_a
  def initialize (cards)
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

  def rating
    return '5' + @@ratings[@values.values.first.last] if straight_flush?
    return '321' + @@ratings[@values.values.first.last] if flush?
    return '320' + @@ratings[@values.values.first.last] if straight?
    kp = @values.keys.sort.reverse.map{|k| k.to_s * @values[k].length}.join
    vp = @values.keys.sort.reverse.map{|k| @values[k].sort.reverse.map{|v| @@ratings[v]}}.join
    kp + vp
  end

  def <=> (other)
    rating <=> other.rating
  end
end

p1_wins = 0
File.open('poker.txt').each do |line|
  line = line.chomp.split(/ /)
  p1_wins += 1 if Hand.new(line[0..4]) > Hand.new(line[5..9])
end
p p1_wins