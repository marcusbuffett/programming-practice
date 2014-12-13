import Data.List(intersect, union, nub, (\\))
import Data.Numbers.Primes(primes)


main = do
    print $ lcm' [1..20]

lcm' :: [Integer] -> Integer
lcm' xs = foldl (*) 1 [n ^ maximum (map (count n) factorizations) | n <- distinctFactors]
    where 
    distinctFactors = (nub . concat) factorizations
    factorizations = map primeFactors xs

count :: Eq a => a -> [a] -> Integer
count x xs = (toInteger . length . filter (==x)) xs
        
allFactorizations = map factors [1..20]

factors :: Integer -> [Integer]
factors n = concat [[i, n `div` i]| i <- [1..floor $ sqrt (fromIntegral n)], n `mod` i == 0]

primeFactors :: Integer -> [Integer]
primeFactors n
    | not $ null trimmedFactors = head trimmedFactors : primeFactors nDiv 
    | otherwise           = [n]
        where
        nDiv = n `div` head trimmedFactors
        trimmedFactors = (factors n) \\ [1,n] 
