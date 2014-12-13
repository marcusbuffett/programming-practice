module Main where

import Data.List(maximumBy)
import Data.Ord(comparing)

collatz :: Int -> [Int]
collatz 1 = [1]
collatz n
    | even n = n : collatz (n `quot` 2)
    | otherwise = n : collatz (n*3+1)


main :: IO ()
main = do
    let chains = [collatz n | n <- [1..1000000]]
    (print . head . maximumBy (comparing length))  chains


