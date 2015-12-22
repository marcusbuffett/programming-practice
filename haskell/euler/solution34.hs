module Main where

main :: IO ()
main = print $ sum curiousNums

ds :: Int -> [Int]
ds 0 = []
ds x = ds (x `div` 10) ++ [x `mod` 10]

factorial :: Int -> Int
factorial = (map fact [0..9] !!)
    where
    fact 0 = 1
    fact 1 = 1
    fact n = n * fact (n-1)

curiousNums :: [Int]
curiousNums = [x | x <- [3..1000000], curious x]

curious :: Int -> Bool
curious n = sum (map factorial . ds $ n) == n

