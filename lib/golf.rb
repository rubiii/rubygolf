class Golf

  def self.hole3(n)
    r = n
    for c in 1..(n-1) do r = r * c; end
    r
  end
  
  def self.hole6(n)
    r = []
    for c in 1..n do
      t = c%3 == 0
      f = c%5 == 0
      r << (t && f ? "fizzbuzz" : (t ? "fizz" : (f ? "buzz" : c)))
    end
    r
  end

end
