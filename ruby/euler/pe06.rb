def square(n)
  n*n
end

def squareOfSum(n)
  square((1..n).inject{|sum, x| sum + x})
end 

def sumOfSquares(n)
  (1..n).inject{|sum, x| sum + square(x)}
end

puts squareOfSum(100) - sumOfSquares(100)
