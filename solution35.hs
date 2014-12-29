module Main where
import Data.Numbers.Primes(isPrime)

ds :: Integer -> [Integer]
ds 0 = []
ds n = ds (n `div` 10) ++ [n `mod` 10]

rotations :: Integer -> [Integer]
rotations n = [listToNumber . take l . drop i . cycle $ ds n | i <- [0..length(ds n)-1], let l = length $ ds n]

listToNumber :: Num a => [a] -> a
listToNumber xs = sum [xs !! i * 10^(length xs-i-1)| i <- [0..length xs-1]]

main :: IO ()
main = print $ length circularPrimes

bound :: Integer
bound = 1000000

circularPrimes :: [Integer]
circularPrimes = [n | n <- [2,3..bound],isPrime n, all isPrime (rotations n)]

