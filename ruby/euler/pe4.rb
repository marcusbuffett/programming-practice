def largest()
  nums = []
  (999).downto(100).each do |n|
    (999).downto(100).each do |m|
      if (n*m).to_s == (n*m).to_s.reverse
        nums.push(n*m)
      end
    end
  end
  return nums.max()
end

puts largest()
