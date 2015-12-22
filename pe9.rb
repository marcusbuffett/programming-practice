def special_triplet(n)
  (1..(n-2)).reverse_each do |c|
    (1..(n-c-1)).each do |b|
      a = n - b - c
      if (a*a + b*b == c*c)
        return [a,b,c]
      end
    end
  end
  return nil
end

puts (special_triplet 1000).inject{|prod, x| x * prod}
