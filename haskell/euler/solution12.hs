module Main where
import Data.List(nub)

triangleNums :: [Int]
triangleNums = [triangle n | n <- [1..]]

triangle :: Int -> Int
triangle n = sum [1..n]

factors :: Int -> [Int]
factors n = concat [[i, n `div` i]| i <- [1..floor $ sqrt (fromIntegral n)], n `mod` i == 0]

numOfDivisors :: Int -> Int
numOfDivisors = (length . nub . factors)


main :: IO ()
main = print $ take 1 $ filter (\n -> numOfDivisors n > 500) triangleNums

