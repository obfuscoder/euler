ones = %w[- one two three four five six seven eight nine ten
  eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
tens = %w[- - twenty thirty forty fifty sixty seventy eighty ninety]
p (1..1000).map { |n|
  a,b,c,d = n.to_s.reverse.chars.map(&:to_i)
  a += b*10 if b==1
  s = (d.to_i>0 ? ones[d] + "thousand" : "") +
      (c.to_i>0 ? ones[c] + "hundred" : "") +
      (c.to_i>0 && (b.to_i>0 || a>0) ? "and":"") +
      (b.to_i>1 ? tens[b] : "") + (a>0 ? ones[a] : "")
  s.length
}.reduce(:+)