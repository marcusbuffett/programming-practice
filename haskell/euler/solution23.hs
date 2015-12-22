module Main where

limit :: Int
limit = 28123

abundantNumbers :: [Int]
abundantNumbers = [n | n <- [1..limit], sum (properDivisors n) > n]

properDivisors :: Int -> [Int]
properDivisors n = 1 : [i | i <- [2..n `div` 2], n `mod` i == 0]

abundantSums :: [Int]
abundantSums = [x + y | x <- abundantNumbers, y <- abundantNumbers, x <= y, x + y <= limit]

isAbundantSum :: Int -> Bool
isAbundantSum n = n `elem` abundantSums

main :: IO ()
main = print $ sum nums 
    where nums = [n | n <- [1..limit], not $ isAbundantSum n]
