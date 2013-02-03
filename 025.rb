f = [1,1]
f << f[-1] + f[-2] while f[-1].to_s.length<1000
p f.size