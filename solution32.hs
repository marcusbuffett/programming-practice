module Main where
import Data.List(nub)

ds :: Int -> [Int]
ds 0 = []
ds x = ds (x `div` 10) ++ [x `mod` 10]

panDigital :: [Int] -> Int -> Bool
panDigital xs n = length xs == n && all (`elem` xs) [1..n]

digitsUnique :: Int -> Bool
digitsUnique n = nub (ds n) == ds n

products :: [Int]
products = [prod | 
            cand <- [1..100], 
            plier <- [100..10000], 
            let prod = cand*plier,
            length (ds prod) == 4,
            length (ds cand) + length (ds plier) == 5,
            digitsUnique prod,
            panDigital (ds cand ++ ds plier ++ ds prod) 9]

main :: IO ()
main = print products
