module Main where
products :: [Integer]
products = [x*y | x <- [100..999], y <- [100..999], x <= y]

prodStrings :: [String]
prodStrings = map show products

filterPalindromes :: [String] -> [String]
filterPalindromes = filter (\x -> reverse x == x)

palindromes :: [String]
palindromes = filterPalindromes prodStrings

main :: IO ()
main = print $ maximum (map read palindromes :: [Integer])

