triangle = File.open('triangle.txt').map {|e| e.split(/ /).map(&:to_i) }
(triangle.length-2).downto(0) do |l|
  0.upto(triangle[l].length-1) do |p|
    triangle[l][p] += triangle[l+1][p,2].max
  end
end
p triangle[0][0]