module Main where

number :: Integer
number = 2^1000

main :: IO ()
main = print digitSum
    where 
    digits = show number
    digitSum = sum $ map read (map (:[]) digits)

