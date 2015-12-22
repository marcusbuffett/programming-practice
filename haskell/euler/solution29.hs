module Main where
import Data.List(nub)

main :: IO ()
main = (print . length . nub) [a^b | a <- [2..100], b <- [2..100]]

