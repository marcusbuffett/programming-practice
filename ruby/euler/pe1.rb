sum = 0
(1..999).each do |n|
  if n % 5 == 0 || n % 3 == 0
    sum += n
  end
end
puts sum
