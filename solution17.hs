module Main where

singleDigits :: [String]
singleDigits = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

teens :: [String]
teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

doubleDigits :: [String]
doubleDigits = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

r :: Int -> String
r num
    -- a thousand
    | num == 1000         = "one thousand"
    -- single digits
    | num < 10 && num > 0 = singleDigits !! (num-1)
    -- teens
    | num > 10 && num < 20 = teens !! (num-11)
    -- ten, twenty, thirty, etc. 
    | num >= 10 && num < 100 && num `mod` 10 == 0 = doubleDigits !! (num `div` 10-1)
    -- one hundred, two hundred, three hundred, etc.
    | num `mod` 100 == 0  = r (read $ intToStrings num !! 0) ++ " hundred"
    -- everything else
    | num > 100 = r firstOrder ++ " and " ++ r remaining
    | num > 10  = r firstOrder ++ " " ++ r remaining
    where
        firstOrder = (byOrder num !! 0)
        remaining = (sum . tail) $ byOrder num

byOrder :: Int -> [Int]
byOrder num
    | length (show num) > 1 = baseNum : byOrder (remaining)
    | otherwise = [num]
    where
        baseNum = firstDigit*(10^order)
        order = digitCount - 1
        digitCount = length (show num)
        firstDigit = num `div` 10^(order) 
        remaining = num - baseNum
        {-firstDigit = read $ intToStrings num !! 0-}
        {-lastDigits = read $ concat $ tail $ intToStrings num-}

intToStrings :: Show a => a -> [String]
intToStrings x = (map (:[]) . show) x

trimString :: String -> String
trimString = filter (\c -> c /= ' ')

main :: IO ()
main = print $ sum $ map length allTrimmed
    where 
    allTrimmed = map trimString allWritten
    allWritten = map r [1..1000]
