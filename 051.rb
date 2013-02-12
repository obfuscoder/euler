require 'prime'

5.upto(7) do |len|
  1.upto(len-1) do |solids|
    wildcards = len-solids
    patterns = ((0..solids-1).to_a + ('*' * wildcards).chars.to_a).permutation.to_a.uniq
    patterns.each do |pattern|
      (0..9).to_a.repeated_combination(solids) do |selection|
        template = pattern.map{|c| c != '*' ? selection[c].to_s : c}.join
        primes = 0.upto(9).map{|w| template.gsub(/\*/, w.to_s).to_i}.select{|n| n.prime?}
        if primes.length == 8
          p primes.first
          exit
        end
      end
    end
  end
end