module Main where

factorial :: Integer -> Integer
factorial 1 = 1
factorial n = n * factorial (n-1)

main = print . sum . map read . map (:[]) . show $ factorial 100

