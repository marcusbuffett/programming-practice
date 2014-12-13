module Main where

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Enum, Eq)

months :: [Int]
months = (concat . replicate 25) fourYears

numberOfDays :: Int
numberOfDays = sum months

nextDay :: Day -> Day
nextDay Sunday = Monday
nextDay day = succ day

fourYears :: [Int]
fourYears = leapYear ++ (concat . replicate 3) regularYear

regularYear :: [Int]
regularYear = [31,28,31,30,31,30,31,31,30,31,30,31]

leapYear :: [Int]
leapYear= [31,29,31,30,31,30,31,31,30,31,30,31]



live :: Day -> Int
live startDay = live' startDay 0 0 
    where 
    live' day month sundays
        | month < length months = live' (iterate nextDay day !! (daysInCurrentMonth-1)) (month + 1) (if day == Sunday then sundays + 1 else sundays)
        | otherwise = sundays
        where 
        daysInCurrentMonth = months !! month

main :: IO ()
main = print $ live Monday

