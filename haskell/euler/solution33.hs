module Main where
import Data.List(intersect, delete)
import Data.Ratio

ds :: Int -> [Int]
ds 0 = []
ds x = ds (x `div` 10) ++ [x `mod` 10]

fromds :: [Int] -> Int
fromds digits = sum [(digits !! i)*10^(length digits-i-1) | i <- [0..length digits-1]]


cancelCommon :: Int -> Int -> (Int, Int)
cancelCommon first second = do
    let commonNums = dFirst `intersect` dSecond
    case commonNums of
        [x] -> (fromds (delete x dFirst), fromds (delete x dSecond))
        _   -> (first, second)
    where
        dFirst  = ds first
        dSecond = ds second

curiousFractions :: [Ratio Int]
curiousFractions = [num % den | num <- [11..99], 
                    den <- [11..99], 
                    num < den,
                    num `mod` 10 /= 0,
                    den `mod` 10 /= 0,
                    let (numCancel, denCancel) = cancelCommon num den, 
                    numCancel /= num && denCancel /= den,
                    num % den == numCancel % denCancel]

main :: IO ()
main = (print . denominator . product) curiousFractions
