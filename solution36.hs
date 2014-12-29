module Main where

binary :: Int -> [Int]
binary 0 = []
binary n = binary (n `div` 2) ++ [n `mod` 2]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = reverse xs == xs

palindromicBase10 :: Int -> Bool
palindromicBase10 n = reverse (ds  n) == ds n

palindromicBase2 :: Int -> Bool
palindromicBase2 n = reverse (binary  n) == binary n

ds :: Int -> [Int]
ds 0 = []
ds n = ds (n `div` 10) ++ [n `mod` 10]

main :: IO ()
main = print $ sum [n | n <- [1..1000000], palindromicBase10 n, palindromicBase2 n]


