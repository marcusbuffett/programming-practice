module Main where

fib :: Int -> Integer
fib = (map fib' [0..] !!)
    where
    fib' 1 = 1
    fib' 2 = 1
    fib' n = fib (n-1) + fib (n-2)

digitLength :: Integer -> Int
digitLength = length . show

fibs :: [Integer]
fibs = map fib [1..]

main :: IO ()
main = (print . (+1) . length . takeWhile digitsUnderThousand) fibs
    where digitsUnderThousand = (<1000) . digitLength
