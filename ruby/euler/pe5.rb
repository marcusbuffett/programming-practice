def largest_div_20() 
  (0..Float::INFINITY).step(2520).each() do |n|
    next if n == 0 
    divisible = true
    [2,3,5,7,11,13,17,19].each() do |x|
      if (n % x != 0) 
        divisible = false
        break
      end
    end
    if divisible
      return n
    end
  end
end

puts largest_div_20()
