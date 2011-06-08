class Golf
  class << self
    x = 0
    [
    'p.inject :*',
    'p.split.sort_by {|p| p[1]}.join " "',
    'hole1 1..p',
    %q{p.map { |t| t.sub(/(man.*)/,'hat(\1)').sub(/(dog.*)\)/,'\1(bone))').sub /cat/,'dead' }},
    '(1..4).map{|i| p.each_cons(i).to_a}.inject :+',
    '(1..p).map{ |i|
        s="fizz" if i % 3 == 0
        s="#{s}buzz" if i % 5 == 0
        s || i
      }',
    "i = -1
      m = []
      p.map{ |j| p[i] + 1 != p[i += 1] ? m << [j] : (m[-1] << j if p[i] + 1 != p[i + 1]) }
      m.map{ |i| i * '-' }",
    "b = [1,1]
      (2..p-1).map {|i| b << b[-2] + b[-1] }
      b",
    "r = open(p).map{|l| l.strip.split ', ' }
      t = r.size/2.0
      loop {
        h = Hash.new(0)
        r.each{|l|
          h[l[0]] += 1 if l[0]
        }
        s = h.to_a.sort_by{|a| a[1]}
        s[-1][1] >= t || s.size == 1 ?
          (break s[-1][0]) :
          r.each{|l| l.delete s[0][0]}
      }"
    ].map {|m| eval "def hole#{x += 1} p
    #{m}
    end"}
  end
end
