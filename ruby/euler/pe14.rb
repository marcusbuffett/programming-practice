# Collatz chain

$chainLengths = {}
def chainLength(x)
  return $chainLengths[x] if $chainLengths[x]
  if (x == 1)
    return 1
  elsif (x % 2 == 0)
    $chainLengths[x] = 1 + chainLength(x/2)
    return $chainLengths[x]
  else
    $chainLengths[x] = 1 + chainLength(x*3+1)
    return $chainLengths[x]
  end
end

maxLength = 0
num = 0
(1..1e6).each do |n|
  length = chainLength(n)
  if length > maxLength
    maxLength = length
    num = n
  end
end

puts maxLength
puts num
