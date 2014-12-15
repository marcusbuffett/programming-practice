module Main where
import Data.List(delete)

amicableNumbers :: [Int]
amicableNumbers = [x | x <- [1..10000], let y = d x, x /= y, amicable x y]

amicable :: Int -> Int -> Bool
amicable x y = d x == y && d y == x
    
d n = sum (properDivisors n)

properDivisors :: Int -> [Int]
properDivisors n = concat [[i, n `div` i]| i <- [2..floor $ sqrt (fromIntegral n)], n `mod` i == 0] ++ [1]

main = print $ sum amicableNumbers

