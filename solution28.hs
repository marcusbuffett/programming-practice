sumDiagonals :: Integer -> Integer
sumDiagonals d = sum [pairDiagonals y d | y <- [1..d]]

pairDiagonals :: Integer -> Integer -> Integer
pairDiagonals y d
    | y == c = 1
    | otherwise = (sum [i + 8*(n-1) | n <- [1..abs (y-c)]] + 1)*2
    where 
    c = ceiling (fromIntegral d/2)
    i = if y < c then 7 else 3

main :: IO ()
main = print $ sumDiagonals 1001
