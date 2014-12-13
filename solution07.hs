module Main where
import Data.Numbers.Primes

main :: IO ()
main = print $ primes !! 10000

