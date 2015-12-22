module Main where

fib 1 = 1
fib 2 = 1
fib x = fib (x-1)  + fib (x-2)

main = (print . sum . filter even . takeWhile (<4000000)) [fib x | x <- [1..]]
-- 3524577
