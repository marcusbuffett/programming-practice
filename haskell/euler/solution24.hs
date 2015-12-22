module Main where
import Data.List(permutations, sort)

listToNumber :: Num a => [a] -> a
listToNumber xs = sum [xs !! i * 10^(length xs-i-1)| i <- [0..length xs-1]]

main :: IO ()
main = (print . listToNumber . (!! 999999) . sort . permutations)[0..9]

