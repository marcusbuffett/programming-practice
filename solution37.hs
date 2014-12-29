module Main where
import Data.List(tails, nub)
import Data.Numbers.Primes(isPrime)

headsAndTails :: Num a => Eq a => [a] -> [a]
headsAndTails xs = map listToNumber . filter (not . null) . nub $ [take i xs | i <- [1..length xs]] ++ tails xs 

listToNumber :: Num a => [a] -> a
listToNumber xs = sum [xs !! i * 10^(length xs-i-1)| i <- [0..length xs-1]]

ds :: Integer -> [Integer]
ds 0 = []
ds n = ds (n `div` 10) ++ [n `mod` 10]

main :: IO ()
main = print . sum . take 11 $ [n | n <- [9,11..], all isPrime $ headsAndTails $ ds n]
