class String
  def factor
  length - gsub(/DCCCC|LXXXX|VIIII|CCCC|XXXX|IIII/, '00').length
  end
end

p File.readlines('roman.txt').map(&:factor).reduce(:+)
