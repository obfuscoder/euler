p (346..10000).map{|n| [n,(n**3).to_s.chars.to_a.sort.join]}.group_by(&:last).map(&:last).max_by(&:length).map(&:first).min**3
