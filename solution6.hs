sumOfSquares :: [Integer] -> Integer
sumOfSquares xs = sum $ map (^2) xs

squareOfSums :: [Integer] -> Integer
squareOfSums xs = sum xs ^ 2

main :: IO ()
main = print $ squareOfSums range - sumOfSquares range
    where range = [1..100]

