def fibs(x)
  memoed = {}
  fib = lambda do |n|
    if (n == 0) 
      return 1
    end
    if (n == 1)
      return 1
    end
    if (memoed[n] == nil)
      memoed[n] = fib.call(n-1) + fib.call(n-2)
      return memoed[n]
    end
    memoed[n]
  end
  sum = 0
  (1..Float::INFINITY).each do |n|
    if fib.call(n) > 4000000
      return sum
    end
    if fib.call(n) % 2 == 0
      sum += fib.call(n)
    end
  end

end

puts fibs(8)
