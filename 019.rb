class Fixnum
  BASE_YEAR = 1900
  MONTH_DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  def leap?
    (self%4==0 && self%100!=0) || self%400==0
  end

  def days_in_year
    leap? ? 366 : 365
  end

  def days_in_month(month)
    month == 2 && leap? ? 29 : MONTH_DAYS[month-1]
  end

  def sundays
    num = 0
    days = self > BASE_YEAR ? BASE_YEAR.upto(self-1).map(&:days_in_year).reduce(:+) : 0
    1.upto(12).each {|month|
      num += 1 if days%7 == 6
      days += days_in_month(month)
    }
    num
  end
end

p (1901..2000).map(&:sundays).reduce(:+)
