module Main where
import Data.Numbers.Primes(isPrime)
import Data.List(maximumBy)
import Data.Ord(comparing)

consecutivePrimes :: Int -> Int -> [Int]
consecutivePrimes a b = takeWhile isPrime [n^2 + a*n + b | n <- [0..]]

main :: IO ()
main = (print . snd . maximumBy (comparing fst)) lengthCoefficientPairs

lengthCoefficientPairs :: [(Int, Int)]
lengthCoefficientPairs = [(length $ consecutivePrimes a b, a*b) | a <- aRange, b <- bRange]
    where 
    aRange = [-1000,-999..1000]
    bRange = filter (isPrime . abs) [-1000,-999..1000]
