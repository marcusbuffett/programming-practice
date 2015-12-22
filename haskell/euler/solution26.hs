module Main where

main :: IO ()
main =  (print . maximum . map (length . remainders)) [1000,999..1]

remainders :: Integral a => a -> [a]
remainders y = rems 1 []
    where 
    rems x pRems
        | newRem == 0         = pRems
        | newRem `elem` pRems = pRems
        | otherwise           = rems newRem newRems
        where newRem = (x*10) `rem` y
              newRems = newRem:pRems
