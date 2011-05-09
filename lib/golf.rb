class Golf

  def self.hole3(n)
    r = n
    for c in 1..(n-1) do r = r * c; end
    r
  end
  
  def self.hole6(n)
    r = []
    for c in 1..n do
      t = c%3
      f = c%5
      r << (t == 0 && f == 0 ? "fizzbuzz" : (t == 0 ? "fizz" : (f == 0 ? "buzz" : c)))
    end
    r
  end
  
end
