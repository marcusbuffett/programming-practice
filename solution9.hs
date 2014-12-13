module Main where

main :: IO ()
main = print $ triplet

triplet :: [Integer]
triplet = concat $ take 1 [[a, b, c] | a <- [1..], b <- [1..1000], a <= b, let squareSums = square a + square b, isSquare squareSums, let c = isqrt squareSums, a+b+c == 1000]

square :: Num a => a -> a
square n = n^(2::Integer)

isSquare :: Integral a => a -> Bool
isSquare n = (square . isqrt) n == n

isqrt :: (Integral a, Integral b) => a -> b
isqrt n = (floor . sqrt . fromIntegral) n

