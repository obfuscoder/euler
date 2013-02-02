class Fixnum
  MONTH_DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze
  MONTH_DAYS_LEAP = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze

  def leap?
    (self%4==0 && self%100!=0) || self%400==0
  end

  def days
    leap? ? MONTH_DAYS_LEAP : MONTH_DAYS
  end
end

s = 0
d = 365
(1901..2000).each { |y| y.days.each { |m| s += 1 if d%7 == 6; d+= m } }
p s
