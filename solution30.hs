module Main where

digits :: Int -> [Int]
digits n = (map (read . (:[])) . show) n

powers :: [Int]
powers = map (^5) [0..9]

sFifthPowers :: Int -> Int
sFifthPowers n = sum [powers !! dig | dig <- digits n]

main :: IO ()
main = (print . sum) [n | n <- [2..1000000], let sPowers = sFifthPowers n, sPowers == n]


